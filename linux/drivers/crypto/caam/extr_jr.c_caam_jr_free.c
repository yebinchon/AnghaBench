
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct caam_drv_private_jr {int tfm_count; } ;


 int atomic_dec (int *) ;
 struct caam_drv_private_jr* dev_get_drvdata (struct device*) ;

void caam_jr_free(struct device *rdev)
{
 struct caam_drv_private_jr *jrpriv = dev_get_drvdata(rdev);

 atomic_dec(&jrpriv->tfm_count);
}
