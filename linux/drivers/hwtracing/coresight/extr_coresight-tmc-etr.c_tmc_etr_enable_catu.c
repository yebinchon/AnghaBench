
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmc_drvdata {int dummy; } ;
struct etr_buf {int dummy; } ;
struct coresight_device {int dummy; } ;
struct TYPE_2__ {int (* enable ) (struct coresight_device*,struct etr_buf*) ;} ;


 TYPE_1__* helper_ops (struct coresight_device*) ;
 int stub1 (struct coresight_device*,struct etr_buf*) ;
 struct coresight_device* tmc_etr_get_catu_device (struct tmc_drvdata*) ;

__attribute__((used)) static inline int tmc_etr_enable_catu(struct tmc_drvdata *drvdata,
          struct etr_buf *etr_buf)
{
 struct coresight_device *catu = tmc_etr_get_catu_device(drvdata);

 if (catu && helper_ops(catu)->enable)
  return helper_ops(catu)->enable(catu, etr_buf);
 return 0;
}
