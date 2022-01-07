
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {char* node_desc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct ib_device* rdma_device_to_ibdev (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t node_desc_show(struct device *device,
         struct device_attribute *attr, char *buf)
{
 struct ib_device *dev = rdma_device_to_ibdev(device);

 return sprintf(buf, "%.64s\n", dev->node_desc);
}
