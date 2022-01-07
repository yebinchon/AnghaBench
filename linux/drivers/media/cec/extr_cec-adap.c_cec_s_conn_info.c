
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_connector_info {int dummy; } ;
struct cec_adapter {int capabilities; int lock; struct cec_connector_info conn_info; } ;


 int CEC_CAP_CONNECTOR_INFO ;
 scalar_t__ IS_ERR_OR_NULL (struct cec_adapter*) ;
 int cec_post_state_event (struct cec_adapter*) ;
 int memset (struct cec_connector_info*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void cec_s_conn_info(struct cec_adapter *adap,
       const struct cec_connector_info *conn_info)
{
 if (IS_ERR_OR_NULL(adap))
  return;

 if (!(adap->capabilities & CEC_CAP_CONNECTOR_INFO))
  return;

 mutex_lock(&adap->lock);
 if (conn_info)
  adap->conn_info = *conn_info;
 else
  memset(&adap->conn_info, 0, sizeof(adap->conn_info));
 cec_post_state_event(adap);
 mutex_unlock(&adap->lock);
}
