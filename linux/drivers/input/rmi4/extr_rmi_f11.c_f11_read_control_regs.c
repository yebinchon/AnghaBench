
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rmi_function {int dev; struct rmi_device* rmi_dev; } ;
struct rmi_device {int dummy; } ;
struct f11_2d_ctrl {int ctrl0_11; int ctrl0_11_address; } ;


 int RMI_F11_CTRL_REG_COUNT ;
 int dev_err (int *,char*,int) ;
 int rmi_read_block (struct rmi_device*,int ,int ,int ) ;

__attribute__((used)) static int f11_read_control_regs(struct rmi_function *fn,
    struct f11_2d_ctrl *ctrl, u16 ctrl_base_addr) {
 struct rmi_device *rmi_dev = fn->rmi_dev;
 int error = 0;

 ctrl->ctrl0_11_address = ctrl_base_addr;
 error = rmi_read_block(rmi_dev, ctrl_base_addr, ctrl->ctrl0_11,
    RMI_F11_CTRL_REG_COUNT);
 if (error < 0) {
  dev_err(&fn->dev, "Failed to read ctrl0, code: %d.\n", error);
  return error;
 }

 return 0;
}
