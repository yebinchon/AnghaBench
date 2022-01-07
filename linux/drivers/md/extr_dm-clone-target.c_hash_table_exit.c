
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clone {int ht; } ;


 int kvfree (int ) ;

__attribute__((used)) static void hash_table_exit(struct clone *clone)
{
 kvfree(clone->ht);
}
