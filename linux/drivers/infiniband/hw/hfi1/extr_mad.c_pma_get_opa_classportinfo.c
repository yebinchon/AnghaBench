
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ attr_mod; int status; } ;
struct opa_pma_mad {TYPE_1__ mad_hdr; scalar_t__ data; } ;
struct opa_class_port_info {int cap_mask2_resp_time; int class_version; int base_version; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;


 int IB_SMP_INVALID_FIELD ;
 int OPA_MGMT_BASE_VERSION ;
 int OPA_SM_CLASS_VERSION ;
 int cpu_to_be32 (int) ;
 int memset (scalar_t__,int ,int) ;
 int reply (struct ib_mad_hdr*) ;

__attribute__((used)) static int pma_get_opa_classportinfo(struct opa_pma_mad *pmp,
         struct ib_device *ibdev, u32 *resp_len)
{
 struct opa_class_port_info *p =
  (struct opa_class_port_info *)pmp->data;

 memset(pmp->data, 0, sizeof(pmp->data));

 if (pmp->mad_hdr.attr_mod != 0)
  pmp->mad_hdr.status |= IB_SMP_INVALID_FIELD;

 p->base_version = OPA_MGMT_BASE_VERSION;
 p->class_version = OPA_SM_CLASS_VERSION;



 p->cap_mask2_resp_time = cpu_to_be32(18);

 if (resp_len)
  *resp_len += sizeof(*p);

 return reply((struct ib_mad_hdr *)pmp);
}
