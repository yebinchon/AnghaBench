
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vbva_conf32 {int value; int index; } ;
struct gen_pool {int dummy; } ;


 int ENOMEM ;
 int HGSMI_CH_VBVA ;
 int U32_MAX ;
 int VBVA_QUERY_CONF32 ;
 struct vbva_conf32* hgsmi_buffer_alloc (struct gen_pool*,int,int ,int ) ;
 int hgsmi_buffer_free (struct gen_pool*,struct vbva_conf32*) ;
 int hgsmi_buffer_submit (struct gen_pool*,struct vbva_conf32*) ;

int hgsmi_query_conf(struct gen_pool *ctx, u32 index, u32 *value_ret)
{
 struct vbva_conf32 *p;

 p = hgsmi_buffer_alloc(ctx, sizeof(*p), HGSMI_CH_VBVA,
          VBVA_QUERY_CONF32);
 if (!p)
  return -ENOMEM;

 p->index = index;
 p->value = U32_MAX;

 hgsmi_buffer_submit(ctx, p);

 *value_ret = p->value;

 hgsmi_buffer_free(ctx, p);

 return 0;
}
