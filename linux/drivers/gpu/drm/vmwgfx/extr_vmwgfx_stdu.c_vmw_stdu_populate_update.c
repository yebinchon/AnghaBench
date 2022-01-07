
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* h; void* w; void* y; void* x; } ;
struct TYPE_5__ {int stid; TYPE_1__ rect; } ;
struct TYPE_6__ {int size; int id; } ;
struct vmw_stdu_update {TYPE_2__ body; TYPE_3__ header; } ;
typedef void* s32 ;


 int SVGA_3D_CMD_UPDATE_GB_SCREENTARGET ;

__attribute__((used)) static void vmw_stdu_populate_update(void *cmd, int unit,
         s32 left, s32 right, s32 top, s32 bottom)
{
 struct vmw_stdu_update *update = cmd;

 update->header.id = SVGA_3D_CMD_UPDATE_GB_SCREENTARGET;
 update->header.size = sizeof(update->body);

 update->body.stid = unit;
 update->body.rect.x = left;
 update->body.rect.y = top;
 update->body.rect.w = right - left;
 update->body.rect.h = bottom - top;
}
