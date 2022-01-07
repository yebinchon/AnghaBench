
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vbva_flush {scalar_t__ reserved; } ;
struct gen_pool {int dummy; } ;


 int HGSMI_CH_VBVA ;
 int VBVA_FLUSH ;
 struct vbva_flush* hgsmi_buffer_alloc (struct gen_pool*,int,int ,int ) ;
 int hgsmi_buffer_free (struct gen_pool*,struct vbva_flush*) ;
 int hgsmi_buffer_submit (struct gen_pool*,struct vbva_flush*) ;

__attribute__((used)) static void vbva_buffer_flush(struct gen_pool *ctx)
{
 struct vbva_flush *p;

 p = hgsmi_buffer_alloc(ctx, sizeof(*p), HGSMI_CH_VBVA, VBVA_FLUSH);
 if (!p)
  return;

 p->reserved = 0;

 hgsmi_buffer_submit(ctx, p);
 hgsmi_buffer_free(ctx, p);
}
