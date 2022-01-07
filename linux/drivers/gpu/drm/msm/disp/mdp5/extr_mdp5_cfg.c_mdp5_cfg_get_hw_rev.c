
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_cfg_handler {int revision; } ;



int mdp5_cfg_get_hw_rev(struct mdp5_cfg_handler *cfg_handler)
{
 return cfg_handler->revision;
}
