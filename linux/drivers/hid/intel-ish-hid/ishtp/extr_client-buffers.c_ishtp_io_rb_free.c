
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ishtp_cl_rb* data; } ;
struct ishtp_cl_rb {TYPE_1__ buffer; } ;


 int kfree (struct ishtp_cl_rb*) ;

void ishtp_io_rb_free(struct ishtp_cl_rb *rb)
{
 if (rb == ((void*)0))
  return;

 kfree(rb->buffer.data);
 kfree(rb);
}
