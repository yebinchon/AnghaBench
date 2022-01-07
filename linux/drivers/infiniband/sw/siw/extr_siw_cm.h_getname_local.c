
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* ops; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int (* getname ) (struct socket*,struct sockaddr*,int ) ;} ;


 int stub1 (struct socket*,struct sockaddr*,int ) ;

__attribute__((used)) static inline int getname_local(struct socket *s, struct sockaddr_storage *a)
{
 return s->ops->getname(s, (struct sockaddr *)a, 0);
}
