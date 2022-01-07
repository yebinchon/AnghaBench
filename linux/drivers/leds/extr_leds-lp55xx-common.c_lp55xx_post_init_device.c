
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp55xx_device_config {int (* post_init_device ) (struct lp55xx_chip*) ;} ;
struct lp55xx_chip {struct lp55xx_device_config* cfg; } ;


 int stub1 (struct lp55xx_chip*) ;

__attribute__((used)) static int lp55xx_post_init_device(struct lp55xx_chip *chip)
{
 struct lp55xx_device_config *cfg = chip->cfg;

 if (!cfg->post_init_device)
  return 0;

 return cfg->post_init_device(chip);
}
