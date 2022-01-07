
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii9234 {int * client; } ;


 size_t I2C_CBUS ;
 size_t I2C_HDMI ;
 size_t I2C_TPI ;
 int i2c_unregister_device (int ) ;

__attribute__((used)) static void sii9234_deinit_resources(struct sii9234 *ctx)
{
 i2c_unregister_device(ctx->client[I2C_CBUS]);
 i2c_unregister_device(ctx->client[I2C_HDMI]);
 i2c_unregister_device(ctx->client[I2C_TPI]);
}
