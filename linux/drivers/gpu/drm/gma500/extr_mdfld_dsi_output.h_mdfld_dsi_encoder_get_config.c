
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdfld_dsi_encoder {scalar_t__ private; } ;
struct mdfld_dsi_config {int dummy; } ;



__attribute__((used)) static inline struct mdfld_dsi_config *
 mdfld_dsi_encoder_get_config(struct mdfld_dsi_encoder *encoder)
{
 if (!encoder)
  return ((void*)0);
 return (struct mdfld_dsi_config *)encoder->private;
}
