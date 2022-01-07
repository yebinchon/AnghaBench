
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int sid; } ;
struct TYPE_3__ {int size; int id; } ;
struct vmw_surface_destroy {TYPE_2__ body; TYPE_1__ header; } ;


 int SVGA_3D_CMD_SURFACE_DESTROY ;

__attribute__((used)) static void vmw_surface_destroy_encode(uint32_t id,
           void *cmd_space)
{
 struct vmw_surface_destroy *cmd = (struct vmw_surface_destroy *)
  cmd_space;

 cmd->header.id = SVGA_3D_CMD_SURFACE_DESTROY;
 cmd->header.size = sizeof(cmd->body);
 cmd->body.sid = id;
}
