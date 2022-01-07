
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct drm_framebuffer {int* pitches; } ;
struct drm_crtc {TYPE_2__* primary; TYPE_1__* dev; } ;
struct ast_private {int dummy; } ;
struct TYPE_4__ {struct drm_framebuffer* fb; } ;
struct TYPE_3__ {struct ast_private* dev_private; } ;


 int AST_IO_CRTC_PORT ;
 int ast_set_index_reg (struct ast_private*,int ,int,int) ;

__attribute__((used)) static void ast_set_offset_reg(struct drm_crtc *crtc)
{
 struct ast_private *ast = crtc->dev->dev_private;
 const struct drm_framebuffer *fb = crtc->primary->fb;

 u16 offset;

 offset = fb->pitches[0] >> 3;
 ast_set_index_reg(ast, AST_IO_CRTC_PORT, 0x13, (offset & 0xff));
 ast_set_index_reg(ast, AST_IO_CRTC_PORT, 0xb0, (offset >> 8) & 0x3f);
}
