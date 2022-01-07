
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct d_cr_drp {int dummy; } ;
struct TYPE_2__ {int eccen; } ;


 scalar_t__ DIMMS_PRESENT (struct d_cr_drp*) ;
 int KERN_INFO ;
 struct d_cr_drp* drp ;
 TYPE_1__* ecc_ctrl ;
 int pnd2_printk (int ,char*,int) ;

__attribute__((used)) static int check_unit(int ch)
{
 struct d_cr_drp *d = &drp[ch];

 if (DIMMS_PRESENT(d) && !ecc_ctrl[ch].eccen) {
  pnd2_printk(KERN_INFO, "ECC disabled on channel %d\n", ch);
  return 1;
 }
 return 0;
}
