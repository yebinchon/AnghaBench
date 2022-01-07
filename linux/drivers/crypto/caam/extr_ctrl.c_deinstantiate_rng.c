
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct device {int dummy; } ;


 int CAAM_CMD_SZ ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ JRSTA_SSRC_JUMP_HALT_CC ;
 int RNG4_MAX_HANDLES ;
 int build_deinstantiation_desc (scalar_t__*,int) ;
 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*,int) ;
 int kfree (scalar_t__*) ;
 scalar_t__* kmalloc (int,int ) ;
 int run_descriptor_deco0 (struct device*,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int deinstantiate_rng(struct device *ctrldev, int state_handle_mask)
{
 u32 *desc, status;
 int sh_idx, ret = 0;

 desc = kmalloc(CAAM_CMD_SZ * 3, GFP_KERNEL);
 if (!desc)
  return -ENOMEM;

 for (sh_idx = 0; sh_idx < RNG4_MAX_HANDLES; sh_idx++) {





  if ((1 << sh_idx) & state_handle_mask) {




   build_deinstantiation_desc(desc, sh_idx);


   ret = run_descriptor_deco0(ctrldev, desc, &status);

   if (ret ||
       (status && status != JRSTA_SSRC_JUMP_HALT_CC)) {
    dev_err(ctrldev,
     "Failed to deinstantiate RNG4 SH%d\n",
     sh_idx);
    break;
   }
   dev_info(ctrldev, "Deinstantiated RNG4 SH%d\n", sh_idx);
  }
 }

 kfree(desc);

 return ret;
}
