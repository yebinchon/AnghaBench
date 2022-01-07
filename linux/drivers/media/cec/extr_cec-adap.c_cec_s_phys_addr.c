
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct cec_adapter {int lock; } ;


 scalar_t__ IS_ERR_OR_NULL (struct cec_adapter*) ;
 int __cec_s_phys_addr (struct cec_adapter*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void cec_s_phys_addr(struct cec_adapter *adap, u16 phys_addr, bool block)
{
 if (IS_ERR_OR_NULL(adap))
  return;

 mutex_lock(&adap->lock);
 __cec_s_phys_addr(adap, phys_addr, block);
 mutex_unlock(&adap->lock);
}
