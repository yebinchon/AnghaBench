
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _name_buckets ;
 int _uuid_buckets ;
 int init_buckets (int ) ;

__attribute__((used)) static int dm_hash_init(void)
{
 init_buckets(_name_buckets);
 init_buckets(_uuid_buckets);
 return 0;
}
