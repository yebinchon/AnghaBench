
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* ops; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef int s_val ;
struct TYPE_2__ {int (* bind ) (struct socket*,struct sockaddr*,size_t) ;int (* connect ) (struct socket*,struct sockaddr*,size_t,int) ;} ;


 scalar_t__ AF_INET ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int kernel_setsockopt (struct socket*,int ,int ,char*,int) ;
 int stub1 (struct socket*,struct sockaddr*,size_t) ;
 int stub2 (struct socket*,struct sockaddr*,size_t,int) ;

__attribute__((used)) static int kernel_bindconnect(struct socket *s, struct sockaddr *laddr,
         struct sockaddr *raddr)
{
 int rv, flags = 0, s_val = 1;
 size_t size = laddr->sa_family == AF_INET ?
  sizeof(struct sockaddr_in) : sizeof(struct sockaddr_in6);




 rv = kernel_setsockopt(s, SOL_SOCKET, SO_REUSEADDR, (char *)&s_val,
          sizeof(s_val));
 if (rv < 0)
  return rv;

 rv = s->ops->bind(s, laddr, size);
 if (rv < 0)
  return rv;

 rv = s->ops->connect(s, raddr, size, flags);

 return rv < 0 ? rv : 0;
}
