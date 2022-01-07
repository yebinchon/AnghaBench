
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_tvout {int * dvo; int * hda; int * hdmi; } ;


 int drm_encoder_cleanup (int *) ;

__attribute__((used)) static void sti_tvout_destroy_encoders(struct sti_tvout *tvout)
{
 if (tvout->hdmi)
  drm_encoder_cleanup(tvout->hdmi);
 tvout->hdmi = ((void*)0);

 if (tvout->hda)
  drm_encoder_cleanup(tvout->hda);
 tvout->hda = ((void*)0);

 if (tvout->dvo)
  drm_encoder_cleanup(tvout->dvo);
 tvout->dvo = ((void*)0);
}
