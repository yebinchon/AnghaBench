
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct drm_connector {int dummy; } ;
typedef scalar_t__ s32 ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_2__ {struct i2c_client* stdp4028_i2c; } ;


 scalar_t__ STDP4028_CON_STATE_CONNECTED ;
 int STDP4028_DPTX_STS_REG ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 int connector_status_unknown ;
 TYPE_1__* ge_b850v3_lvds_ptr ;
 scalar_t__ i2c_smbus_read_word_data (struct i2c_client*,int ) ;

__attribute__((used)) static enum drm_connector_status ge_b850v3_lvds_detect(
  struct drm_connector *connector, bool force)
{
 struct i2c_client *stdp4028_i2c =
   ge_b850v3_lvds_ptr->stdp4028_i2c;
 s32 link_state;

 link_state = i2c_smbus_read_word_data(stdp4028_i2c,
           STDP4028_DPTX_STS_REG);

 if (link_state == STDP4028_CON_STATE_CONNECTED)
  return connector_status_connected;

 if (link_state == 0)
  return connector_status_disconnected;

 return connector_status_unknown;
}
