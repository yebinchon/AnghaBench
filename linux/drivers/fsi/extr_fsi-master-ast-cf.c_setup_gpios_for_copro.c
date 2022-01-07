
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_acf {int gpio_data; int gpio_clk; int dev; int gpio_tra_bit; int gpio_tra_dreg; int gpio_tra_vreg; int gpio_trans; int gpio_dat_bit; int gpio_dat_dreg; int gpio_dat_vreg; int gpio_clk_bit; int gpio_clk_dreg; int gpio_clk_vreg; int gpio_enable; int gpio_mux; } ;


 int aspeed_gpio_copro_grab_gpio (int ,int *,int *,int *) ;
 int aspeed_gpio_copro_release_gpio (int ) ;
 int dev_err (int ,char*) ;
 int gpiod_direction_output (int ,int) ;

__attribute__((used)) static int setup_gpios_for_copro(struct fsi_master_acf *master)
{

 int rc;


 gpiod_direction_output(master->gpio_mux, 1);
 gpiod_direction_output(master->gpio_enable, 1);


 rc = aspeed_gpio_copro_grab_gpio(master->gpio_clk, &master->gpio_clk_vreg,
      &master->gpio_clk_dreg, &master->gpio_clk_bit);
 if (rc) {
  dev_err(master->dev, "failed to assign clock gpio to coprocessor\n");
  return rc;
 }
 rc = aspeed_gpio_copro_grab_gpio(master->gpio_data, &master->gpio_dat_vreg,
      &master->gpio_dat_dreg, &master->gpio_dat_bit);
 if (rc) {
  dev_err(master->dev, "failed to assign data gpio to coprocessor\n");
  aspeed_gpio_copro_release_gpio(master->gpio_clk);
  return rc;
 }
 rc = aspeed_gpio_copro_grab_gpio(master->gpio_trans, &master->gpio_tra_vreg,
      &master->gpio_tra_dreg, &master->gpio_tra_bit);
 if (rc) {
  dev_err(master->dev, "failed to assign trans gpio to coprocessor\n");
  aspeed_gpio_copro_release_gpio(master->gpio_clk);
  aspeed_gpio_copro_release_gpio(master->gpio_data);
  return rc;
 }
 return 0;
}
