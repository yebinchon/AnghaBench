
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int u6_addr32; } ;
struct TYPE_4__ {TYPE_1__ in6_u; } ;
struct sockaddr_in6 {TYPE_2__ sin6_addr; void* sin6_port; void* sin6_family; } ;
struct iw_cm_event {int remote_addr; int local_addr; } ;
struct i40iw_cm_node {int rem_addr; int loc_addr; int rem_port; int loc_port; } ;


 void* AF_INET6 ;
 void* htons (int ) ;
 int i40iw_copy_ip_htonl (int ,int ) ;

__attribute__((used)) static inline void i40iw_fill_sockaddr6(struct i40iw_cm_node *cm_node,
     struct iw_cm_event *event)
{
 struct sockaddr_in6 *laddr6 = (struct sockaddr_in6 *)&event->local_addr;
 struct sockaddr_in6 *raddr6 = (struct sockaddr_in6 *)&event->remote_addr;

 laddr6->sin6_family = AF_INET6;
 raddr6->sin6_family = AF_INET6;

 laddr6->sin6_port = htons(cm_node->loc_port);
 raddr6->sin6_port = htons(cm_node->rem_port);

 i40iw_copy_ip_htonl(laddr6->sin6_addr.in6_u.u6_addr32,
       cm_node->loc_addr);
 i40iw_copy_ip_htonl(raddr6->sin6_addr.in6_u.u6_addr32,
       cm_node->rem_addr);
}
