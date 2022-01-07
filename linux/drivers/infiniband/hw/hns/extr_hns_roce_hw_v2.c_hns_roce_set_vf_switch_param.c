
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_vf_switch {int cfg; int fun_id; int rocee_sel; } ;
struct hns_roce_dev {int dummy; } ;
struct hns_roce_cmq_desc {int flag; scalar_t__ data; } ;


 int HNS_ICL_SWITCH_CMD_ROCEE_SEL ;
 int HNS_ROCE_CMD_FLAG_IN ;
 int HNS_ROCE_CMD_FLAG_NO_INTR ;
 int HNS_ROCE_CMD_FLAG_WR ;
 int HNS_SWITCH_PARAMETER_CFG ;
 int VF_SWITCH_DATA_CFG_ALW_DST_OVRD_S ;
 int VF_SWITCH_DATA_CFG_ALW_LCL_LPBK_S ;
 int VF_SWITCH_DATA_CFG_ALW_LPBK_S ;
 int VF_SWITCH_DATA_FUN_ID_VF_ID_M ;
 int VF_SWITCH_DATA_FUN_ID_VF_ID_S ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int hns_roce_cmq_send (struct hns_roce_dev*,struct hns_roce_cmq_desc*,int) ;
 int hns_roce_cmq_setup_basic_desc (struct hns_roce_cmq_desc*,int ,int) ;
 int roce_set_bit (int ,int ,int) ;
 int roce_set_field (int ,int ,int ,int) ;

__attribute__((used)) static int hns_roce_set_vf_switch_param(struct hns_roce_dev *hr_dev,
        int vf_id)
{
 struct hns_roce_cmq_desc desc;
 struct hns_roce_vf_switch *swt;
 int ret;

 swt = (struct hns_roce_vf_switch *)desc.data;
 hns_roce_cmq_setup_basic_desc(&desc, HNS_SWITCH_PARAMETER_CFG, 1);
 swt->rocee_sel |= cpu_to_le32(HNS_ICL_SWITCH_CMD_ROCEE_SEL);
 roce_set_field(swt->fun_id,
   VF_SWITCH_DATA_FUN_ID_VF_ID_M,
   VF_SWITCH_DATA_FUN_ID_VF_ID_S,
   vf_id);
 ret = hns_roce_cmq_send(hr_dev, &desc, 1);
 if (ret)
  return ret;
 desc.flag =
  cpu_to_le16(HNS_ROCE_CMD_FLAG_NO_INTR | HNS_ROCE_CMD_FLAG_IN);
 desc.flag &= cpu_to_le16(~HNS_ROCE_CMD_FLAG_WR);
 roce_set_bit(swt->cfg, VF_SWITCH_DATA_CFG_ALW_LPBK_S, 1);
 roce_set_bit(swt->cfg, VF_SWITCH_DATA_CFG_ALW_LCL_LPBK_S, 0);
 roce_set_bit(swt->cfg, VF_SWITCH_DATA_CFG_ALW_DST_OVRD_S, 1);

 return hns_roce_cmq_send(hr_dev, &desc, 1);
}
