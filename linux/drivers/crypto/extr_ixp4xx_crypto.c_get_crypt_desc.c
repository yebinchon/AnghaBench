
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypt_ctl {scalar_t__ ctl_flags; } ;


 scalar_t__ CTL_FLAG_UNUSED ;
 scalar_t__ CTL_FLAG_USED ;
 int NPE_QLEN ;
 struct crypt_ctl* crypt_virt ;
 int desc_lock ;
 int setup_crypt_desc () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct crypt_ctl *get_crypt_desc(void)
{
 int i;
 static int idx = 0;
 unsigned long flags;

 spin_lock_irqsave(&desc_lock, flags);

 if (unlikely(!crypt_virt))
  setup_crypt_desc();
 if (unlikely(!crypt_virt)) {
  spin_unlock_irqrestore(&desc_lock, flags);
  return ((void*)0);
 }
 i = idx;
 if (crypt_virt[i].ctl_flags == CTL_FLAG_UNUSED) {
  if (++idx >= NPE_QLEN)
   idx = 0;
  crypt_virt[i].ctl_flags = CTL_FLAG_USED;
  spin_unlock_irqrestore(&desc_lock, flags);
  return crypt_virt +i;
 } else {
  spin_unlock_irqrestore(&desc_lock, flags);
  return ((void*)0);
 }
}
