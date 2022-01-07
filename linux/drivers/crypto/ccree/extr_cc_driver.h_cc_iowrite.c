
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cc_drvdata {scalar_t__ cc_base; } ;


 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void cc_iowrite(struct cc_drvdata *drvdata, u32 reg, u32 val)
{
 iowrite32(val, (drvdata->cc_base + reg));
}
