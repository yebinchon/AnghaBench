
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct n2_crypto {int cwq_list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct n2_crypto* kzalloc (int,int ) ;

__attribute__((used)) static struct n2_crypto *alloc_n2cp(void)
{
 struct n2_crypto *np = kzalloc(sizeof(struct n2_crypto), GFP_KERNEL);

 if (np)
  INIT_LIST_HEAD(&np->cwq_list);

 return np;
}
