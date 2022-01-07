
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;


 scalar_t__ cma_loopback_addr (struct sockaddr const*) ;
 scalar_t__ cma_zero_addr (struct sockaddr const*) ;

__attribute__((used)) static inline bool cma_any_addr(const struct sockaddr *addr)
{
 return cma_zero_addr(addr) || cma_loopback_addr(addr);
}
