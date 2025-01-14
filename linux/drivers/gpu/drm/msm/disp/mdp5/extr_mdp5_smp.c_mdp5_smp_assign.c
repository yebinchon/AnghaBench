
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct mdp5_smp_state {int assigned; } ;
struct mdp5_smp {int dummy; } ;
struct mdp5_kms {struct drm_device* dev; } ;
struct drm_device {int dev; } ;
typedef enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;


 int DBG (char*,int ,int,int) ;
 int DRM_DEV_ERROR (int ,char*,int,int) ;
 struct mdp5_kms* get_kms (struct mdp5_smp*) ;
 int pipe2client (int,int) ;
 int pipe2name (int) ;
 int pipe2nclients (int) ;
 int smp_request_block (struct mdp5_smp*,struct mdp5_smp_state*,int ,int) ;

int mdp5_smp_assign(struct mdp5_smp *smp, struct mdp5_smp_state *state,
  enum mdp5_pipe pipe, uint32_t blkcfg)
{
 struct mdp5_kms *mdp5_kms = get_kms(smp);
 struct drm_device *dev = mdp5_kms->dev;
 int i, ret;

 for (i = 0; i < pipe2nclients(pipe); i++) {
  u32 cid = pipe2client(pipe, i);
  int n = blkcfg & 0xff;

  if (!n)
   continue;

  DBG("%s[%d]: request %d SMP blocks", pipe2name(pipe), i, n);
  ret = smp_request_block(smp, state, cid, n);
  if (ret) {
   DRM_DEV_ERROR(dev->dev, "Cannot allocate %d SMP blocks: %d\n",
     n, ret);
   return ret;
  }

  blkcfg >>= 8;
 }

 state->assigned |= (1 << pipe);

 return 0;
}
