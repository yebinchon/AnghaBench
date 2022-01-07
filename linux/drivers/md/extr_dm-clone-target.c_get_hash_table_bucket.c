
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_table_bucket {int dummy; } ;
struct clone {struct hash_table_bucket* ht; } ;


 int HASH_TABLE_BITS ;
 size_t hash_long (unsigned long,int ) ;

__attribute__((used)) static struct hash_table_bucket *get_hash_table_bucket(struct clone *clone,
             unsigned long region_nr)
{
 return &clone->ht[hash_long(region_nr, HASH_TABLE_BITS)];
}
