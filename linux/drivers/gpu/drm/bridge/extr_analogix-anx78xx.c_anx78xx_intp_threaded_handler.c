
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct anx78xx {TYPE_1__ connector; int lock; int * map; int powered; } ;
typedef int irqreturn_t ;


 int DRM_ERROR (char*,int) ;
 size_t I2C_IDX_RX_P0 ;
 size_t I2C_IDX_TX_P2 ;
 int IRQ_HANDLED ;
 int SP_COMMON_INT_STATUS4_REG ;
 int SP_DP_INT_STATUS1_REG ;
 int SP_INT_STATUS1_REG ;
 int anx78xx_handle_common_int_4 (struct anx78xx*,unsigned int) ;
 int anx78xx_handle_dp_int_1 (struct anx78xx*,unsigned int) ;
 int anx78xx_handle_hdmi_int_1 (struct anx78xx*,unsigned int) ;
 int drm_helper_hpd_irq_event (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static irqreturn_t anx78xx_intp_threaded_handler(int unused, void *data)
{
 struct anx78xx *anx78xx = data;
 bool event = 0;
 unsigned int irq;
 int err;

 mutex_lock(&anx78xx->lock);

 err = regmap_read(anx78xx->map[I2C_IDX_TX_P2], SP_DP_INT_STATUS1_REG,
     &irq);
 if (err) {
  DRM_ERROR("Failed to read DP interrupt 1 status: %d\n", err);
  goto unlock;
 }

 if (irq)
  anx78xx_handle_dp_int_1(anx78xx, irq);

 err = regmap_read(anx78xx->map[I2C_IDX_TX_P2],
     SP_COMMON_INT_STATUS4_REG, &irq);
 if (err) {
  DRM_ERROR("Failed to read common interrupt 4 status: %d\n",
     err);
  goto unlock;
 }

 if (irq)
  event = anx78xx_handle_common_int_4(anx78xx, irq);


 if (!anx78xx->powered)
  goto unlock;

 err = regmap_read(anx78xx->map[I2C_IDX_RX_P0], SP_INT_STATUS1_REG,
     &irq);
 if (err) {
  DRM_ERROR("Failed to read HDMI int 1 status: %d\n", err);
  goto unlock;
 }

 if (irq)
  anx78xx_handle_hdmi_int_1(anx78xx, irq);

unlock:
 mutex_unlock(&anx78xx->lock);

 if (event)
  drm_helper_hpd_irq_event(anx78xx->connector.dev);

 return IRQ_HANDLED;
}
