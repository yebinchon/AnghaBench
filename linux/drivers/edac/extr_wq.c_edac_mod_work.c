
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delayed_work {int dummy; } ;


 int mod_delayed_work (int ,struct delayed_work*,unsigned long) ;
 int wq ;

bool edac_mod_work(struct delayed_work *work, unsigned long delay)
{
 return mod_delayed_work(wq, work, delay);
}
