
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static inline int capi_cmd_valid(u8 cmd)
{
 switch (cmd) {
 case 142:
 case 141:
 case 140:
 case 138:
 case 139:
 case 137:
 case 136:
 case 134:
 case 135:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  return 1;
 }
 return 0;
}
