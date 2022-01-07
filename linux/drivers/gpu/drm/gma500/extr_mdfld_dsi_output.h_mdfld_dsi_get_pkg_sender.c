
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdfld_dsi_connector {void* pkg_sender; } ;
struct mdfld_dsi_config {struct mdfld_dsi_connector* connector; } ;



__attribute__((used)) static inline void *mdfld_dsi_get_pkg_sender(struct mdfld_dsi_config *config)
{
 struct mdfld_dsi_connector *dsi_connector;

 if (!config)
  return ((void*)0);

 dsi_connector = config->connector;

 if (!dsi_connector)
  return ((void*)0);

 return dsi_connector->pkg_sender;
}
