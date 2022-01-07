
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tmc_drvdata {int etr_caps; } ;


 int WARN_ON (int ) ;

__attribute__((used)) static inline void tmc_etr_init_caps(struct tmc_drvdata *drvdata, u32 dev_caps)
{
 WARN_ON(drvdata->etr_caps);
 drvdata->etr_caps = dev_caps;
}
