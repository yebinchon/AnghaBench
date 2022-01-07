
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 scalar_t__ LL (int ) ;
 scalar_t__ LL_L1 ;
 scalar_t__ R4 (int ) ;
 scalar_t__ R4_GEN ;
 int f12h_mc0_mce (int ,int ) ;
 int pr_cont (char*) ;

__attribute__((used)) static bool f10h_mc0_mce(u16 ec, u8 xec)
{
 if (R4(ec) == R4_GEN && LL(ec) == LL_L1) {
  pr_cont("during data scrub.\n");
  return 1;
 }
 return f12h_mc0_mce(ec, xec);
}
