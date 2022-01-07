
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct hns_roce_dev {int dummy; } ;
struct hns_roce_cmq_desc {scalar_t__ data; } ;
struct hns_roce_cfg_smac_tb {int vf_smac_l; int vf_smac_h_rsv; int tb_idx_rsv; } ;


 int CFG_SMAC_TB_IDX_M ;
 int CFG_SMAC_TB_IDX_S ;
 int CFG_SMAC_TB_VF_SMAC_H_M ;
 int CFG_SMAC_TB_VF_SMAC_H_S ;
 int HNS_ROCE_OPC_CFG_SMAC_TB ;
 int cpu_to_le32 (int ) ;
 int hns_roce_cmq_send (struct hns_roce_dev*,struct hns_roce_cmq_desc*,int) ;
 int hns_roce_cmq_setup_basic_desc (struct hns_roce_cmq_desc*,int ,int) ;
 int memset (struct hns_roce_cfg_smac_tb*,int ,int) ;
 int roce_set_field (int ,int ,int ,int ) ;

__attribute__((used)) static int hns_roce_v2_set_mac(struct hns_roce_dev *hr_dev, u8 phy_port,
          u8 *addr)
{
 struct hns_roce_cmq_desc desc;
 struct hns_roce_cfg_smac_tb *smac_tb =
        (struct hns_roce_cfg_smac_tb *)desc.data;
 u16 reg_smac_h;
 u32 reg_smac_l;

 hns_roce_cmq_setup_basic_desc(&desc, HNS_ROCE_OPC_CFG_SMAC_TB, 0);

 reg_smac_l = *(u32 *)(&addr[0]);
 reg_smac_h = *(u16 *)(&addr[4]);

 memset(smac_tb, 0, sizeof(*smac_tb));
 roce_set_field(smac_tb->tb_idx_rsv,
         CFG_SMAC_TB_IDX_M,
         CFG_SMAC_TB_IDX_S, phy_port);
 roce_set_field(smac_tb->vf_smac_h_rsv,
         CFG_SMAC_TB_VF_SMAC_H_M,
         CFG_SMAC_TB_VF_SMAC_H_S, reg_smac_h);
 smac_tb->vf_smac_l = cpu_to_le32(reg_smac_l);

 return hns_roce_cmq_send(hr_dev, &desc, 1);
}
