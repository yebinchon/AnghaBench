
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwcm_id_private {int dummy; } ;
struct iw_cm_event {int event; } ;


 int BUG () ;





 int cm_close_handler (struct iwcm_id_private*,struct iw_cm_event*) ;
 int cm_conn_est_handler (struct iwcm_id_private*,struct iw_cm_event*) ;
 int cm_conn_rep_handler (struct iwcm_id_private*,struct iw_cm_event*) ;
 int cm_conn_req_handler (struct iwcm_id_private*,struct iw_cm_event*) ;
 int cm_disconnect_handler (struct iwcm_id_private*,struct iw_cm_event*) ;

__attribute__((used)) static int process_event(struct iwcm_id_private *cm_id_priv,
    struct iw_cm_event *iw_event)
{
 int ret = 0;

 switch (iw_event->event) {
 case 130:
  cm_conn_req_handler(cm_id_priv, iw_event);
  break;
 case 131:
  ret = cm_conn_rep_handler(cm_id_priv, iw_event);
  break;
 case 128:
  ret = cm_conn_est_handler(cm_id_priv, iw_event);
  break;
 case 129:
  cm_disconnect_handler(cm_id_priv, iw_event);
  break;
 case 132:
  ret = cm_close_handler(cm_id_priv, iw_event);
  break;
 default:
  BUG();
 }

 return ret;
}
