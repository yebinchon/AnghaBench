
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct skx_imc {scalar_t__ mbase; } ;


 int GET_BITFIELD (int ,int,int) ;
 int edac_dbg (int,char*,int,int ) ;

__attribute__((used)) static bool i10nm_check_ecc(struct skx_imc *imc, int chan)
{
 u32 mcmtr;

 mcmtr = *(u32 *)(imc->mbase + 0x20ef8 + chan * 0x4000);
 edac_dbg(1, "ch%d mcmtr reg %x\n", chan, mcmtr);

 return !!GET_BITFIELD(mcmtr, 2, 2);
}
