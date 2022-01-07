
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_slave {int id; int link; struct fsi_master* master; } ;
struct fsi_master {int (* term ) (struct fsi_master*,int ,int ) ;} ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t ENODEV ;
 int stub1 (struct fsi_master*,int ,int ) ;
 struct fsi_slave* to_fsi_slave (struct device*) ;

__attribute__((used)) static ssize_t send_term_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct fsi_slave *slave = to_fsi_slave(dev);
 struct fsi_master *master = slave->master;

 if (!master->term)
  return -ENODEV;

 master->term(master, slave->link, slave->id);
 return count;
}
