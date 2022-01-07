
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cc_drvdata {scalar_t__ cc_base; } ;


 scalar_t__ ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 cc_ioread(struct cc_drvdata *drvdata, u32 reg)
{
 return ioread32(drvdata->cc_base + reg);
}
