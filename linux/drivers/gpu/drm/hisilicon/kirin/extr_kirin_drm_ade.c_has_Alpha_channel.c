
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool has_Alpha_channel(int format)
{
 switch (format) {
 case 130:
 case 131:
 case 128:
 case 129:
  return 1;
 default:
  return 0;
 }
}
