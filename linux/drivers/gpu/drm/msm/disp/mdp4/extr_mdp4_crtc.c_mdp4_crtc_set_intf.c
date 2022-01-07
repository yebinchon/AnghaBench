
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mdp4_kms {int dummy; } ;
struct mdp4_crtc {int dma; int mixer; int name; } ;
struct drm_crtc {int dummy; } ;
typedef enum mdp4_intf { ____Placeholder_mdp4_intf } mdp4_intf ;


 int DBG (char*,int ,int ) ;



 int INTF_DSI_CMD ;
 int INTF_DSI_VIDEO ;
 int MDP4_DISP_INTF_SEL_DSI_CMD ;
 int MDP4_DISP_INTF_SEL_DSI_VIDEO ;
 int MDP4_DISP_INTF_SEL_EXT (int) ;
 int MDP4_DISP_INTF_SEL_EXT__MASK ;
 int MDP4_DISP_INTF_SEL_PRIM (int) ;
 int MDP4_DISP_INTF_SEL_PRIM__MASK ;
 int MDP4_DISP_INTF_SEL_SEC (int) ;
 int MDP4_DISP_INTF_SEL_SEC__MASK ;
 int REG_MDP4_DISP_INTF_SEL ;
 int blend_setup (struct drm_crtc*) ;
 struct mdp4_kms* get_kms (struct drm_crtc*) ;
 int mdp4_read (struct mdp4_kms*,int ) ;
 int mdp4_write (struct mdp4_kms*,int ,int ) ;
 struct mdp4_crtc* to_mdp4_crtc (struct drm_crtc*) ;

void mdp4_crtc_set_intf(struct drm_crtc *crtc, enum mdp4_intf intf, int mixer)
{
 struct mdp4_crtc *mdp4_crtc = to_mdp4_crtc(crtc);
 struct mdp4_kms *mdp4_kms = get_kms(crtc);
 uint32_t intf_sel;

 intf_sel = mdp4_read(mdp4_kms, REG_MDP4_DISP_INTF_SEL);

 switch (mdp4_crtc->dma) {
 case 129:
  intf_sel &= ~MDP4_DISP_INTF_SEL_PRIM__MASK;
  intf_sel |= MDP4_DISP_INTF_SEL_PRIM(intf);
  break;
 case 128:
  intf_sel &= ~MDP4_DISP_INTF_SEL_SEC__MASK;
  intf_sel |= MDP4_DISP_INTF_SEL_SEC(intf);
  break;
 case 130:
  intf_sel &= ~MDP4_DISP_INTF_SEL_EXT__MASK;
  intf_sel |= MDP4_DISP_INTF_SEL_EXT(intf);
  break;
 }

 if (intf == INTF_DSI_VIDEO) {
  intf_sel &= ~MDP4_DISP_INTF_SEL_DSI_CMD;
  intf_sel |= MDP4_DISP_INTF_SEL_DSI_VIDEO;
 } else if (intf == INTF_DSI_CMD) {
  intf_sel &= ~MDP4_DISP_INTF_SEL_DSI_VIDEO;
  intf_sel |= MDP4_DISP_INTF_SEL_DSI_CMD;
 }

 mdp4_crtc->mixer = mixer;

 blend_setup(crtc);

 DBG("%s: intf_sel=%08x", mdp4_crtc->name, intf_sel);

 mdp4_write(mdp4_kms, REG_MDP4_DISP_INTF_SEL, intf_sel);
}
