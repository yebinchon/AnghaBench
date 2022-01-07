
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qxl_release {int release_offset; int release_bo; } ;
struct qxl_device {int command_ring; } ;
struct qxl_command {int data; int type; } ;


 int qxl_bo_physical_address (struct qxl_device*,int ,int ) ;
 int qxl_ring_push (int ,struct qxl_command*,int) ;

int
qxl_push_command_ring_release(struct qxl_device *qdev, struct qxl_release *release,
         uint32_t type, bool interruptible)
{
 struct qxl_command cmd;

 cmd.type = type;
 cmd.data = qxl_bo_physical_address(qdev, release->release_bo, release->release_offset);

 return qxl_ring_push(qdev->command_ring, &cmd, interruptible);
}
