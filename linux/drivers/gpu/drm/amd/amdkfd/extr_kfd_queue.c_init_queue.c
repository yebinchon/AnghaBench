
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_properties {int dummy; } ;
struct queue {int properties; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct queue* kzalloc (int,int ) ;
 int memcpy (int *,struct queue_properties const*,int) ;

int init_queue(struct queue **q, const struct queue_properties *properties)
{
 struct queue *tmp_q;

 tmp_q = kzalloc(sizeof(*tmp_q), GFP_KERNEL);
 if (!tmp_q)
  return -ENOMEM;

 memcpy(&tmp_q->properties, properties, sizeof(*properties));

 *q = tmp_q;
 return 0;
}
