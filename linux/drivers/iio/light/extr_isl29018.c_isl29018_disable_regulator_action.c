
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl29018_chip {int vcc_reg; } ;


 int pr_err (char*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void isl29018_disable_regulator_action(void *_data)
{
 struct isl29018_chip *chip = _data;
 int err;

 err = regulator_disable(chip->vcc_reg);
 if (err)
  pr_err("failed to disable isl29018's VCC regulator!\n");
}
