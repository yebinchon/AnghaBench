
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
__attribute__((used)) static int sdma_v4_0_irq_id_to_seq(unsigned client_id)
{
 switch (client_id) {
 case 135:
  return 0;
 case 134:
  return 1;
 case 133:
  return 2;
 case 132:
  return 3;
 case 131:
  return 4;
 case 130:
  return 5;
 case 129:
  return 6;
 case 128:
  return 7;
 default:
  break;
 }
 return -EINVAL;
}
