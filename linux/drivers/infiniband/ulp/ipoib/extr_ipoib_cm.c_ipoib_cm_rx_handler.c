
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_dev_priv {int dummy; } ;
struct ipoib_cm_rx {int qp; int dev; } ;
struct ib_cm_id {struct ipoib_cm_rx* context; } ;
struct ib_cm_event {int event; } ;





 int IB_QP_STATE ;
 int ib_modify_qp (int ,int *,int ) ;
 int ib_send_cm_drep (struct ib_cm_id*,int *,int ) ;
 int ipoib_cm_err_attr ;
 int ipoib_cm_req_handler (struct ib_cm_id*,struct ib_cm_event const*) ;
 struct ipoib_dev_priv* ipoib_priv (int ) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*) ;

__attribute__((used)) static int ipoib_cm_rx_handler(struct ib_cm_id *cm_id,
          const struct ib_cm_event *event)
{
 struct ipoib_cm_rx *p;
 struct ipoib_dev_priv *priv;

 switch (event->event) {
 case 128:
  return ipoib_cm_req_handler(cm_id, event);
 case 130:
  ib_send_cm_drep(cm_id, ((void*)0), 0);

 case 129:
  p = cm_id->context;
  priv = ipoib_priv(p->dev);
  if (ib_modify_qp(p->qp, &ipoib_cm_err_attr, IB_QP_STATE))
   ipoib_warn(priv, "unable to move qp to error state\n");

 default:
  return 0;
 }
}
