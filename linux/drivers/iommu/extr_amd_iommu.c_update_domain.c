
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protection_domain {int dummy; } ;


 int domain_flush_devices (struct protection_domain*) ;
 int domain_flush_tlb_pde (struct protection_domain*) ;
 int update_device_table (struct protection_domain*) ;

__attribute__((used)) static void update_domain(struct protection_domain *domain)
{
 update_device_table(domain);

 domain_flush_devices(domain);
 domain_flush_tlb_pde(domain);
}
