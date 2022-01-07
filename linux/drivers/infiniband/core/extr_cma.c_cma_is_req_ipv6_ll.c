
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct cma_req_info {int listen_addr_storage; } ;


 scalar_t__ AF_INET6 ;
 int IPV6_ADDR_LINKLOCAL ;
 int ipv6_addr_type (int *) ;

__attribute__((used)) static bool cma_is_req_ipv6_ll(const struct cma_req_info *req)
{
 const struct sockaddr *daddr =
   (const struct sockaddr *)&req->listen_addr_storage;
 const struct sockaddr_in6 *daddr6 = (const struct sockaddr_in6 *)daddr;


 return (daddr->sa_family == AF_INET6 &&
  (ipv6_addr_type(&daddr6->sin6_addr) & IPV6_ADDR_LINKLOCAL));
}
