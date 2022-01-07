
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_log_addrs {int dummy; } ;
struct cec_adapter {int lock; } ;


 int __cec_s_log_addrs (struct cec_adapter*,struct cec_log_addrs*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int cec_s_log_addrs(struct cec_adapter *adap,
      struct cec_log_addrs *log_addrs, bool block)
{
 int err;

 mutex_lock(&adap->lock);
 err = __cec_s_log_addrs(adap, log_addrs, block);
 mutex_unlock(&adap->lock);
 return err;
}
