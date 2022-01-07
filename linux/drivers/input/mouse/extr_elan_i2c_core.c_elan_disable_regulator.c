
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elan_tp_data {int vcc; } ;


 int regulator_disable (int ) ;

__attribute__((used)) static void elan_disable_regulator(void *_data)
{
 struct elan_tp_data *data = _data;

 regulator_disable(data->vcc);
}
