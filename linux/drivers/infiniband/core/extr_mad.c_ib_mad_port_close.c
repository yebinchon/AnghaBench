
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_port_private {int * qp_info; int pd; int cq; int wq; int port_list; } ;
struct ib_device {int dev; } ;


 int ENODEV ;
 struct ib_mad_port_private* __ib_get_mad_port (struct ib_device*,int) ;
 int cleanup_recv_queue (int *) ;
 int destroy_mad_qp (int *) ;
 int destroy_workqueue (int ) ;
 int dev_err (int *,char*,int) ;
 int ib_dealloc_pd (int ) ;
 int ib_free_cq (int ) ;
 int ib_mad_port_list_lock ;
 int kfree (struct ib_mad_port_private*) ;
 int list_del_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ib_mad_port_close(struct ib_device *device, int port_num)
{
 struct ib_mad_port_private *port_priv;
 unsigned long flags;

 spin_lock_irqsave(&ib_mad_port_list_lock, flags);
 port_priv = __ib_get_mad_port(device, port_num);
 if (port_priv == ((void*)0)) {
  spin_unlock_irqrestore(&ib_mad_port_list_lock, flags);
  dev_err(&device->dev, "Port %d not found\n", port_num);
  return -ENODEV;
 }
 list_del_init(&port_priv->port_list);
 spin_unlock_irqrestore(&ib_mad_port_list_lock, flags);

 destroy_workqueue(port_priv->wq);
 destroy_mad_qp(&port_priv->qp_info[1]);
 destroy_mad_qp(&port_priv->qp_info[0]);
 ib_free_cq(port_priv->cq);
 ib_dealloc_pd(port_priv->pd);
 cleanup_recv_queue(&port_priv->qp_info[1]);
 cleanup_recv_queue(&port_priv->qp_info[0]);


 kfree(port_priv);

 return 0;
}
