
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int ss_family; } ;
struct sockaddr_in6 {int sin6_port; int sin6_addr; } ;
struct sockaddr_in {int sin_port; int sin_addr; } ;




 int ntohs (int ) ;
 int pr_debug (char*,char*,int *,int ,int ) ;

void iwpm_print_sockaddr(struct sockaddr_storage *sockaddr, char *msg)
{
 struct sockaddr_in6 *sockaddr_v6;
 struct sockaddr_in *sockaddr_v4;

 switch (sockaddr->ss_family) {
 case 129:
  sockaddr_v4 = (struct sockaddr_in *)sockaddr;
  pr_debug("%s IPV4 %pI4: %u(0x%04X)\n",
   msg, &sockaddr_v4->sin_addr,
   ntohs(sockaddr_v4->sin_port),
   ntohs(sockaddr_v4->sin_port));
  break;
 case 128:
  sockaddr_v6 = (struct sockaddr_in6 *)sockaddr;
  pr_debug("%s IPV6 %pI6: %u(0x%04X)\n",
   msg, &sockaddr_v6->sin6_addr,
   ntohs(sockaddr_v6->sin6_port),
   ntohs(sockaddr_v6->sin6_port));
  break;
 default:
  break;
 }
}
