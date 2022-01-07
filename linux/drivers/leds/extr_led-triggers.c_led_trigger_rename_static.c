
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_trigger {char const* name; } ;


 int BUG_ON (int) ;
 int down_write (int *) ;
 int strcpy (char*,char const*) ;
 int triggers_list_lock ;
 int up_write (int *) ;

void led_trigger_rename_static(const char *name, struct led_trigger *trig)
{

 BUG_ON(name == trig->name);

 down_write(&triggers_list_lock);


 strcpy((char *)trig->name, name);
 up_write(&triggers_list_lock);
}
