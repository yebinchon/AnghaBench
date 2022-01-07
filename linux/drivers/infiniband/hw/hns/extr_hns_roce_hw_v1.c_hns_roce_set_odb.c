
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hns_roce_dev {int dummy; } ;
typedef int __le32 ;


 int ROCEE_DB_OTHERS_WL_REG ;
 int ROCEE_DB_OTHERS_WL_ROCEE_DB_OTH_WL_EMPTY_M ;
 int ROCEE_DB_OTHERS_WL_ROCEE_DB_OTH_WL_EMPTY_S ;
 int ROCEE_DB_OTHERS_WL_ROCEE_DB_OTH_WL_M ;
 int ROCEE_DB_OTHERS_WL_ROCEE_DB_OTH_WL_S ;
 int cpu_to_le32 (int ) ;
 int le32_to_cpu (int ) ;
 int roce_read (struct hns_roce_dev*,int ) ;
 int roce_set_field (int ,int ,int ,int ) ;
 int roce_write (struct hns_roce_dev*,int ,int ) ;

__attribute__((used)) static void hns_roce_set_odb(struct hns_roce_dev *hr_dev, u32 odb_alept,
        u32 odb_alful)
{
 __le32 tmp;
 u32 val;


 val = roce_read(hr_dev, ROCEE_DB_OTHERS_WL_REG);
 tmp = cpu_to_le32(val);
 roce_set_field(tmp, ROCEE_DB_OTHERS_WL_ROCEE_DB_OTH_WL_M,
         ROCEE_DB_OTHERS_WL_ROCEE_DB_OTH_WL_S, odb_alful);
 roce_set_field(tmp, ROCEE_DB_OTHERS_WL_ROCEE_DB_OTH_WL_EMPTY_M,
         ROCEE_DB_OTHERS_WL_ROCEE_DB_OTH_WL_EMPTY_S, odb_alept);
 val = le32_to_cpu(tmp);
 roce_write(hr_dev, ROCEE_DB_OTHERS_WL_REG, val);
}
