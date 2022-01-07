
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_cl_rb {scalar_t__ buf_idx; struct ishtp_cl* cl; int list; } ;
struct ishtp_cl {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct ishtp_cl_rb* kzalloc (int,int ) ;

struct ishtp_cl_rb *ishtp_io_rb_init(struct ishtp_cl *cl)
{
 struct ishtp_cl_rb *rb;

 rb = kzalloc(sizeof(struct ishtp_cl_rb), GFP_KERNEL);
 if (!rb)
  return ((void*)0);

 INIT_LIST_HEAD(&rb->list);
 rb->cl = cl;
 rb->buf_idx = 0;
 return rb;
}
