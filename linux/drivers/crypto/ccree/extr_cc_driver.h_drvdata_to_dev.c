
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct cc_drvdata {TYPE_1__* plat_dev; } ;
struct TYPE_2__ {struct device dev; } ;



__attribute__((used)) static inline struct device *drvdata_to_dev(struct cc_drvdata *drvdata)
{
 return &drvdata->plat_dev->dev;
}
