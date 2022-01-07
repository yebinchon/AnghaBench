
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdfld_dsi_encoder {int dummy; } ;
struct mdfld_dsi_connector {int dummy; } ;
struct mdfld_dsi_config {struct mdfld_dsi_connector* connector; } ;


 struct mdfld_dsi_config* mdfld_dsi_encoder_get_config (struct mdfld_dsi_encoder*) ;

__attribute__((used)) static inline struct mdfld_dsi_connector *
 mdfld_dsi_encoder_get_connector(struct mdfld_dsi_encoder *encoder)
{
 struct mdfld_dsi_config *config;

 if (!encoder)
  return ((void*)0);

 config = mdfld_dsi_encoder_get_config(encoder);
 if (!config)
  return ((void*)0);

 return config->connector;
}
