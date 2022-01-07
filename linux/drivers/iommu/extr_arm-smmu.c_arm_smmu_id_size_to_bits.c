
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int arm_smmu_id_size_to_bits(int size)
{
 switch (size) {
 case 0:
  return 32;
 case 1:
  return 36;
 case 2:
  return 40;
 case 3:
  return 42;
 case 4:
  return 44;
 case 5:
 default:
  return 48;
 }
}
