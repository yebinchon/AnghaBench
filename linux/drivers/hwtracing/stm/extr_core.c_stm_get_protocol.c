
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_protocol_driver {int owner; } ;


 int try_module_get (int ) ;

__attribute__((used)) static bool stm_get_protocol(const struct stm_protocol_driver *pdrv)
{
 return try_module_get(pdrv->owner);
}
