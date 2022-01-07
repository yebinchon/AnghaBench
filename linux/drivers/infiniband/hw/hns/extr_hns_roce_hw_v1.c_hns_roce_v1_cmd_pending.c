
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hns_roce_dev {scalar_t__ reg_base; } ;


 int HCR_GO_BIT ;
 scalar_t__ ROCEE_MB6_REG ;
 int readl (scalar_t__) ;

__attribute__((used)) static int hns_roce_v1_cmd_pending(struct hns_roce_dev *hr_dev)
{
 u32 status = readl(hr_dev->reg_base + ROCEE_MB6_REG);

 return (!!(status & (1 << HCR_GO_BIT)));
}
