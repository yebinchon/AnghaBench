
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_slave {int t_send_delay; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct fsi_slave* to_fsi_slave (struct device*) ;

__attribute__((used)) static ssize_t slave_send_echo_show(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct fsi_slave *slave = to_fsi_slave(dev);

 return sprintf(buf, "%u\n", slave->t_send_delay);
}
