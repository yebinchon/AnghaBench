
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ib_qp {TYPE_1__* qp_sec; struct ib_qp* real_qp; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {int mutex; int shared_qp_list; int ports_pkeys; } ;


 int check_qp_port_pkey_settings (int ,TYPE_1__*) ;
 int destroy_qp_security (TYPE_1__*) ;
 int ib_create_qp_security (struct ib_qp*,struct ib_device*) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ib_open_shared_qp_security(struct ib_qp *qp, struct ib_device *dev)
{
 struct ib_qp *real_qp = qp->real_qp;
 int ret;

 ret = ib_create_qp_security(qp, dev);

 if (ret)
  return ret;

 if (!qp->qp_sec)
  return 0;

 mutex_lock(&real_qp->qp_sec->mutex);
 ret = check_qp_port_pkey_settings(real_qp->qp_sec->ports_pkeys,
       qp->qp_sec);

 if (ret)
  goto ret;

 if (qp != real_qp)
  list_add(&qp->qp_sec->shared_qp_list,
    &real_qp->qp_sec->shared_qp_list);
ret:
 mutex_unlock(&real_qp->qp_sec->mutex);
 if (ret)
  destroy_qp_security(qp->qp_sec);

 return ret;
}
