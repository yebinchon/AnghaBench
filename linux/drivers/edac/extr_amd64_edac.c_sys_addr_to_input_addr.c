
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct mem_ctl_info {int dummy; } ;


 scalar_t__ dram_addr_to_input_addr (struct mem_ctl_info*,int ) ;
 int edac_dbg (int,char*,unsigned long,unsigned long) ;
 int sys_addr_to_dram_addr (struct mem_ctl_info*,scalar_t__) ;

__attribute__((used)) static u64 sys_addr_to_input_addr(struct mem_ctl_info *mci, u64 sys_addr)
{
 u64 input_addr;

 input_addr =
     dram_addr_to_input_addr(mci, sys_addr_to_dram_addr(mci, sys_addr));

 edac_dbg(2, "SysAddr 0x%lx translates to InputAddr 0x%lx\n",
   (unsigned long)sys_addr, (unsigned long)input_addr);

 return input_addr;
}
