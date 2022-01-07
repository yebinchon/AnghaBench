
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; scalar_t__ result; int offset; } ;
struct vbva_enable_ex {TYPE_1__ base; scalar_t__ screen_id; } ;
struct vbva_buf_ctx {int buffer_offset; } ;
struct gen_pool {int dummy; } ;
typedef scalar_t__ s32 ;


 int HGSMI_CH_VBVA ;
 int VBVA_ENABLE ;
 int VBVA_F_ABSOFFSET ;
 int VBVA_F_DISABLE ;
 int VBVA_F_ENABLE ;
 int VBVA_F_EXTENDED ;
 scalar_t__ VERR_NOT_SUPPORTED ;
 struct vbva_enable_ex* hgsmi_buffer_alloc (struct gen_pool*,int,int ,int ) ;
 int hgsmi_buffer_free (struct gen_pool*,struct vbva_enable_ex*) ;
 int hgsmi_buffer_submit (struct gen_pool*,struct vbva_enable_ex*) ;

__attribute__((used)) static bool vbva_inform_host(struct vbva_buf_ctx *vbva_ctx,
        struct gen_pool *ctx, s32 screen, bool enable)
{
 struct vbva_enable_ex *p;
 bool ret;

 p = hgsmi_buffer_alloc(ctx, sizeof(*p), HGSMI_CH_VBVA, VBVA_ENABLE);
 if (!p)
  return 0;

 p->base.flags = enable ? VBVA_F_ENABLE : VBVA_F_DISABLE;
 p->base.offset = vbva_ctx->buffer_offset;
 p->base.result = VERR_NOT_SUPPORTED;
 if (screen >= 0) {
  p->base.flags |= VBVA_F_EXTENDED | VBVA_F_ABSOFFSET;
  p->screen_id = screen;
 }

 hgsmi_buffer_submit(ctx, p);

 if (enable)
  ret = p->base.result >= 0;
 else
  ret = 1;

 hgsmi_buffer_free(ctx, p);

 return ret;
}
