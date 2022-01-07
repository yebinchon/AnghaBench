
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct protection_domain {int dummy; } ;


 int __domain_flush_pages (struct protection_domain*,int ,size_t,int ) ;

__attribute__((used)) static void domain_flush_pages(struct protection_domain *domain,
          u64 address, size_t size)
{
 __domain_flush_pages(domain, address, size, 0);
}
