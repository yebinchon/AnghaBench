
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ db_index; int db; } ;
struct TYPE_3__ {scalar_t__ db_index; int db; } ;
struct mthca_qp {TYPE_2__ rq; TYPE_1__ sq; int qpn; } ;
struct mthca_dev {int dummy; } ;


 int ENOMEM ;
 int MTHCA_DB_TYPE_RQ ;
 int MTHCA_DB_TYPE_SQ ;
 void* mthca_alloc_db (struct mthca_dev*,int ,int ,int *) ;
 int mthca_free_db (struct mthca_dev*,int ,scalar_t__) ;
 scalar_t__ mthca_is_memfree (struct mthca_dev*) ;

__attribute__((used)) static int mthca_alloc_memfree(struct mthca_dev *dev,
          struct mthca_qp *qp)
{
 if (mthca_is_memfree(dev)) {
  qp->rq.db_index = mthca_alloc_db(dev, MTHCA_DB_TYPE_RQ,
       qp->qpn, &qp->rq.db);
  if (qp->rq.db_index < 0)
   return -ENOMEM;

  qp->sq.db_index = mthca_alloc_db(dev, MTHCA_DB_TYPE_SQ,
       qp->qpn, &qp->sq.db);
  if (qp->sq.db_index < 0) {
   mthca_free_db(dev, MTHCA_DB_TYPE_RQ, qp->rq.db_index);
   return -ENOMEM;
  }
 }

 return 0;
}
