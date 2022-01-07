
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tmc_drvdata {int etr_caps; } ;



__attribute__((used)) static inline void tmc_etr_set_cap(struct tmc_drvdata *drvdata, u32 cap)
{
 drvdata->etr_caps |= cap;
}
