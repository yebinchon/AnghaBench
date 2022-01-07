
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int bottom; int right; int top; int left; } ;
struct TYPE_6__ {int y; int x; } ;
struct TYPE_8__ {TYPE_3__ destRect; TYPE_2__ srcOrigin; int destScreenId; } ;
struct vmw_kms_sou_bo_blit {TYPE_4__ body; int header; } ;
struct vmw_kms_dirty {int num_hits; int unit_y2; int unit_x2; int unit_y1; int unit_x1; int fb_y; int fb_x; TYPE_1__* unit; struct vmw_kms_sou_bo_blit* cmd; } ;
struct TYPE_5__ {int unit; } ;


 int SVGA_CMD_BLIT_GMRFB_TO_SCREEN ;

__attribute__((used)) static void vmw_sou_bo_clip(struct vmw_kms_dirty *dirty)
{
 struct vmw_kms_sou_bo_blit *blit = dirty->cmd;

 blit += dirty->num_hits;
 blit->header = SVGA_CMD_BLIT_GMRFB_TO_SCREEN;
 blit->body.destScreenId = dirty->unit->unit;
 blit->body.srcOrigin.x = dirty->fb_x;
 blit->body.srcOrigin.y = dirty->fb_y;
 blit->body.destRect.left = dirty->unit_x1;
 blit->body.destRect.top = dirty->unit_y1;
 blit->body.destRect.right = dirty->unit_x2;
 blit->body.destRect.bottom = dirty->unit_y2;
 dirty->num_hits++;
}
