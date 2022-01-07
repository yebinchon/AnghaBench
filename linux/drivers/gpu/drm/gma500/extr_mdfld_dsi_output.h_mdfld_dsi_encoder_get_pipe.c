
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdfld_dsi_encoder {int dummy; } ;
struct mdfld_dsi_connector {int pipe; } ;


 struct mdfld_dsi_connector* mdfld_dsi_encoder_get_connector (struct mdfld_dsi_encoder*) ;

__attribute__((used)) static inline int mdfld_dsi_encoder_get_pipe(struct mdfld_dsi_encoder *encoder)
{
 struct mdfld_dsi_connector *connector;

 if (!encoder)
  return -1;

 connector = mdfld_dsi_encoder_get_connector(encoder);
 if (!connector)
  return -1;
 return connector->pipe;
}
