
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int ipu_chan_assign_axi_id(int ipu_chan)
{
 switch (ipu_chan) {
 case 130:
  return 1;
 case 128:
  return 2;
 case 129:
  return 3;
 default:
  return 0;
 }
}
