
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anx78xx {int * map; } ;


 int DRM_ERROR (char*,int) ;
 size_t I2C_IDX_TX_P2 ;
 int SP_AUDIO_PD ;
 int SP_HDCP_PD ;
 int SP_LINK_PD ;
 int SP_POWERDOWN_CTRL_REG ;
 int SP_VIDEO_PD ;
 int anx78xx_clear_bits (int ,int ,int) ;
 int anx78xx_enable_interrupts (struct anx78xx*) ;
 int anx78xx_poweroff (struct anx78xx*) ;
 int anx78xx_rx_initialization (struct anx78xx*) ;
 int anx78xx_tx_initialization (struct anx78xx*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int anx78xx_start(struct anx78xx *anx78xx)
{
 int err;


 err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P2],
     SP_POWERDOWN_CTRL_REG,
     SP_HDCP_PD | SP_AUDIO_PD | SP_VIDEO_PD |
     SP_LINK_PD);

 err = anx78xx_enable_interrupts(anx78xx);
 if (err) {
  DRM_ERROR("Failed to enable interrupts: %d\n", err);
  goto err_poweroff;
 }

 err = anx78xx_rx_initialization(anx78xx);
 if (err) {
  DRM_ERROR("Failed receiver initialization: %d\n", err);
  goto err_poweroff;
 }

 err = anx78xx_tx_initialization(anx78xx);
 if (err) {
  DRM_ERROR("Failed transmitter initialization: %d\n", err);
  goto err_poweroff;
 }





 usleep_range(10000, 15000);

 return 0;

err_poweroff:
 DRM_ERROR("Failed SlimPort transmitter initialization: %d\n", err);
 anx78xx_poweroff(anx78xx);

 return err;
}
