
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_device {scalar_t__ io_base; } ;


 scalar_t__ QXL_IO_FLUSH_RELEASE ;
 int outb (int ,scalar_t__) ;

void qxl_io_flush_release(struct qxl_device *qdev)
{
 outb(0, qdev->io_base + QXL_IO_FLUSH_RELEASE);
}
