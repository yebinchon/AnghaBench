
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int phys_addr_t ;


 int GENMASK_ULL (int,int) ;
 scalar_t__ GICR_PROPBASER ;
 int LPI_PROPBASE_SZ ;
 int gic_check_reserved_range (int,int ) ;
 scalar_t__ gic_data_rdist_rd_base () ;
 int gicr_read_propbaser (scalar_t__) ;

__attribute__((used)) static bool enabled_lpis_allowed(void)
{
 phys_addr_t addr;
 u64 val;


 val = gicr_read_propbaser(gic_data_rdist_rd_base() + GICR_PROPBASER);
 addr = val & GENMASK_ULL(51, 12);

 return gic_check_reserved_range(addr, LPI_PROPBASE_SZ);
}
