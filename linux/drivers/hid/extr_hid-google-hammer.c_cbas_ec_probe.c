
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ input; } ;


 int EBUSY ;
 int __cbas_ec_probe (struct platform_device*) ;
 TYPE_1__ cbas_ec ;
 int cbas_ec_reglock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cbas_ec_probe(struct platform_device *pdev)
{
 int retval;

 mutex_lock(&cbas_ec_reglock);

 if (cbas_ec.input) {
  retval = -EBUSY;
  goto out;
 }

 retval = __cbas_ec_probe(pdev);

out:
 mutex_unlock(&cbas_ec_reglock);
 return retval;
}
