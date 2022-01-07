
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;


 scalar_t__ AF_INET ;
 int INADDR_ANY ;
 scalar_t__ IPV6_ADDR_ANY ;
 scalar_t__ htonl (int ) ;
 scalar_t__ ipv6_addr_type (int *) ;

__attribute__((used)) static void iw_cm_check_wildcard(struct sockaddr_storage *pm_addr,
     struct sockaddr_storage *cm_addr,
     struct sockaddr_storage *cm_outaddr)
{
 if (pm_addr->ss_family == AF_INET) {
  struct sockaddr_in *pm4_addr = (struct sockaddr_in *)pm_addr;

  if (pm4_addr->sin_addr.s_addr == htonl(INADDR_ANY)) {
   struct sockaddr_in *cm4_addr =
    (struct sockaddr_in *)cm_addr;
   struct sockaddr_in *cm4_outaddr =
    (struct sockaddr_in *)cm_outaddr;

   cm4_outaddr->sin_addr = cm4_addr->sin_addr;
  }
 } else {
  struct sockaddr_in6 *pm6_addr = (struct sockaddr_in6 *)pm_addr;

  if (ipv6_addr_type(&pm6_addr->sin6_addr) == IPV6_ADDR_ANY) {
   struct sockaddr_in6 *cm6_addr =
    (struct sockaddr_in6 *)cm_addr;
   struct sockaddr_in6 *cm6_outaddr =
    (struct sockaddr_in6 *)cm_outaddr;

   cm6_outaddr->sin6_addr = cm6_addr->sin6_addr;
  }
 }
}
