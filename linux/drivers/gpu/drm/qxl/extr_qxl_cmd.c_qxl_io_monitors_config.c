
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_device {int dummy; } ;


 int QXL_IO_MONITORS_CONFIG_ASYNC ;
 int wait_for_io_cmd (struct qxl_device*,int ,int ) ;

void qxl_io_monitors_config(struct qxl_device *qdev)
{
 wait_for_io_cmd(qdev, 0, QXL_IO_MONITORS_CONFIG_ASYNC);
}
