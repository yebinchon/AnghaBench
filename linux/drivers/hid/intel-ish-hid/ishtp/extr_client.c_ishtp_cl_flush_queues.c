
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_cl {int dev; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int ishtp_read_list_flush (struct ishtp_cl*) ;

int ishtp_cl_flush_queues(struct ishtp_cl *cl)
{
 if (WARN_ON(!cl || !cl->dev))
  return -EINVAL;

 ishtp_read_list_flush(cl);

 return 0;
}
