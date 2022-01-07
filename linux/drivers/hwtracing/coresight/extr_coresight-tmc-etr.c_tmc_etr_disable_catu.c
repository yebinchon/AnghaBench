
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmc_drvdata {int etr_buf; } ;
struct coresight_device {int dummy; } ;
struct TYPE_2__ {int (* disable ) (struct coresight_device*,int ) ;} ;


 TYPE_1__* helper_ops (struct coresight_device*) ;
 int stub1 (struct coresight_device*,int ) ;
 struct coresight_device* tmc_etr_get_catu_device (struct tmc_drvdata*) ;

__attribute__((used)) static inline void tmc_etr_disable_catu(struct tmc_drvdata *drvdata)
{
 struct coresight_device *catu = tmc_etr_get_catu_device(drvdata);

 if (catu && helper_ops(catu)->disable)
  helper_ops(catu)->disable(catu, drvdata->etr_buf);
}
