
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dramtype; scalar_t__ eccen; } ;


 int KERN_INFO ;
 TYPE_1__* drp0 ;
 int pnd2_printk (int ,char*,int) ;

__attribute__((used)) static int check_channel(int ch)
{
 if (drp0[ch].dramtype != 0) {
  pnd2_printk(KERN_INFO, "Unsupported DIMM in channel %d\n", ch);
  return 1;
 } else if (drp0[ch].eccen == 0) {
  pnd2_printk(KERN_INFO, "ECC disabled on channel %d\n", ch);
  return 1;
 }
 return 0;
}
