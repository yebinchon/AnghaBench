
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hns_roce_dev {int dummy; } ;
typedef int __le32 ;


 int ROCEE_GLB_CFG_REG ;
 int ROCEE_GLB_CFG_ROCEE_DB_OTH_MODE_S ;
 int ROCEE_GLB_CFG_ROCEE_DB_SQ_MODE_S ;
 int cpu_to_le32 (int ) ;
 int le32_to_cpu (int ) ;
 int roce_read (struct hns_roce_dev*,int ) ;
 int roce_set_bit (int ,int ,int) ;
 int roce_write (struct hns_roce_dev*,int ,int ) ;

__attribute__((used)) static void hns_roce_set_db_event_mode(struct hns_roce_dev *hr_dev,
           int sdb_mode, int odb_mode)
{
 __le32 tmp;
 u32 val;

 val = roce_read(hr_dev, ROCEE_GLB_CFG_REG);
 tmp = cpu_to_le32(val);
 roce_set_bit(tmp, ROCEE_GLB_CFG_ROCEE_DB_SQ_MODE_S, sdb_mode);
 roce_set_bit(tmp, ROCEE_GLB_CFG_ROCEE_DB_OTH_MODE_S, odb_mode);
 val = le32_to_cpu(tmp);
 roce_write(hr_dev, ROCEE_GLB_CFG_REG, val);
}
