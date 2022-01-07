
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xlr_i2c_private {TYPE_1__* cfg; } ;
struct TYPE_2__ {int status_busy; } ;


 int XLR_I2C_BUS_BUSY ;

__attribute__((used)) static int xlr_i2c_busy(struct xlr_i2c_private *priv, u32 status)
{
 return (status & XLR_I2C_BUS_BUSY) == priv->cfg->status_busy;
}
