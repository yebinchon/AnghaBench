
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int HALIBUT_ID ;
 int SWORDFISH_ID ;
 int TRITON_ID ;
__attribute__((used)) static int tsl2772_device_id_verif(int id, int target)
{
 switch (target) {
 case 133:
 case 131:
 case 129:
  return (id & 0xf0) == TRITON_ID;
 case 137:
 case 135:
  return (id & 0xf0) == HALIBUT_ID;
 case 132:
 case 130:
 case 136:
 case 128:
 case 134:
 case 138:
  return (id & 0xf0) == SWORDFISH_ID;
 }

 return -EINVAL;
}
