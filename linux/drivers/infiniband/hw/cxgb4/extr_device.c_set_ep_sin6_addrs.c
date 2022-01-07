
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int dummy; } ;
struct iw_cm_id {int remote_addr; int local_addr; } ;
struct TYPE_2__ {int remote_addr; int local_addr; struct iw_cm_id* cm_id; } ;
struct c4iw_ep {TYPE_1__ com; } ;


 struct sockaddr_in6 zero_sin6 ;

__attribute__((used)) static void set_ep_sin6_addrs(struct c4iw_ep *ep,
         struct sockaddr_in6 **lsin6,
         struct sockaddr_in6 **rsin6,
         struct sockaddr_in6 **m_lsin6,
         struct sockaddr_in6 **m_rsin6)
{
 struct iw_cm_id *id = ep->com.cm_id;

 *m_lsin6 = (struct sockaddr_in6 *)&ep->com.local_addr;
 *m_rsin6 = (struct sockaddr_in6 *)&ep->com.remote_addr;
 if (id) {
  *lsin6 = (struct sockaddr_in6 *)&id->local_addr;
  *rsin6 = (struct sockaddr_in6 *)&id->remote_addr;
 } else {
  *lsin6 = &zero_sin6;
  *rsin6 = &zero_sin6;
 }
}
