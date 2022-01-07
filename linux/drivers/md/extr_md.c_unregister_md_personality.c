
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_personality {int list; int name; } ;


 int list_del_init (int *) ;
 int pers_lock ;
 int pr_debug (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int unregister_md_personality(struct md_personality *p)
{
 pr_debug("md: %s personality unregistered\n", p->name);
 spin_lock(&pers_lock);
 list_del_init(&p->list);
 spin_unlock(&pers_lock);
 return 0;
}
