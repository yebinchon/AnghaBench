
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int fsi_master_break (struct fsi_master*,int ) ;
 struct fsi_master* to_fsi_master (struct device*) ;

__attribute__((used)) static ssize_t master_break_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct fsi_master *master = to_fsi_master(dev);

 fsi_master_break(master, 0);

 return count;
}
