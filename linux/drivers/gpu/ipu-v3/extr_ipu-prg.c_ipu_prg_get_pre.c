
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ipu_prg {int id; int dev; int iomuxc_gpr; TYPE_1__* chan; int * pres; } ;
struct TYPE_2__ {int used_pre; } ;


 int IOMUXC_GPR5 ;
 int dev_err (int ,char*,int) ;
 int ipu_pre_get (int ) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int ipu_prg_get_pre(struct ipu_prg *prg, int prg_chan)
{
 int i, ret;


 if (prg_chan == 0) {
  ret = ipu_pre_get(prg->pres[0]);
  if (ret)
   goto fail;
  prg->chan[prg_chan].used_pre = 0;
  return 0;
 }

 for (i = 1; i < 3; i++) {
  ret = ipu_pre_get(prg->pres[i]);
  if (!ret) {
   u32 val, mux;
   int shift;

   prg->chan[prg_chan].used_pre = i;


   shift = (i == 1) ? 12 : 14;
   mux = (prg->id << 1) | (prg_chan - 1);
   regmap_update_bits(prg->iomuxc_gpr, IOMUXC_GPR5,
        0x3 << shift, mux << shift);


   shift = (i == 1) ? 14 : 12;
   regmap_read(prg->iomuxc_gpr, IOMUXC_GPR5, &val);
   if (((val >> shift) & 0x3) == mux) {
    regmap_update_bits(prg->iomuxc_gpr, IOMUXC_GPR5,
         0x3 << shift,
         (mux ^ 0x1) << shift);
   }

   return 0;
  }
 }

fail:
 dev_err(prg->dev, "could not get PRE for PRG chan %d", prg_chan);
 return ret;
}
