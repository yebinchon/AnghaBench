
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x {int debugfs; } ;


 int debugfs_remove_recursive (int ) ;

__attribute__((used)) static void host1x_debugfs_exit(struct host1x *host1x)
{
 debugfs_remove_recursive(host1x->debugfs);
}
