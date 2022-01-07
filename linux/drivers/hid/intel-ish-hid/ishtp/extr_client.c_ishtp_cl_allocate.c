
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_cl_device {int ishtp_dev; } ;
struct ishtp_cl {int dummy; } ;


 int GFP_KERNEL ;
 int ishtp_cl_init (struct ishtp_cl*,int ) ;
 struct ishtp_cl* kmalloc (int,int ) ;

struct ishtp_cl *ishtp_cl_allocate(struct ishtp_cl_device *cl_device)
{
 struct ishtp_cl *cl;

 cl = kmalloc(sizeof(struct ishtp_cl), GFP_KERNEL);
 if (!cl)
  return ((void*)0);

 ishtp_cl_init(cl, cl_device->ishtp_dev);
 return cl;
}
