
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 scalar_t__ BUS_ERROR (int ) ;
 scalar_t__ INT_ERROR (int ) ;
 scalar_t__ MEM_ERROR (int ) ;
 int pr_cont (char*,...) ;

__attribute__((used)) static bool f15h_mc0_mce(u16 ec, u8 xec)
{
 bool ret = 1;

 if (MEM_ERROR(ec)) {

  switch (xec) {
  case 0x0:
   pr_cont("Data Array access error.\n");
   break;

  case 0x1:
   pr_cont("UC error during a linefill from L2/NB.\n");
   break;

  case 0x2:
  case 0x11:
   pr_cont("STQ access error.\n");
   break;

  case 0x3:
   pr_cont("SCB access error.\n");
   break;

  case 0x10:
   pr_cont("Tag error.\n");
   break;

  case 0x12:
   pr_cont("LDQ access error.\n");
   break;

  default:
   ret = 0;
  }
 } else if (BUS_ERROR(ec)) {

  if (!xec)
   pr_cont("System Read Data Error.\n");
  else
   pr_cont(" Internal error condition type %d.\n", xec);
 } else if (INT_ERROR(ec)) {
  if (xec <= 0x1f)
   pr_cont("Hardware Assert.\n");
  else
   ret = 0;

 } else
  ret = 0;

 return ret;
}
