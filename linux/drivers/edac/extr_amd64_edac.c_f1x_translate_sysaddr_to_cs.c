
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct amd64_pvt {int fam; int model; } ;


 unsigned int DRAM_RANGES ;
 int EINVAL ;
 int dram_rw (struct amd64_pvt*,unsigned int) ;
 int f15_m30h_match_to_this_node (struct amd64_pvt*,unsigned int,scalar_t__,int*) ;
 int f1x_match_to_this_node (struct amd64_pvt*,unsigned int,scalar_t__,int*) ;
 scalar_t__ get_dram_base (struct amd64_pvt*,unsigned int) ;
 scalar_t__ get_dram_limit (struct amd64_pvt*,unsigned int) ;

__attribute__((used)) static int f1x_translate_sysaddr_to_cs(struct amd64_pvt *pvt,
     u64 sys_addr,
     int *chan_sel)
{
 int cs_found = -EINVAL;
 unsigned range;

 for (range = 0; range < DRAM_RANGES; range++) {
  if (!dram_rw(pvt, range))
   continue;

  if (pvt->fam == 0x15 && pvt->model >= 0x30)
   cs_found = f15_m30h_match_to_this_node(pvt, range,
              sys_addr,
              chan_sel);

  else if ((get_dram_base(pvt, range) <= sys_addr) &&
    (get_dram_limit(pvt, range) >= sys_addr)) {
   cs_found = f1x_match_to_this_node(pvt, range,
         sys_addr, chan_sel);
   if (cs_found >= 0)
    break;
  }
 }
 return cs_found;
}
