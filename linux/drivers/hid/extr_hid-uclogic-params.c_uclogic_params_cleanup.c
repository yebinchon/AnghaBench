
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uclogic_params {int frame; int pen; int pen_unused; int desc_ptr; int invalid; } ;


 int kfree (int ) ;
 int memset (struct uclogic_params*,int ,int) ;
 int uclogic_params_frame_cleanup (int *) ;
 int uclogic_params_pen_cleanup (int *) ;

void uclogic_params_cleanup(struct uclogic_params *params)
{
 if (!params->invalid) {
  kfree(params->desc_ptr);
  if (!params->pen_unused)
   uclogic_params_pen_cleanup(&params->pen);
  uclogic_params_frame_cleanup(&params->frame);
  memset(params, 0, sizeof(*params));
 }
}
