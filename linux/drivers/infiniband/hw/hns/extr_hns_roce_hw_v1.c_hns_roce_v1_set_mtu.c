
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hns_roce_dev {int dummy; } ;
typedef enum ib_mtu { ____Placeholder_ib_mtu } ib_mtu ;
typedef int __le32 ;


 int PHY_PORT_OFFSET ;
 scalar_t__ ROCEE_SMAC_H_0_REG ;
 int ROCEE_SMAC_H_ROCEE_PORT_MTU_M ;
 int ROCEE_SMAC_H_ROCEE_PORT_MTU_S ;
 int cpu_to_le32 (int ) ;
 int le32_to_cpu (int ) ;
 int roce_read (struct hns_roce_dev*,scalar_t__) ;
 int roce_set_field (int ,int ,int ,int) ;
 int roce_write (struct hns_roce_dev*,scalar_t__,int ) ;

__attribute__((used)) static void hns_roce_v1_set_mtu(struct hns_roce_dev *hr_dev, u8 phy_port,
    enum ib_mtu mtu)
{
 __le32 tmp;
 u32 val;

 val = roce_read(hr_dev,
   ROCEE_SMAC_H_0_REG + phy_port * PHY_PORT_OFFSET);
 tmp = cpu_to_le32(val);
 roce_set_field(tmp, ROCEE_SMAC_H_ROCEE_PORT_MTU_M,
         ROCEE_SMAC_H_ROCEE_PORT_MTU_S, mtu);
 val = le32_to_cpu(tmp);
 roce_write(hr_dev, ROCEE_SMAC_H_0_REG + phy_port * PHY_PORT_OFFSET,
     val);
}
