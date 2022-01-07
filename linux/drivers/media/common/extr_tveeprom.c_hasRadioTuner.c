
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int hasRadioTuner(int tunerType)
{
 switch (tunerType) {
 case 18:
 case 23:
 case 38:
 case 16:
 case 19:
 case 21:
 case 24:
 case 17:
 case 22:
 case 20:
 case 25:
 case 33:
 case 42:
 case 52:
 case 54:
 case 44:
 case 31:
 case 30:
 case 46:
 case 47:
 case 49:
 case 60:
 case 57:
 case 59:
 case 58:
 case 68:
 case 61:
 case 78:
 case 89:
 case 92:
 case 105:
  return 1;
 }
 return 0;
}
