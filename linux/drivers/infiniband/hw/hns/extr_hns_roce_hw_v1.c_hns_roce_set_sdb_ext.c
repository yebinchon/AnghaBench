
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct hns_roce_db_table {TYPE_3__* ext_db; } ;
struct hns_roce_v1_priv {struct hns_roce_db_table db_table; } ;
struct hns_roce_dev {scalar_t__ priv; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
typedef int __le32 ;
struct TYPE_6__ {int esdb_dep; TYPE_2__* sdb_buf_list; } ;
struct TYPE_5__ {int map; } ;
struct TYPE_4__ {struct device dev; } ;


 int ROCEE_EXT_DB_SQ_H_EXT_DB_SQ_BA_H_M ;
 int ROCEE_EXT_DB_SQ_H_EXT_DB_SQ_BA_H_S ;
 int ROCEE_EXT_DB_SQ_H_EXT_DB_SQ_SHIFT_M ;
 int ROCEE_EXT_DB_SQ_H_EXT_DB_SQ_SHIFT_S ;
 int ROCEE_EXT_DB_SQ_H_REG ;
 int ROCEE_EXT_DB_SQ_REG ;
 int ROCEE_EXT_DB_SQ_WL_EMPTY_REG ;
 int ROCEE_EXT_DB_SQ_WL_REG ;
 int cpu_to_le32 (int ) ;
 int dev_dbg (struct device*,char*,int,...) ;
 int le32_to_cpu (int ) ;
 int roce_read (struct hns_roce_dev*,int ) ;
 int roce_set_field (int ,int ,int ,int) ;
 int roce_write (struct hns_roce_dev*,int ,int ) ;

__attribute__((used)) static void hns_roce_set_sdb_ext(struct hns_roce_dev *hr_dev, u32 ext_sdb_alept,
     u32 ext_sdb_alful)
{
 struct device *dev = &hr_dev->pdev->dev;
 struct hns_roce_v1_priv *priv;
 struct hns_roce_db_table *db;
 dma_addr_t sdb_dma_addr;
 __le32 tmp;
 u32 val;

 priv = (struct hns_roce_v1_priv *)hr_dev->priv;
 db = &priv->db_table;


 roce_write(hr_dev, ROCEE_EXT_DB_SQ_WL_EMPTY_REG, ext_sdb_alept);
 roce_write(hr_dev, ROCEE_EXT_DB_SQ_WL_REG, ext_sdb_alful);


 sdb_dma_addr = db->ext_db->sdb_buf_list->map;
 roce_write(hr_dev, ROCEE_EXT_DB_SQ_REG, (u32)(sdb_dma_addr >> 12));


 val = roce_read(hr_dev, ROCEE_EXT_DB_SQ_H_REG);
 tmp = cpu_to_le32(val);
 roce_set_field(tmp, ROCEE_EXT_DB_SQ_H_EXT_DB_SQ_SHIFT_M,
         ROCEE_EXT_DB_SQ_H_EXT_DB_SQ_SHIFT_S,
         db->ext_db->esdb_dep);





 roce_set_field(tmp, ROCEE_EXT_DB_SQ_H_EXT_DB_SQ_BA_H_M,
         ROCEE_EXT_DB_SQ_H_EXT_DB_SQ_BA_H_S, sdb_dma_addr >> 44);
 val = le32_to_cpu(tmp);
 roce_write(hr_dev, ROCEE_EXT_DB_SQ_H_REG, val);

 dev_dbg(dev, "ext SDB depth: 0x%x\n", db->ext_db->esdb_dep);
 dev_dbg(dev, "ext SDB threshold: epmty: 0x%x, ful: 0x%x\n",
  ext_sdb_alept, ext_sdb_alful);
}
