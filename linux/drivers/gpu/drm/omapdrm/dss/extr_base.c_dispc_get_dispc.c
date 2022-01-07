
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_device {struct dispc_device* dispc; } ;
struct dispc_device {int dummy; } ;



struct dispc_device *dispc_get_dispc(struct dss_device *dss)
{
 return dss->dispc;
}
