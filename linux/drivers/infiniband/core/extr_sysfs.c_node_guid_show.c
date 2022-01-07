
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int node_guid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int __be16 ;


 int be16_to_cpu (int ) ;
 struct ib_device* rdma_device_to_ibdev (struct device*) ;
 int sprintf (char*,char*,int,int,int,int) ;

__attribute__((used)) static ssize_t node_guid_show(struct device *device,
         struct device_attribute *attr, char *buf)
{
 struct ib_device *dev = rdma_device_to_ibdev(device);

 return sprintf(buf, "%04x:%04x:%04x:%04x\n",
         be16_to_cpu(((__be16 *) &dev->node_guid)[0]),
         be16_to_cpu(((__be16 *) &dev->node_guid)[1]),
         be16_to_cpu(((__be16 *) &dev->node_guid)[2]),
         be16_to_cpu(((__be16 *) &dev->node_guid)[3]));
}
