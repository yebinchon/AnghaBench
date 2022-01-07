
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uuid_entry {int uuid; } ;
struct cache_set {int nr_uuids; struct uuid_entry* uuids; } ;


 int memcmp (int ,char const*,int) ;

__attribute__((used)) static struct uuid_entry *uuid_find(struct cache_set *c, const char *uuid)
{
 struct uuid_entry *u;

 for (u = c->uuids;
      u < c->uuids + c->nr_uuids; u++)
  if (!memcmp(u->uuid, uuid, 16))
   return u;

 return ((void*)0);
}
