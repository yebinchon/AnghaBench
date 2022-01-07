
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cec_notifier {int lock; int phys_addr; int conn_info; struct cec_adapter* cec_adap; } ;
struct cec_adapter {struct cec_notifier* notifier; int conn_info; } ;


 scalar_t__ WARN_ON (int) ;
 struct cec_notifier* cec_notifier_get_conn (struct device*,char const*) ;
 int cec_s_phys_addr (struct cec_adapter*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct cec_notifier *
cec_notifier_cec_adap_register(struct device *hdmi_dev, const char *conn_name,
          struct cec_adapter *adap)
{
 struct cec_notifier *n;

 if (WARN_ON(!adap))
  return ((void*)0);

 n = cec_notifier_get_conn(hdmi_dev, conn_name);
 if (!n)
  return n;

 mutex_lock(&n->lock);
 n->cec_adap = adap;
 adap->conn_info = n->conn_info;
 adap->notifier = n;
 cec_s_phys_addr(adap, n->phys_addr, 0);
 mutex_unlock(&n->lock);
 return n;
}
