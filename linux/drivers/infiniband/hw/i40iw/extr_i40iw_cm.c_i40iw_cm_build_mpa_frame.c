
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ietf_mpa_v2 {int dummy; } ;
struct ietf_mpa_v1 {int dummy; } ;
struct i40iw_kmem_info {int addr; } ;
struct i40iw_cm_node {int mpa_frame_rev; } ;




 int i40iw_build_mpa_v1 (struct i40iw_cm_node*,int ,int ) ;
 int i40iw_build_mpa_v2 (struct i40iw_cm_node*,int ,int ) ;

__attribute__((used)) static int i40iw_cm_build_mpa_frame(struct i40iw_cm_node *cm_node,
        struct i40iw_kmem_info *mpa,
        u8 mpa_key)
{
 int hdr_len = 0;

 switch (cm_node->mpa_frame_rev) {
 case 129:
  hdr_len = sizeof(struct ietf_mpa_v1);
  i40iw_build_mpa_v1(cm_node, mpa->addr, mpa_key);
  break;
 case 128:
  hdr_len = sizeof(struct ietf_mpa_v2);
  i40iw_build_mpa_v2(cm_node, mpa->addr, mpa_key);
  break;
 default:
  break;
 }

 return hdr_len;
}
