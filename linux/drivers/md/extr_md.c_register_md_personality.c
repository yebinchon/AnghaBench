
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_personality {int list; int level; int name; } ;


 int list_add_tail (int *,int *) ;
 int pers_list ;
 int pers_lock ;
 int pr_debug (char*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int register_md_personality(struct md_personality *p)
{
 pr_debug("md: %s personality registered for level %d\n",
   p->name, p->level);
 spin_lock(&pers_lock);
 list_add_tail(&p->list, &pers_list);
 spin_unlock(&pers_lock);
 return 0;
}
