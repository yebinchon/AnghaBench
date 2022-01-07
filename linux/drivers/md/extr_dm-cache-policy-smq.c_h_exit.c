
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_hash_table {int buckets; } ;


 int vfree (int ) ;

__attribute__((used)) static void h_exit(struct smq_hash_table *ht)
{
 vfree(ht->buckets);
}
