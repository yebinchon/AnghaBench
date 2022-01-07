
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {int flags; } ;


 int DOMAIN_FLAG_STATIC_IDENTITY ;

__attribute__((used)) static inline int domain_type_is_si(struct dmar_domain *domain)
{
 return domain->flags & DOMAIN_FLAG_STATIC_IDENTITY;
}
