
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_trigger {char const* name; } ;


 int GFP_KERNEL ;
 int kfree (struct led_trigger*) ;
 struct led_trigger* kzalloc (int,int ) ;
 int led_trigger_register (struct led_trigger*) ;
 int pr_warn (char*,char const*,...) ;

void led_trigger_register_simple(const char *name, struct led_trigger **tp)
{
 struct led_trigger *trig;
 int err;

 trig = kzalloc(sizeof(struct led_trigger), GFP_KERNEL);

 if (trig) {
  trig->name = name;
  err = led_trigger_register(trig);
  if (err < 0) {
   kfree(trig);
   trig = ((void*)0);
   pr_warn("LED trigger %s failed to register (%d)\n",
    name, err);
  }
 } else {
  pr_warn("LED trigger %s failed to register (no memory)\n",
   name);
 }
 *tp = trig;
}
