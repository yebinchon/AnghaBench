
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_set {int dummy; } ;


 int __uuid_write (struct cache_set*) ;
 int bch_journal_meta (struct cache_set*,int *) ;

int bch_uuid_write(struct cache_set *c)
{
 int ret = __uuid_write(c);

 if (!ret)
  bch_journal_meta(c, ((void*)0));

 return ret;
}
