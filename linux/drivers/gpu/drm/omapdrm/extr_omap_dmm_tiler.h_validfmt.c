
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tiler_fmt { ____Placeholder_tiler_fmt } tiler_fmt ;







__attribute__((used)) static inline bool validfmt(enum tiler_fmt fmt)
{
 switch (fmt) {
 case 129:
 case 131:
 case 130:
 case 128:
  return 1;
 default:
  return 0;
 }
}
