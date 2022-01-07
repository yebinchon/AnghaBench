
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {char* name; } ;
struct ib_gid_attr {int ndev; } ;


 size_t EINVAL ;
 struct net_device* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 size_t sprintf (char*,char*,char*) ;

__attribute__((used)) static size_t print_ndev(const struct ib_gid_attr *gid_attr, char *buf)
{
 struct net_device *ndev;
 size_t ret = -EINVAL;

 rcu_read_lock();
 ndev = rcu_dereference(gid_attr->ndev);
 if (ndev)
  ret = sprintf(buf, "%s\n", ndev->name);
 rcu_read_unlock();
 return ret;
}
