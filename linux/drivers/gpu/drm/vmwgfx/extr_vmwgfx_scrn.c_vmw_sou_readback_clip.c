
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
struct TYPE_8__ {TYPE_3__ srcRect; TYPE_2__ destOrigin; int srcScreenId; } ;
struct vmw_kms_sou_readback_blit {TYPE_4__ body; int header; } ;
struct vmw_kms_dirty {int num_hits; int unit_y2; int unit_x2; int unit_y1; int unit_x1; int fb_y; int fb_x; TYPE_1__* unit; struct vmw_kms_sou_readback_blit* cmd; } ;
struct TYPE_5__ {int unit; } ;


 int SVGA_CMD_BLIT_SCREEN_TO_GMRFB ;

__attribute__((used)) static void vmw_sou_readback_clip(struct vmw_kms_dirty *dirty)
{
 struct vmw_kms_sou_readback_blit *blit = dirty->cmd;

 blit += dirty->num_hits;
 blit->header = SVGA_CMD_BLIT_SCREEN_TO_GMRFB;
 blit->body.srcScreenId = dirty->unit->unit;
 blit->body.destOrigin.x = dirty->fb_x;
 blit->body.destOrigin.y = dirty->fb_y;
 blit->body.srcRect.left = dirty->unit_x1;
 blit->body.srcRect.top = dirty->unit_y1;
 blit->body.srcRect.right = dirty->unit_x2;
 blit->body.srcRect.bottom = dirty->unit_y2;
 dirty->num_hits++;
}
