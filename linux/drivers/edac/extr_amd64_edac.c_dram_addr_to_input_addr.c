
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mem_ctl_info {struct amd64_pvt* pvt_info; } ;
struct amd64_pvt {int dummy; } ;


 int GENMASK_ULL (int,int) ;
 int dram_intlv_en (struct amd64_pvt*,int ) ;
 int edac_dbg (int,char*,int,unsigned long,unsigned long) ;
 int num_node_interleave_bits (int ) ;

__attribute__((used)) static u64 dram_addr_to_input_addr(struct mem_ctl_info *mci, u64 dram_addr)
{
 struct amd64_pvt *pvt;
 int intlv_shift;
 u64 input_addr;

 pvt = mci->pvt_info;





 intlv_shift = num_node_interleave_bits(dram_intlv_en(pvt, 0));
 input_addr = ((dram_addr >> intlv_shift) & GENMASK_ULL(35, 12)) +
        (dram_addr & 0xfff);

 edac_dbg(2, "  Intlv Shift=%d DramAddr=0x%lx maps to InputAddr=0x%lx\n",
   intlv_shift, (unsigned long)dram_addr,
   (unsigned long)input_addr);

 return input_addr;
}
