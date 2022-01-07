
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 scalar_t__ BUS_ERROR (int ) ;
 scalar_t__ II (int ) ;
 scalar_t__ II_IO ;
 scalar_t__ II_MEM ;
 scalar_t__ LL (int ) ;
 scalar_t__ LL_L1 ;
 scalar_t__ LL_LG ;
 scalar_t__ MEM_ERROR (int ) ;
 int R4 (int ) ;





 scalar_t__ TT (int ) ;
 scalar_t__ TT_DATA ;
 int pr_cont (char*,...) ;

__attribute__((used)) static bool cat_mc0_mce(u16 ec, u8 xec)
{
 u8 r4 = R4(ec);
 bool ret = 1;

 if (MEM_ERROR(ec)) {

  if (TT(ec) != TT_DATA || LL(ec) != LL_L1)
   return 0;

  switch (r4) {
  case 132:
  case 131:
   pr_cont("Data/Tag parity error due to %s.\n",
    (r4 == 132 ? "load/hw prf" : "store"));
   break;
  case 130:
   pr_cont("Copyback parity error on a tag miss.\n");
   break;
  case 128:
   pr_cont("Tag parity error during snoop.\n");
   break;
  default:
   ret = 0;
  }
 } else if (BUS_ERROR(ec)) {

  if ((II(ec) != II_MEM && II(ec) != II_IO) || LL(ec) != LL_LG)
   return 0;

  pr_cont("System read data error on a ");

  switch (r4) {
  case 129:
   pr_cont("TLB reload.\n");
   break;
  case 131:
   pr_cont("store.\n");
   break;
  case 132:
   pr_cont("load.\n");
   break;
  default:
   ret = 0;
  }
 } else {
  ret = 0;
 }

 return ret;
}
