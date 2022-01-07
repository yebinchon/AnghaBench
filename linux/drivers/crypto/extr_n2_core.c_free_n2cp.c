
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct n2_crypto* ino_table; } ;
struct n2_crypto {TYPE_1__ cwq_info; } ;


 int kfree (struct n2_crypto*) ;

__attribute__((used)) static void free_n2cp(struct n2_crypto *np)
{
 kfree(np->cwq_info.ino_table);
 np->cwq_info.ino_table = ((void*)0);

 kfree(np);
}
