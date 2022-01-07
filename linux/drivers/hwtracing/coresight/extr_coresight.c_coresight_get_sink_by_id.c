
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
struct coresight_device {int dummy; } ;


 struct device* bus_find_device (int *,int *,int *,int ) ;
 int coresight_bustype ;
 int coresight_sink_by_id ;
 struct coresight_device* to_coresight_device (struct device*) ;

struct coresight_device *coresight_get_sink_by_id(u32 id)
{
 struct device *dev = ((void*)0);

 dev = bus_find_device(&coresight_bustype, ((void*)0), &id,
         coresight_sink_by_id);

 return dev ? to_coresight_device(dev) : ((void*)0);
}
