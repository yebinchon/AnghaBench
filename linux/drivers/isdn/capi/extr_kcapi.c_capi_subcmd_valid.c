
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;







__attribute__((used)) static inline int capi_subcmd_valid(u8 subcmd)
{
 switch (subcmd) {
 case 129:
 case 131:
 case 130:
 case 128:
  return 1;
 }
 return 0;
}
