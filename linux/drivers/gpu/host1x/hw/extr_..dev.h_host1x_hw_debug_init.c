
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host1x {TYPE_1__* debug_op; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int (* debug_init ) (struct dentry*) ;} ;


 int stub1 (struct dentry*) ;

__attribute__((used)) static inline void host1x_hw_debug_init(struct host1x *host, struct dentry *de)
{
 if (host->debug_op && host->debug_op->debug_init)
  host->debug_op->debug_init(de);
}
