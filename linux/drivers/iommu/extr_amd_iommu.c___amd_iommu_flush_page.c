
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct protection_domain {int dummy; } ;


 int __flush_pasid (struct protection_domain*,int,int ,int) ;

__attribute__((used)) static int __amd_iommu_flush_page(struct protection_domain *domain, int pasid,
      u64 address)
{
 return __flush_pasid(domain, pasid, address, 0);
}
