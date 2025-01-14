
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {scalar_t__ task; } ;
struct rdma_counter {int kref; TYPE_1__ res; } ;
struct TYPE_4__ {scalar_t__ task; } ;
struct ib_qp {TYPE_2__ res; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 int counter_release ;
 int kref_put (int *,int ) ;
 int rdma_counter_bind_qp_manual (struct rdma_counter*,struct ib_qp*) ;
 struct ib_qp* rdma_counter_get_qp (struct ib_device*,int ) ;
 struct rdma_counter* rdma_get_counter_by_id (struct ib_device*,int ) ;
 int rdma_restrack_put (TYPE_2__*) ;

int rdma_counter_bind_qpn(struct ib_device *dev, u8 port,
     u32 qp_num, u32 counter_id)
{
 struct rdma_counter *counter;
 struct ib_qp *qp;
 int ret;

 qp = rdma_counter_get_qp(dev, qp_num);
 if (!qp)
  return -ENOENT;

 counter = rdma_get_counter_by_id(dev, counter_id);
 if (!counter) {
  ret = -ENOENT;
  goto err;
 }

 if (counter->res.task != qp->res.task) {
  ret = -EINVAL;
  goto err_task;
 }

 ret = rdma_counter_bind_qp_manual(counter, qp);
 if (ret)
  goto err_task;

 rdma_restrack_put(&qp->res);
 return 0;

err_task:
 kref_put(&counter->kref, counter_release);
err:
 rdma_restrack_put(&qp->res);
 return ret;
}
