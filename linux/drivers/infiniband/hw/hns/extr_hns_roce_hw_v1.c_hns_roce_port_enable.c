
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hns_roce_dev {int dummy; } ;
typedef int __le32 ;


 int ALL_PORT_VAL_OPEN ;
 int ROCEE_GLB_CFG_REG ;
 int ROCEE_GLB_CFG_ROCEE_PORT_ST_M ;
 int ROCEE_GLB_CFG_ROCEE_PORT_ST_S ;
 int cpu_to_le32 (int ) ;
 int le32_to_cpu (int ) ;
 int roce_read (struct hns_roce_dev*,int ) ;
 int roce_set_field (int ,int ,int ,int) ;
 int roce_write (struct hns_roce_dev*,int ,int ) ;

__attribute__((used)) static void hns_roce_port_enable(struct hns_roce_dev *hr_dev, int enable_flag)
{
 __le32 tmp;
 u32 val;

 if (enable_flag) {
  val = roce_read(hr_dev, ROCEE_GLB_CFG_REG);

  tmp = cpu_to_le32(val);
  roce_set_field(tmp, ROCEE_GLB_CFG_ROCEE_PORT_ST_M,
          ROCEE_GLB_CFG_ROCEE_PORT_ST_S,
          ALL_PORT_VAL_OPEN);
  val = le32_to_cpu(tmp);
  roce_write(hr_dev, ROCEE_GLB_CFG_REG, val);
 } else {
  val = roce_read(hr_dev, ROCEE_GLB_CFG_REG);

  tmp = cpu_to_le32(val);
  roce_set_field(tmp, ROCEE_GLB_CFG_ROCEE_PORT_ST_M,
          ROCEE_GLB_CFG_ROCEE_PORT_ST_S, 0x0);
  val = le32_to_cpu(tmp);
  roce_write(hr_dev, ROCEE_GLB_CFG_REG, val);
 }
}
