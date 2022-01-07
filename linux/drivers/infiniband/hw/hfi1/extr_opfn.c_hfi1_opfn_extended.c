
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IB_BTHE_E ;

__attribute__((used)) static bool hfi1_opfn_extended(u32 bth1)
{
 return !!(bth1 & IB_BTHE_E);
}
