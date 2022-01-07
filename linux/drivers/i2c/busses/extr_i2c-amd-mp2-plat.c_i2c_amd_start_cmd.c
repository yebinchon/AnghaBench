
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_i2c_common {int cmd_success; } ;
struct amd_i2c_dev {int cmd_complete; struct amd_i2c_common common; } ;


 int reinit_completion (int *) ;

__attribute__((used)) static void i2c_amd_start_cmd(struct amd_i2c_dev *i2c_dev)
{
 struct amd_i2c_common *i2c_common = &i2c_dev->common;

 reinit_completion(&i2c_dev->cmd_complete);
 i2c_common->cmd_success = 0;
}
