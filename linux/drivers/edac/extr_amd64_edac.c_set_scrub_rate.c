
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mem_ctl_info {struct amd64_pvt* pvt_info; } ;
struct amd64_pvt {int fam; int model; } ;


 int __set_scrub_rate (struct amd64_pvt*,int,int) ;
 int f15h_select_dct (struct amd64_pvt*,int ) ;

__attribute__((used)) static int set_scrub_rate(struct mem_ctl_info *mci, u32 bw)
{
 struct amd64_pvt *pvt = mci->pvt_info;
 u32 min_scrubrate = 0x5;

 if (pvt->fam == 0xf)
  min_scrubrate = 0x0;

 if (pvt->fam == 0x15) {

  if (pvt->model < 0x10)
   f15h_select_dct(pvt, 0);

  if (pvt->model == 0x60)
   min_scrubrate = 0x6;
 }
 return __set_scrub_rate(pvt, bw, min_scrubrate);
}
