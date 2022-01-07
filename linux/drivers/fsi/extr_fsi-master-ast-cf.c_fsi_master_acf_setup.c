
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct fsi_master_acf {scalar_t__ cvic; scalar_t__ sram; int t_echo_delay; int t_send_delay; int dev; scalar_t__ is_ast2500; } ;


 scalar_t__ CF_STARTED ;
 scalar_t__ ECHO_DLY_REG ;
 int ENODEV ;
 scalar_t__ SEND_DLY_REG ;
 int SRAM_SIZE ;
 int check_firmware_image (struct fsi_master_acf*) ;
 int copro_enable_sw_irq (struct fsi_master_acf*) ;
 int dev_err (int ,char*) ;
 scalar_t__ ioread8 (scalar_t__) ;
 int iowrite8 (int ,scalar_t__) ;
 int load_copro_firmware (struct fsi_master_acf*) ;
 int memset_io (scalar_t__,int ,int ) ;
 int msleep (int) ;
 int release_copro_gpios (struct fsi_master_acf*) ;
 int reset_cf (struct fsi_master_acf*) ;
 int setup_ast2400_cf_maps (struct fsi_master_acf*) ;
 int setup_ast2400_fw_config (struct fsi_master_acf*) ;
 int setup_ast2500_cf_maps (struct fsi_master_acf*) ;
 int setup_ast2500_fw_config (struct fsi_master_acf*) ;
 int setup_gpios_for_copro (struct fsi_master_acf*) ;
 int start_cf (struct fsi_master_acf*) ;

__attribute__((used)) static int fsi_master_acf_setup(struct fsi_master_acf *master)
{
 int timeout, rc;
 uint32_t val;


 reset_cf(master);





 memset_io(master->sram, 0, SRAM_SIZE);


 rc = setup_gpios_for_copro(master);
 if (rc)
  return rc;


 rc = load_copro_firmware(master);
 if (rc)
  return rc;


 rc = check_firmware_image(master);
 if (rc)
  return rc;


 if (master->is_ast2500) {
  setup_ast2500_cf_maps(master);
  setup_ast2500_fw_config(master);
 } else {
  setup_ast2400_cf_maps(master);
  setup_ast2400_fw_config(master);
 }


 start_cf(master);




 for (timeout = 0; timeout < 10; timeout++) {
  val = ioread8(master->sram + CF_STARTED);
  if (val)
   break;
  msleep(1);
 }
 if (!val) {
  dev_err(master->dev, "Coprocessor startup timeout !\n");
  rc = -ENODEV;
  goto err;
 }


 iowrite8(master->t_send_delay, master->sram + SEND_DLY_REG);
 iowrite8(master->t_echo_delay, master->sram + ECHO_DLY_REG);


 if (master->cvic) {
  rc = copro_enable_sw_irq(master);
  if (rc)
   goto err;
 }
 return 0;
 err:

 reset_cf(master);


 release_copro_gpios(master);

 return rc;
}
