
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct drm_crtc {int gamma_size; int * gamma_store; int enabled; TYPE_1__* dev; } ;
struct ast_private {int dummy; } ;
struct TYPE_2__ {struct ast_private* dev_private; } ;


 int ast_load_palette_index (struct ast_private*,int,int,int,int) ;

__attribute__((used)) static void ast_crtc_load_lut(struct drm_crtc *crtc)
{
 struct ast_private *ast = crtc->dev->dev_private;
 u16 *r, *g, *b;
 int i;

 if (!crtc->enabled)
  return;

 r = crtc->gamma_store;
 g = r + crtc->gamma_size;
 b = g + crtc->gamma_size;

 for (i = 0; i < 256; i++)
  ast_load_palette_index(ast, i, *r++ >> 8, *g++ >> 8, *b++ >> 8);
}
