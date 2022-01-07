
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_i2c_xport {int supplies; } ;


 int ARRAY_SIZE (int ) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static void rmi_i2c_regulator_bulk_disable(void *data)
{
 struct rmi_i2c_xport *rmi_i2c = data;

 regulator_bulk_disable(ARRAY_SIZE(rmi_i2c->supplies),
          rmi_i2c->supplies);
}
