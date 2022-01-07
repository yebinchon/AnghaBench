
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {char* label; int can_sleep; int names; int ngpio; scalar_t__ base; int * dbg_show; int set_config; int set; int get; int direction_output; int direction_input; int owner; } ;
struct vx855_gpio {struct gpio_chip gpio; } ;


 int NR_VX855_GP ;
 int THIS_MODULE ;
 int vx855gpio_direction_input ;
 int vx855gpio_direction_output ;
 int vx855gpio_get ;
 int vx855gpio_names ;
 int vx855gpio_set ;
 int vx855gpio_set_config ;

__attribute__((used)) static void vx855gpio_gpio_setup(struct vx855_gpio *vg)
{
 struct gpio_chip *c = &vg->gpio;

 c->label = "VX855 South Bridge";
 c->owner = THIS_MODULE;
 c->direction_input = vx855gpio_direction_input;
 c->direction_output = vx855gpio_direction_output;
 c->get = vx855gpio_get;
 c->set = vx855gpio_set;
 c->set_config = vx855gpio_set_config,
 c->dbg_show = ((void*)0);
 c->base = 0;
 c->ngpio = NR_VX855_GP;
 c->can_sleep = 0;
 c->names = vx855gpio_names;
}
