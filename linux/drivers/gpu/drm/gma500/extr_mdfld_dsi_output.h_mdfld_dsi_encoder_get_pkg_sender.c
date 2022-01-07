
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdfld_dsi_encoder {int dummy; } ;
struct mdfld_dsi_config {int dummy; } ;


 struct mdfld_dsi_config* mdfld_dsi_encoder_get_config (struct mdfld_dsi_encoder*) ;
 void* mdfld_dsi_get_pkg_sender (struct mdfld_dsi_config*) ;

__attribute__((used)) static inline void *mdfld_dsi_encoder_get_pkg_sender(
    struct mdfld_dsi_encoder *encoder)
{
 struct mdfld_dsi_config *dsi_config;

 dsi_config = mdfld_dsi_encoder_get_config(encoder);
 if (!dsi_config)
  return ((void*)0);

 return mdfld_dsi_get_pkg_sender(dsi_config);
}
