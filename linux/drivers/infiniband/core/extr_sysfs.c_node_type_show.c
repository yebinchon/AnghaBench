
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int node_type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
 struct ib_device* rdma_device_to_ibdev (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t node_type_show(struct device *device,
         struct device_attribute *attr, char *buf)
{
 struct ib_device *dev = rdma_device_to_ibdev(device);

 switch (dev->node_type) {
 case 134: return sprintf(buf, "%d: CA\n", dev->node_type);
 case 131: return sprintf(buf, "%d: RNIC\n", dev->node_type);
 case 129: return sprintf(buf, "%d: usNIC\n", dev->node_type);
 case 128: return sprintf(buf, "%d: usNIC UDP\n", dev->node_type);
 case 130: return sprintf(buf, "%d: unspecified\n", dev->node_type);
 case 132: return sprintf(buf, "%d: switch\n", dev->node_type);
 case 133: return sprintf(buf, "%d: router\n", dev->node_type);
 default: return sprintf(buf, "%d: <unknown>\n", dev->node_type);
 }
}
