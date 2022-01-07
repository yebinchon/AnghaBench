
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_qp_security {int shared_qp_list; TYPE_1__* qp; } ;
struct ib_qp {TYPE_2__* qp_sec; } ;
struct TYPE_4__ {int mutex; } ;
struct TYPE_3__ {struct ib_qp* real_qp; } ;


 int destroy_qp_security (struct ib_qp_security*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ib_close_shared_qp_security(struct ib_qp_security *sec)
{
 struct ib_qp *real_qp = sec->qp->real_qp;

 mutex_lock(&real_qp->qp_sec->mutex);
 list_del(&sec->shared_qp_list);
 mutex_unlock(&real_qp->qp_sec->mutex);

 destroy_qp_security(sec);
}
