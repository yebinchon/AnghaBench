
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qxl_device {int dummy; } ;


 int ERESTARTSYS ;
 int wait_for_io_cmd_user (struct qxl_device*,int ,long,int) ;

__attribute__((used)) static void wait_for_io_cmd(struct qxl_device *qdev, uint8_t val, long port)
{
 int ret;

restart:
 ret = wait_for_io_cmd_user(qdev, val, port, 0);
 if (ret == -ERESTARTSYS)
  goto restart;
}
