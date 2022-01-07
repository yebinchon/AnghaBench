
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
 int EINVAL ;

__attribute__((used)) static int malidpx50_get_bytes_per_column(u32 fmt)
{
 u32 bytes_per_column;

 switch (fmt) {

 case 152:
 case 154:
 case 141:
 case 148:
 case 151:
 case 153:
 case 139:
 case 147:
 case 132:
 case 133:
 case 138:
 case 146:
 case 142:
 case 149:

 case 140:
 case 155:
 case 143:
 case 150:
 case 137:
 case 128:
 case 134:
  bytes_per_column = 32;
  break;

 case 145:
 case 131:

 case 135:

 case 129:

 case 144:
  bytes_per_column = 24;
  break;

 case 136:

 case 130:
  bytes_per_column = 30;
  break;
 default:
  return -EINVAL;
 }

 return bytes_per_column;
}
