
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_cfg_handler {int dummy; } ;


 int kfree (struct mdp5_cfg_handler*) ;

void mdp5_cfg_destroy(struct mdp5_cfg_handler *cfg_handler)
{
 kfree(cfg_handler);
}
