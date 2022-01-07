
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_i3c_xfer {int dummy; } ;


 int kfree (struct dw_i3c_xfer*) ;

__attribute__((used)) static void dw_i3c_master_free_xfer(struct dw_i3c_xfer *xfer)
{
 kfree(xfer);
}
