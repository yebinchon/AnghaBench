
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rmi_function {struct rmi_device* rmi_dev; } ;
struct rmi_device {int dummy; } ;
struct f11_2d_sensor_queries {int dummy; } ;
struct f11_2d_ctrl {int ctrl0_11; } ;


 int RMI_F11_CTRL_REG_COUNT ;
 int rmi_write_block (struct rmi_device*,int ,int ,int ) ;

__attribute__((used)) static int f11_write_control_regs(struct rmi_function *fn,
     struct f11_2d_sensor_queries *query,
     struct f11_2d_ctrl *ctrl,
     u16 ctrl_base_addr)
{
 struct rmi_device *rmi_dev = fn->rmi_dev;
 int error;

 error = rmi_write_block(rmi_dev, ctrl_base_addr, ctrl->ctrl0_11,
    RMI_F11_CTRL_REG_COUNT);
 if (error < 0)
  return error;

 return 0;
}
