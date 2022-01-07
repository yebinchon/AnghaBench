
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct hdcp_srm_header {int reserved; int srm_gen_no; int srm_version; int srm_id; } ;
struct TYPE_2__ {int revoked_ksv_cnt; int revoked_ksv_list; } ;


 int DRM_DEBUG (char*,...) ;
 int DRM_ERROR (char*) ;
 int DRM_HDCP_1_4_DCP_SIG_SIZE ;
 int DRM_HDCP_1_4_VRL_LENGTH_SIZE ;
 int DRM_HDCP_KSV_LEN ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WARN_ON (int ) ;
 int be16_to_cpu (int ) ;
 int drm_hdcp_get_revoked_ksv_count (int const*,int) ;
 int drm_hdcp_get_revoked_ksvs (int const*,int ,int) ;
 int get_vrl_length (int const*) ;
 int kcalloc (int,int ,int ) ;
 int kfree (int ) ;
 TYPE_1__* srm_data ;

__attribute__((used)) static int drm_hdcp_parse_hdcp1_srm(const u8 *buf, size_t count)
{
 struct hdcp_srm_header *header;
 u32 vrl_length, ksv_count;

 if (count < (sizeof(struct hdcp_srm_header) +
     DRM_HDCP_1_4_VRL_LENGTH_SIZE + DRM_HDCP_1_4_DCP_SIG_SIZE)) {
  DRM_ERROR("Invalid blob length\n");
  return -EINVAL;
 }

 header = (struct hdcp_srm_header *)buf;
 DRM_DEBUG("SRM ID: 0x%x, SRM Ver: 0x%x, SRM Gen No: 0x%x\n",
    header->srm_id,
    be16_to_cpu(header->srm_version), header->srm_gen_no);

 WARN_ON(header->reserved);

 buf = buf + sizeof(*header);
 vrl_length = get_vrl_length(buf);
 if (count < (sizeof(struct hdcp_srm_header) + vrl_length) ||
     vrl_length < (DRM_HDCP_1_4_VRL_LENGTH_SIZE +
     DRM_HDCP_1_4_DCP_SIG_SIZE)) {
  DRM_ERROR("Invalid blob length or vrl length\n");
  return -EINVAL;
 }


 vrl_length -= (DRM_HDCP_1_4_VRL_LENGTH_SIZE +
         DRM_HDCP_1_4_DCP_SIG_SIZE);

 if (!vrl_length) {
  DRM_ERROR("No vrl found\n");
  return -EINVAL;
 }

 buf += DRM_HDCP_1_4_VRL_LENGTH_SIZE;
 ksv_count = drm_hdcp_get_revoked_ksv_count(buf, vrl_length);
 if (!ksv_count) {
  DRM_DEBUG("Revoked KSV count is 0\n");
  return count;
 }

 kfree(srm_data->revoked_ksv_list);
 srm_data->revoked_ksv_list = kcalloc(ksv_count, DRM_HDCP_KSV_LEN,
          GFP_KERNEL);
 if (!srm_data->revoked_ksv_list) {
  DRM_ERROR("Out of Memory\n");
  return -ENOMEM;
 }

 if (drm_hdcp_get_revoked_ksvs(buf, srm_data->revoked_ksv_list,
          vrl_length) != ksv_count) {
  srm_data->revoked_ksv_cnt = 0;
  kfree(srm_data->revoked_ksv_list);
  return -EINVAL;
 }

 srm_data->revoked_ksv_cnt = ksv_count;
 return count;
}
