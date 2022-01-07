
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ib_gid {int * raw; } ;
typedef int u32 ;
struct hns_roce_dev {int dummy; } ;
struct hns_roce_cmq_desc {scalar_t__ data; } ;
struct hns_roce_cfg_sgid_tb {void* vf_sgid_h; void* vf_sgid_mh; void* vf_sgid_ml; void* vf_sgid_l; int vf_sgid_type_rsv; int table_idx_rsv; } ;
typedef enum hns_roce_sgid_type { ____Placeholder_hns_roce_sgid_type } hns_roce_sgid_type ;


 int CFG_SGID_TB_TABLE_IDX_M ;
 int CFG_SGID_TB_TABLE_IDX_S ;
 int CFG_SGID_TB_VF_SGID_TYPE_M ;
 int CFG_SGID_TB_VF_SGID_TYPE_S ;
 int HNS_ROCE_OPC_CFG_SGID_TB ;
 void* cpu_to_le32 (int ) ;
 int hns_roce_cmq_send (struct hns_roce_dev*,struct hns_roce_cmq_desc*,int) ;
 int hns_roce_cmq_setup_basic_desc (struct hns_roce_cmq_desc*,int ,int) ;
 int roce_set_field (int ,int ,int ,int) ;

__attribute__((used)) static int hns_roce_config_sgid_table(struct hns_roce_dev *hr_dev,
          int gid_index, const union ib_gid *gid,
          enum hns_roce_sgid_type sgid_type)
{
 struct hns_roce_cmq_desc desc;
 struct hns_roce_cfg_sgid_tb *sgid_tb =
        (struct hns_roce_cfg_sgid_tb *)desc.data;
 u32 *p;

 hns_roce_cmq_setup_basic_desc(&desc, HNS_ROCE_OPC_CFG_SGID_TB, 0);

 roce_set_field(sgid_tb->table_idx_rsv,
         CFG_SGID_TB_TABLE_IDX_M,
         CFG_SGID_TB_TABLE_IDX_S, gid_index);
 roce_set_field(sgid_tb->vf_sgid_type_rsv,
         CFG_SGID_TB_VF_SGID_TYPE_M,
         CFG_SGID_TB_VF_SGID_TYPE_S, sgid_type);

 p = (u32 *)&gid->raw[0];
 sgid_tb->vf_sgid_l = cpu_to_le32(*p);

 p = (u32 *)&gid->raw[4];
 sgid_tb->vf_sgid_ml = cpu_to_le32(*p);

 p = (u32 *)&gid->raw[8];
 sgid_tb->vf_sgid_mh = cpu_to_le32(*p);

 p = (u32 *)&gid->raw[0xc];
 sgid_tb->vf_sgid_h = cpu_to_le32(*p);

 return hns_roce_cmq_send(hr_dev, &desc, 1);
}
