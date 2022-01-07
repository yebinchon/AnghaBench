
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_protocol_driver {int owner; } ;


 int module_put (int ) ;

void stm_put_protocol(const struct stm_protocol_driver *pdrv)
{
 module_put(pdrv->owner);
}
