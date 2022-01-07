
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_cfg {int dummy; } ;
struct mdp5_cfg_handler {struct mdp5_cfg config; } ;



struct mdp5_cfg *mdp5_cfg_get_config(struct mdp5_cfg_handler *cfg_handler)
{
 return &cfg_handler->config;
}
