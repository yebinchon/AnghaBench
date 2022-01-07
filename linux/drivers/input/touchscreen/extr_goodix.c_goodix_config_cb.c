
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct goodix_ts_data {int firmware_loading_complete; } ;
struct firmware {int dummy; } ;


 int complete_all (int *) ;
 int goodix_configure_dev (struct goodix_ts_data*) ;
 int goodix_send_cfg (struct goodix_ts_data*,struct firmware const*) ;
 int release_firmware (struct firmware const*) ;

__attribute__((used)) static void goodix_config_cb(const struct firmware *cfg, void *ctx)
{
 struct goodix_ts_data *ts = ctx;
 int error;

 if (cfg) {

  error = goodix_send_cfg(ts, cfg);
  if (error)
   goto err_release_cfg;
 }

 goodix_configure_dev(ts);

err_release_cfg:
 release_firmware(cfg);
 complete_all(&ts->firmware_loading_complete);
}
