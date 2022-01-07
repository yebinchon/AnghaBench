
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_aux {int dummy; } ;
typedef enum i2caux_engine_type { ____Placeholder_i2caux_engine_type } i2caux_engine_type ;


 int I2CAUX_ENGINE_TYPE_AUX ;

enum i2caux_engine_type get_engine_type(
  const struct dce_aux *engine)
{
 return I2CAUX_ENGINE_TYPE_AUX;
}
