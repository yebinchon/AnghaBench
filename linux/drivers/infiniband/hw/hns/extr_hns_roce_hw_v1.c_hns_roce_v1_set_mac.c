
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct hns_roce_dev {scalar_t__ reg_base; TYPE_1__* hw; } ;
typedef int __le32 ;
struct TYPE_2__ {scalar_t__ dereg_mr; } ;


 int ETIMEDOUT ;
 int PHY_PORT_OFFSET ;
 scalar_t__ ROCEE_SMAC_H_0_REG ;
 int ROCEE_SMAC_H_ROCEE_SMAC_H_M ;
 int ROCEE_SMAC_H_ROCEE_SMAC_H_S ;
 scalar_t__ ROCEE_SMAC_L_0_REG ;
 int cpu_to_le32 (int ) ;
 int hns_roce_v1_recreate_lp_qp (struct hns_roce_dev*) ;
 int le32_to_cpu (int ) ;
 int roce_raw_write (int ,scalar_t__) ;
 int roce_read (struct hns_roce_dev*,scalar_t__) ;
 int roce_set_field (int ,int ,int ,int ) ;
 int roce_write (struct hns_roce_dev*,scalar_t__,int ) ;

__attribute__((used)) static int hns_roce_v1_set_mac(struct hns_roce_dev *hr_dev, u8 phy_port,
          u8 *addr)
{
 u32 reg_smac_l;
 u16 reg_smac_h;
 __le32 tmp;
 u16 *p_h;
 u32 *p;
 u32 val;






 if (hr_dev->hw->dereg_mr) {
  int ret;

  ret = hns_roce_v1_recreate_lp_qp(hr_dev);
  if (ret && ret != -ETIMEDOUT)
   return ret;
 }

 p = (u32 *)(&addr[0]);
 reg_smac_l = *p;
 roce_raw_write(reg_smac_l, hr_dev->reg_base + ROCEE_SMAC_L_0_REG +
         PHY_PORT_OFFSET * phy_port);

 val = roce_read(hr_dev,
   ROCEE_SMAC_H_0_REG + phy_port * PHY_PORT_OFFSET);
 tmp = cpu_to_le32(val);
 p_h = (u16 *)(&addr[4]);
 reg_smac_h = *p_h;
 roce_set_field(tmp, ROCEE_SMAC_H_ROCEE_SMAC_H_M,
         ROCEE_SMAC_H_ROCEE_SMAC_H_S, reg_smac_h);
 val = le32_to_cpu(tmp);
 roce_write(hr_dev, ROCEE_SMAC_H_0_REG + phy_port * PHY_PORT_OFFSET,
     val);

 return 0;
}
