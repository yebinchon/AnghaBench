
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mdp5_kms {int dummy; } ;
struct mdp5_encoder {TYPE_1__* intf; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int num; } ;


 int REG_MDP5_INTF_FRAME_COUNT (int) ;
 struct mdp5_kms* get_kms (struct drm_encoder*) ;
 int mdp5_read (struct mdp5_kms*,int ) ;
 struct mdp5_encoder* to_mdp5_encoder (struct drm_encoder*) ;

u32 mdp5_encoder_get_framecount(struct drm_encoder *encoder)
{
 struct mdp5_encoder *mdp5_encoder = to_mdp5_encoder(encoder);
 struct mdp5_kms *mdp5_kms = get_kms(encoder);
 int intf = mdp5_encoder->intf->num;

 return mdp5_read(mdp5_kms, REG_MDP5_INTF_FRAME_COUNT(intf));
}
