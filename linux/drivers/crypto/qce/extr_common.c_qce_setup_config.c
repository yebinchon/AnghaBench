
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qce_device {int dummy; } ;


 int REG_CONFIG ;
 int REG_STATUS ;
 int qce_config_reg (struct qce_device*,int ) ;
 int qce_write (struct qce_device*,int ,int ) ;

__attribute__((used)) static void qce_setup_config(struct qce_device *qce)
{
 u32 config;


 config = qce_config_reg(qce, 0);


 qce_write(qce, REG_STATUS, 0);
 qce_write(qce, REG_CONFIG, config);
}
