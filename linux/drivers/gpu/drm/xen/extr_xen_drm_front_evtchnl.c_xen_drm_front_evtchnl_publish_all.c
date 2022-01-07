
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xenbus_transaction {int dummy; } ;
struct xen_drm_front_cfg {int num_connectors; TYPE_2__* connectors; } ;
struct xen_drm_front_info {int xb_dev; TYPE_1__* evt_pairs; struct xen_drm_front_cfg cfg; } ;
struct TYPE_4__ {int xenstore_path; } ;
struct TYPE_3__ {int evt; int req; } ;


 int EAGAIN ;
 int XENDISPL_FIELD_EVT_CHANNEL ;
 int XENDISPL_FIELD_EVT_RING_REF ;
 int XENDISPL_FIELD_REQ_CHANNEL ;
 int XENDISPL_FIELD_REQ_RING_REF ;
 int evtchnl_publish (struct xenbus_transaction,int *,int ,int ,int ) ;
 int xenbus_dev_fatal (int ,int,char*) ;
 int xenbus_transaction_end (struct xenbus_transaction,int) ;
 int xenbus_transaction_start (struct xenbus_transaction*) ;

int xen_drm_front_evtchnl_publish_all(struct xen_drm_front_info *front_info)
{
 struct xenbus_transaction xbt;
 struct xen_drm_front_cfg *plat_data;
 int ret, conn;

 plat_data = &front_info->cfg;

again:
 ret = xenbus_transaction_start(&xbt);
 if (ret < 0) {
  xenbus_dev_fatal(front_info->xb_dev, ret,
     "starting transaction");
  return ret;
 }

 for (conn = 0; conn < plat_data->num_connectors; conn++) {
  ret = evtchnl_publish(xbt, &front_info->evt_pairs[conn].req,
          plat_data->connectors[conn].xenstore_path,
          XENDISPL_FIELD_REQ_RING_REF,
          XENDISPL_FIELD_REQ_CHANNEL);
  if (ret < 0)
   goto fail;

  ret = evtchnl_publish(xbt, &front_info->evt_pairs[conn].evt,
          plat_data->connectors[conn].xenstore_path,
          XENDISPL_FIELD_EVT_RING_REF,
          XENDISPL_FIELD_EVT_CHANNEL);
  if (ret < 0)
   goto fail;
 }

 ret = xenbus_transaction_end(xbt, 0);
 if (ret < 0) {
  if (ret == -EAGAIN)
   goto again;

  xenbus_dev_fatal(front_info->xb_dev, ret,
     "completing transaction");
  goto fail_to_end;
 }

 return 0;

fail:
 xenbus_transaction_end(xbt, 1);

fail_to_end:
 xenbus_dev_fatal(front_info->xb_dev, ret, "writing Xen store");
 return ret;
}
