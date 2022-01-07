
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedr_dev {int rdma_ctx; TYPE_1__* ops; int dpi; } ;
struct TYPE_2__ {int (* rdma_stop ) (int ) ;int (* rdma_remove_user ) (int ,int ) ;} ;


 int stub1 (int ,int ) ;
 int stub2 (int ) ;

__attribute__((used)) static void qedr_stop_hw(struct qedr_dev *dev)
{
 dev->ops->rdma_remove_user(dev->rdma_ctx, dev->dpi);
 dev->ops->rdma_stop(dev->rdma_ctx);
}
