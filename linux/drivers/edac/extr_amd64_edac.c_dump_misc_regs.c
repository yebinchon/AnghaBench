
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd64_pvt {int ecc_sym_sz; scalar_t__ umc; } ;


 int __dump_misc_regs (struct amd64_pvt*) ;
 int __dump_misc_regs_df (struct amd64_pvt*) ;
 int amd64_info (char*,int ) ;
 scalar_t__ dhar_valid (struct amd64_pvt*) ;
 int edac_dbg (int,char*,char*) ;

__attribute__((used)) static void dump_misc_regs(struct amd64_pvt *pvt)
{
 if (pvt->umc)
  __dump_misc_regs_df(pvt);
 else
  __dump_misc_regs(pvt);

 edac_dbg(1, "  DramHoleValid: %s\n", dhar_valid(pvt) ? "yes" : "no");

 amd64_info("using x%u syndromes.\n", pvt->ecc_sym_sz);
}
