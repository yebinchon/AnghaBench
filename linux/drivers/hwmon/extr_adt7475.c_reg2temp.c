
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct adt7475_data {int config5; } ;


 int CONFIG5_TWOSCOMP ;

__attribute__((used)) static inline int reg2temp(struct adt7475_data *data, u16 reg)
{
 if (data->config5 & CONFIG5_TWOSCOMP) {
  if (reg >= 512)
   return (reg - 1024) * 250;
  else
   return reg * 250;
 } else
  return (reg - 256) * 250;
}
