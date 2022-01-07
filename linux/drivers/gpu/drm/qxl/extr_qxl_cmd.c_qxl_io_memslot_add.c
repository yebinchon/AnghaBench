
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qxl_device {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*,int ) ;
 int QXL_IO_MEMSLOT_ADD_ASYNC ;
 int wait_for_io_cmd (struct qxl_device*,int ,int ) ;

void qxl_io_memslot_add(struct qxl_device *qdev, uint8_t id)
{
 DRM_DEBUG_DRIVER("qxl_memslot_add %d\n", id);
 wait_for_io_cmd(qdev, id, QXL_IO_MEMSLOT_ADD_ASYNC);
}
