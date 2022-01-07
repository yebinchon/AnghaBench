
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_msg {int dummy; } ;
struct cec_adapter {int lock; } ;


 int cec_transmit_msg_fh (struct cec_adapter*,struct cec_msg*,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int cec_transmit_msg(struct cec_adapter *adap, struct cec_msg *msg,
       bool block)
{
 int ret;

 mutex_lock(&adap->lock);
 ret = cec_transmit_msg_fh(adap, msg, ((void*)0), block);
 mutex_unlock(&adap->lock);
 return ret;
}
