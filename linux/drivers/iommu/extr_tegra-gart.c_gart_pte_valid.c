
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gart_device {int dummy; } ;


 int GART_ENTRY_PHYS_ADDR_VALID ;
 int gart_read_pte (struct gart_device*,unsigned long) ;

__attribute__((used)) static inline bool gart_pte_valid(struct gart_device *gart, unsigned long iova)
{
 return !!(gart_read_pte(gart, iova) & GART_ENTRY_PHYS_ADDR_VALID);
}
