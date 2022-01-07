
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii8620_mt_msg {int node; } ;
struct sii8620 {int mt_queue; int error; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct sii8620_mt_msg* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct sii8620_mt_msg *sii8620_mt_msg_new(struct sii8620 *ctx)
{
 struct sii8620_mt_msg *msg = kzalloc(sizeof(*msg), GFP_KERNEL);

 if (!msg)
  ctx->error = -ENOMEM;
 else
  list_add_tail(&msg->node, &ctx->mt_queue);

 return msg;
}
