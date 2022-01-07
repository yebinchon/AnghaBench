
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mipi_dsi_host_ops {int dummy; } ;
struct mipi_dsi_device {TYPE_1__* host; } ;
struct TYPE_2__ {struct mipi_dsi_host_ops const* ops; } ;
struct intel_dsi_host {int port; struct mipi_dsi_device* device; TYPE_1__ base; struct intel_dsi* intel_dsi; } ;
struct intel_dsi {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int GFP_KERNEL ;
 int kfree (struct intel_dsi_host*) ;
 void* kzalloc (int,int ) ;

struct intel_dsi_host *intel_dsi_host_init(struct intel_dsi *intel_dsi,
        const struct mipi_dsi_host_ops *funcs,
        enum port port)
{
 struct intel_dsi_host *host;
 struct mipi_dsi_device *device;

 host = kzalloc(sizeof(*host), GFP_KERNEL);
 if (!host)
  return ((void*)0);

 host->base.ops = funcs;
 host->intel_dsi = intel_dsi;
 host->port = port;
 device = kzalloc(sizeof(*device), GFP_KERNEL);
 if (!device) {
  kfree(host);
  return ((void*)0);
 }

 device->host = &host->base;
 host->device = device;

 return host;
}
