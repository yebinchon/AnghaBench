
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_i3c_xfer {unsigned int ncmds; int ret; int node; } ;
struct dw_i3c_master {int dummy; } ;


 int ETIMEDOUT ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int cmds ;
 struct dw_i3c_xfer* kzalloc (int ,int ) ;
 int struct_size (struct dw_i3c_xfer*,int ,unsigned int) ;

__attribute__((used)) static struct dw_i3c_xfer *
dw_i3c_master_alloc_xfer(struct dw_i3c_master *master, unsigned int ncmds)
{
 struct dw_i3c_xfer *xfer;

 xfer = kzalloc(struct_size(xfer, cmds, ncmds), GFP_KERNEL);
 if (!xfer)
  return ((void*)0);

 INIT_LIST_HEAD(&xfer->node);
 xfer->ncmds = ncmds;
 xfer->ret = -ETIMEDOUT;

 return xfer;
}
