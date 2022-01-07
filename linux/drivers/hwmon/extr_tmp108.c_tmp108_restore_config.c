
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmp108 {int orig_config; int regmap; } ;


 int TMP108_REG_CONF ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void tmp108_restore_config(void *data)
{
 struct tmp108 *tmp108 = data;

 regmap_write(tmp108->regmap, TMP108_REG_CONF, tmp108->orig_config);
}
