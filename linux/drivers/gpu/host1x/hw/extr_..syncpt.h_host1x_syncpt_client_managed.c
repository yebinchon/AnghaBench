
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_syncpt {int client_managed; } ;



__attribute__((used)) static inline bool host1x_syncpt_client_managed(struct host1x_syncpt *sp)
{
 return sp->client_managed;
}
