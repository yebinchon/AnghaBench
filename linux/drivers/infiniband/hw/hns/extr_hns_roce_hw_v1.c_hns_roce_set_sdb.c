
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hns_roce_dev {int dummy; } ;
typedef int __le32 ;


 int ROCEE_DB_SQ_WL_REG ;
 int ROCEE_DB_SQ_WL_ROCEE_DB_SQ_WL_EMPTY_M ;
 int ROCEE_DB_SQ_WL_ROCEE_DB_SQ_WL_EMPTY_S ;
 int ROCEE_DB_SQ_WL_ROCEE_DB_SQ_WL_M ;
 int ROCEE_DB_SQ_WL_ROCEE_DB_SQ_WL_S ;
 int cpu_to_le32 (int ) ;
 int le32_to_cpu (int ) ;
 int roce_read (struct hns_roce_dev*,int ) ;
 int roce_set_field (int ,int ,int ,int ) ;
 int roce_write (struct hns_roce_dev*,int ,int ) ;

__attribute__((used)) static void hns_roce_set_sdb(struct hns_roce_dev *hr_dev, u32 sdb_alept,
        u32 sdb_alful)
{
 __le32 tmp;
 u32 val;


 val = roce_read(hr_dev, ROCEE_DB_SQ_WL_REG);
 tmp = cpu_to_le32(val);
 roce_set_field(tmp, ROCEE_DB_SQ_WL_ROCEE_DB_SQ_WL_M,
         ROCEE_DB_SQ_WL_ROCEE_DB_SQ_WL_S, sdb_alful);
 roce_set_field(tmp, ROCEE_DB_SQ_WL_ROCEE_DB_SQ_WL_EMPTY_M,
         ROCEE_DB_SQ_WL_ROCEE_DB_SQ_WL_EMPTY_S, sdb_alept);
 val = le32_to_cpu(tmp);
 roce_write(hr_dev, ROCEE_DB_SQ_WL_REG, val);
}
