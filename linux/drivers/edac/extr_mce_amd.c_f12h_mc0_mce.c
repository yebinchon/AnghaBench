
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;


 scalar_t__ LL (int ) ;
 scalar_t__ LL_L1 ;
 scalar_t__ LL_L2 ;
 scalar_t__ MEM_ERROR (int ) ;
 int R4_MSG (int ) ;
 int pr_cont (char*,...) ;

__attribute__((used)) static bool f12h_mc0_mce(u16 ec, u8 xec)
{
 bool ret = 0;

 if (MEM_ERROR(ec)) {
  u8 ll = LL(ec);
  ret = 1;

  if (ll == LL_L2)
   pr_cont("during L1 linefill from L2.\n");
  else if (ll == LL_L1)
   pr_cont("Data/Tag %s error.\n", R4_MSG(ec));
  else
   ret = 0;
 }
 return ret;
}
