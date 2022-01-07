
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cec_connector_info {int dummy; } ;
struct cec_notifier {int lock; scalar_t__ cec_adap; struct cec_connector_info conn_info; int phys_addr; } ;


 int CEC_PHYS_ADDR_INVALID ;
 struct cec_notifier* cec_notifier_get_conn (struct device*,char const*) ;
 int cec_phys_addr_invalidate (scalar_t__) ;
 int cec_s_conn_info (scalar_t__,struct cec_connector_info const*) ;
 int memset (struct cec_connector_info*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct cec_notifier *
cec_notifier_conn_register(struct device *hdmi_dev, const char *conn_name,
      const struct cec_connector_info *conn_info)
{
 struct cec_notifier *n = cec_notifier_get_conn(hdmi_dev, conn_name);

 if (!n)
  return n;

 mutex_lock(&n->lock);
 n->phys_addr = CEC_PHYS_ADDR_INVALID;
 if (conn_info)
  n->conn_info = *conn_info;
 else
  memset(&n->conn_info, 0, sizeof(n->conn_info));
 if (n->cec_adap) {
  cec_phys_addr_invalidate(n->cec_adap);
  cec_s_conn_info(n->cec_adap, conn_info);
 }
 mutex_unlock(&n->lock);
 return n;
}
