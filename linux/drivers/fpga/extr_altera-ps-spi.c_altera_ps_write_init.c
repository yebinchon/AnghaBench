
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpga_manager {int dev; struct altera_ps_conf* priv; } ;
struct fpga_image_info {int flags; } ;
struct altera_ps_conf {int info_flags; TYPE_1__* data; int status; int config; } ;
struct TYPE_2__ {int status_wait_min_us; int status_wait_max_us; int t_st2ck_us; int t_cfg_us; } ;


 int EINVAL ;
 int EIO ;
 int FPGA_MGR_PARTIAL_RECONFIG ;
 int altera_ps_delay (int ) ;
 int dev_err (int *,char*) ;
 int gpiod_get_value_cansleep (int ) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int altera_ps_write_init(struct fpga_manager *mgr,
    struct fpga_image_info *info,
    const char *buf, size_t count)
{
 struct altera_ps_conf *conf = mgr->priv;
 int min, max, waits;
 int i;

 conf->info_flags = info->flags;

 if (info->flags & FPGA_MGR_PARTIAL_RECONFIG) {
  dev_err(&mgr->dev, "Partial reconfiguration not supported.\n");
  return -EINVAL;
 }

 gpiod_set_value_cansleep(conf->config, 1);


 altera_ps_delay(conf->data->t_cfg_us);

 if (!gpiod_get_value_cansleep(conf->status)) {
  dev_err(&mgr->dev, "Status pin failed to show a reset\n");
  return -EIO;
 }

 gpiod_set_value_cansleep(conf->config, 0);

 min = conf->data->status_wait_min_us;
 max = conf->data->status_wait_max_us;
 waits = max / min;
 if (max % min)
  waits++;


 for (i = 0; i < waits; i++) {
  usleep_range(min, min + 10);
  if (!gpiod_get_value_cansleep(conf->status)) {

   altera_ps_delay(conf->data->t_st2ck_us);
   return 0;
  }
 }

 dev_err(&mgr->dev, "Status pin not ready.\n");
 return -EIO;
}
