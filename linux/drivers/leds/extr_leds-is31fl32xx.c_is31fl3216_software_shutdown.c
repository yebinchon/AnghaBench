
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct is31fl32xx_priv {int dummy; } ;


 int IS31FL3216_CONFIG_REG ;
 int IS31FL3216_CONFIG_SSD_DISABLE ;
 int IS31FL3216_CONFIG_SSD_ENABLE ;
 int is31fl32xx_write (struct is31fl32xx_priv*,int ,int ) ;

__attribute__((used)) static int is31fl3216_software_shutdown(struct is31fl32xx_priv *priv,
     bool enable)
{
 u8 value = enable ? IS31FL3216_CONFIG_SSD_ENABLE :
       IS31FL3216_CONFIG_SSD_DISABLE;

 return is31fl32xx_write(priv, IS31FL3216_CONFIG_REG, value);
}
