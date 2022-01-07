
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct gb_host_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* output ) (struct gb_host_device*,void*,int ,int ,int) ;} ;


 int EINVAL ;
 int stub1 (struct gb_host_device*,void*,int ,int ,int) ;

int gb_hd_output(struct gb_host_device *hd, void *req, u16 size, u8 cmd,
   bool async)
{
 if (!hd || !hd->driver || !hd->driver->output)
  return -EINVAL;
 return hd->driver->output(hd, req, size, cmd, async);
}
