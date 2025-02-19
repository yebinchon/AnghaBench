
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_dmae_pdata {int ts_low_mask; int ts_low_shift; int ts_high_mask; int ts_high_shift; int ts_shift_num; unsigned int* ts_shift; } ;
struct sh_dmae_device {struct sh_dmae_pdata* pdata; } ;
struct sh_dmae_chan {int dummy; } ;


 struct sh_dmae_device* to_sh_dev (struct sh_dmae_chan*) ;

__attribute__((used)) static unsigned int calc_xmit_shift(struct sh_dmae_chan *sh_chan, u32 chcr)
{
 struct sh_dmae_device *shdev = to_sh_dev(sh_chan);
 const struct sh_dmae_pdata *pdata = shdev->pdata;
 int cnt = ((chcr & pdata->ts_low_mask) >> pdata->ts_low_shift) |
  ((chcr & pdata->ts_high_mask) >> pdata->ts_high_shift);

 if (cnt >= pdata->ts_shift_num)
  cnt = 0;

 return pdata->ts_shift[cnt];
}
