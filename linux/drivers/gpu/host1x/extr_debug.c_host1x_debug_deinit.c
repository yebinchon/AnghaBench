
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x {int dummy; } ;


 int CONFIG_DEBUG_FS ;
 scalar_t__ IS_ENABLED (int ) ;
 int host1x_debugfs_exit (struct host1x*) ;

void host1x_debug_deinit(struct host1x *host1x)
{
 if (IS_ENABLED(CONFIG_DEBUG_FS))
  host1x_debugfs_exit(host1x);
}
