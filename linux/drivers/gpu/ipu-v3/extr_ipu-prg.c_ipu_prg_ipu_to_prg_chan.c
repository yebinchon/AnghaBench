
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;




__attribute__((used)) static int ipu_prg_ipu_to_prg_chan(int ipu_chan)
{





 switch (ipu_chan) {
 case 130:
  return 0;
 case 128:
  return 1;
 case 129:
  return 2;
 default:
  return -EINVAL;
 }
}
