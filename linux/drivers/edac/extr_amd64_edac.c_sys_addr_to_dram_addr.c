
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct mem_ctl_info {struct amd64_pvt* pvt_info; } ;
struct amd64_pvt {int mc_node_id; } ;


 unsigned long long GENMASK_ULL (int,int ) ;
 int amd64_get_dram_hole_info (struct mem_ctl_info*,unsigned long long*,unsigned long long*,unsigned long long*) ;
 int edac_dbg (int,char*,unsigned long,unsigned long) ;
 unsigned long long get_dram_base (struct amd64_pvt*,int ) ;

__attribute__((used)) static u64 sys_addr_to_dram_addr(struct mem_ctl_info *mci, u64 sys_addr)
{
 struct amd64_pvt *pvt = mci->pvt_info;
 u64 dram_base, hole_base, hole_offset, hole_size, dram_addr;
 int ret;

 dram_base = get_dram_base(pvt, pvt->mc_node_id);

 ret = amd64_get_dram_hole_info(mci, &hole_base, &hole_offset,
          &hole_size);
 if (!ret) {
  if ((sys_addr >= (1ULL << 32)) &&
      (sys_addr < ((1ULL << 32) + hole_size))) {

   dram_addr = sys_addr - hole_offset;

   edac_dbg(2, "using DHAR to translate SysAddr 0x%lx to DramAddr 0x%lx\n",
     (unsigned long)sys_addr,
     (unsigned long)dram_addr);

   return dram_addr;
  }
 }
 dram_addr = (sys_addr & GENMASK_ULL(39, 0)) - dram_base;

 edac_dbg(2, "using DRAM Base register to translate SysAddr 0x%lx to DramAddr 0x%lx\n",
   (unsigned long)sys_addr, (unsigned long)dram_addr);
 return dram_addr;
}
