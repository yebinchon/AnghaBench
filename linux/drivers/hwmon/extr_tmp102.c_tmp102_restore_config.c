
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmp102 {int config_orig; int regmap; } ;


 int TMP102_CONF_REG ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void tmp102_restore_config(void *data)
{
 struct tmp102 *tmp102 = data;

 regmap_write(tmp102->regmap, TMP102_CONF_REG, tmp102->config_orig);
}
