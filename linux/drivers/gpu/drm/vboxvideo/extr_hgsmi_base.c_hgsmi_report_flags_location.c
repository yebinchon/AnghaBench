
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hgsmi_host_flags {int dummy; } ;
struct hgsmi_buffer_location {int buf_len; int buf_location; } ;
struct gen_pool {int dummy; } ;


 int ENOMEM ;
 int HGSMI_CC_HOST_FLAGS_LOCATION ;
 int HGSMI_CH_HGSMI ;
 struct hgsmi_buffer_location* hgsmi_buffer_alloc (struct gen_pool*,int,int ,int ) ;
 int hgsmi_buffer_free (struct gen_pool*,struct hgsmi_buffer_location*) ;
 int hgsmi_buffer_submit (struct gen_pool*,struct hgsmi_buffer_location*) ;

int hgsmi_report_flags_location(struct gen_pool *ctx, u32 location)
{
 struct hgsmi_buffer_location *p;

 p = hgsmi_buffer_alloc(ctx, sizeof(*p), HGSMI_CH_HGSMI,
          HGSMI_CC_HOST_FLAGS_LOCATION);
 if (!p)
  return -ENOMEM;

 p->buf_location = location;
 p->buf_len = sizeof(struct hgsmi_host_flags);

 hgsmi_buffer_submit(ctx, p);
 hgsmi_buffer_free(ctx, p);

 return 0;
}
