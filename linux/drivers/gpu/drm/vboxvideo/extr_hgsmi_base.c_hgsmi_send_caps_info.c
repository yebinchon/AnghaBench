
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vbva_caps {scalar_t__ rc; int caps; } ;
struct gen_pool {int dummy; } ;


 int ENOMEM ;
 int HGSMI_CH_VBVA ;
 int VBVA_INFO_CAPS ;
 scalar_t__ VERR_NOT_IMPLEMENTED ;
 int WARN_ON_ONCE (int) ;
 struct vbva_caps* hgsmi_buffer_alloc (struct gen_pool*,int,int ,int ) ;
 int hgsmi_buffer_free (struct gen_pool*,struct vbva_caps*) ;
 int hgsmi_buffer_submit (struct gen_pool*,struct vbva_caps*) ;

int hgsmi_send_caps_info(struct gen_pool *ctx, u32 caps)
{
 struct vbva_caps *p;

 p = hgsmi_buffer_alloc(ctx, sizeof(*p), HGSMI_CH_VBVA, VBVA_INFO_CAPS);
 if (!p)
  return -ENOMEM;

 p->rc = VERR_NOT_IMPLEMENTED;
 p->caps = caps;

 hgsmi_buffer_submit(ctx, p);

 WARN_ON_ONCE(p->rc < 0);

 hgsmi_buffer_free(ctx, p);

 return 0;
}
