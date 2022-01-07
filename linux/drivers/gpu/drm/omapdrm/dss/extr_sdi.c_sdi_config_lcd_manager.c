
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stallmode; int fifohandcheck; int video_port_width; int lcden_sig_polarity; int io_pad_mode; } ;
struct sdi_device {TYPE_1__ mgr_config; int output; } ;


 int DSS_IO_PAD_MODE_BYPASS ;
 int dss_mgr_set_lcd_config (int *,TYPE_1__*) ;

__attribute__((used)) static void sdi_config_lcd_manager(struct sdi_device *sdi)
{
 sdi->mgr_config.io_pad_mode = DSS_IO_PAD_MODE_BYPASS;

 sdi->mgr_config.stallmode = 0;
 sdi->mgr_config.fifohandcheck = 0;

 sdi->mgr_config.video_port_width = 24;
 sdi->mgr_config.lcden_sig_polarity = 1;

 dss_mgr_set_lcd_config(&sdi->output, &sdi->mgr_config);
}
