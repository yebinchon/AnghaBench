
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hns_roce_db_table {TYPE_2__* ext_db; scalar_t__ odb_ext_mod; scalar_t__ sdb_ext_mod; } ;
struct hns_roce_v1_priv {struct hns_roce_db_table db_table; } ;
struct hns_roce_dev {scalar_t__ priv; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct TYPE_4__* odb_buf_list; int map; int buf; struct TYPE_4__* sdb_buf_list; } ;
struct TYPE_3__ {struct device dev; } ;


 int HNS_ROCE_V1_EXT_ODB_SIZE ;
 int HNS_ROCE_V1_EXT_SDB_SIZE ;
 int dma_free_coherent (struct device*,int ,int ,int ) ;
 int kfree (TYPE_2__*) ;

__attribute__((used)) static void hns_roce_db_free(struct hns_roce_dev *hr_dev)
{
 struct device *dev = &hr_dev->pdev->dev;
 struct hns_roce_v1_priv *priv;
 struct hns_roce_db_table *db;

 priv = (struct hns_roce_v1_priv *)hr_dev->priv;
 db = &priv->db_table;

 if (db->sdb_ext_mod) {
  dma_free_coherent(dev, HNS_ROCE_V1_EXT_SDB_SIZE,
      db->ext_db->sdb_buf_list->buf,
      db->ext_db->sdb_buf_list->map);
  kfree(db->ext_db->sdb_buf_list);
 }

 if (db->odb_ext_mod) {
  dma_free_coherent(dev, HNS_ROCE_V1_EXT_ODB_SIZE,
      db->ext_db->odb_buf_list->buf,
      db->ext_db->odb_buf_list->map);
  kfree(db->ext_db->odb_buf_list);
 }

 kfree(db->ext_db);
}
