
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_soc {struct ipu_di** di_priv; } ;
struct ipu_di {int inuse; } ;


 int EBUSY ;
 int EINVAL ;
 struct ipu_di* ERR_PTR (int ) ;
 int ipu_di_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct ipu_di *ipu_di_get(struct ipu_soc *ipu, int disp)
{
 struct ipu_di *di;

 if (disp > 1)
  return ERR_PTR(-EINVAL);

 di = ipu->di_priv[disp];

 mutex_lock(&ipu_di_lock);

 if (di->inuse) {
  di = ERR_PTR(-EBUSY);
  goto out;
 }

 di->inuse = 1;
out:
 mutex_unlock(&ipu_di_lock);

 return di;
}
