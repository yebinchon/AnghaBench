
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_device {struct dispc_ops const* dispc_ops; } ;
struct dispc_ops {int dummy; } ;



const struct dispc_ops *dispc_get_ops(struct dss_device *dss)
{
 return dss->dispc_ops;
}
