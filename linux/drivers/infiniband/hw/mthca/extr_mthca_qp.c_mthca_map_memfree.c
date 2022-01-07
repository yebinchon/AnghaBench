
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_qp {int qpn; } ;
struct TYPE_2__ {int rdb_shift; int qp_table; int eqp_table; int rdb_table; } ;
struct mthca_dev {TYPE_1__ qp_table; } ;


 scalar_t__ mthca_is_memfree (struct mthca_dev*) ;
 int mthca_table_get (struct mthca_dev*,int ,int) ;
 int mthca_table_put (struct mthca_dev*,int ,int) ;

__attribute__((used)) static int mthca_map_memfree(struct mthca_dev *dev,
        struct mthca_qp *qp)
{
 int ret;

 if (mthca_is_memfree(dev)) {
  ret = mthca_table_get(dev, dev->qp_table.qp_table, qp->qpn);
  if (ret)
   return ret;

  ret = mthca_table_get(dev, dev->qp_table.eqp_table, qp->qpn);
  if (ret)
   goto err_qpc;

  ret = mthca_table_get(dev, dev->qp_table.rdb_table,
          qp->qpn << dev->qp_table.rdb_shift);
  if (ret)
   goto err_eqpc;

 }

 return 0;

err_eqpc:
 mthca_table_put(dev, dev->qp_table.eqp_table, qp->qpn);

err_qpc:
 mthca_table_put(dev, dev->qp_table.qp_table, qp->qpn);

 return ret;
}
