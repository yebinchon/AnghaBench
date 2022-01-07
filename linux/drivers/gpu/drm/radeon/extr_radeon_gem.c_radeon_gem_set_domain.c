
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int resv; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct radeon_bo {scalar_t__ prime_shared_count; TYPE_2__ tbo; } ;
struct drm_gem_object {int dummy; } ;


 long EBUSY ;
 long EINTR ;
 int EINVAL ;
 int HZ ;
 scalar_t__ RADEON_GEM_DOMAIN_CPU ;
 scalar_t__ RADEON_GEM_DOMAIN_VRAM ;
 long dma_resv_wait_timeout_rcu (int ,int,int,int) ;
 struct radeon_bo* gem_to_radeon_bo (struct drm_gem_object*) ;
 int pr_err (char*,long) ;
 int pr_warn (char*) ;

__attribute__((used)) static int radeon_gem_set_domain(struct drm_gem_object *gobj,
     uint32_t rdomain, uint32_t wdomain)
{
 struct radeon_bo *robj;
 uint32_t domain;
 long r;


 robj = gem_to_radeon_bo(gobj);

 domain = wdomain;
 if (!domain) {
  domain = rdomain;
 }
 if (!domain) {

  pr_warn("Set domain without domain !\n");
  return 0;
 }
 if (domain == RADEON_GEM_DOMAIN_CPU) {

  r = dma_resv_wait_timeout_rcu(robj->tbo.base.resv, 1, 1, 30 * HZ);
  if (!r)
   r = -EBUSY;

  if (r < 0 && r != -EINTR) {
   pr_err("Failed to wait for object: %li\n", r);
   return r;
  }
 }
 if (domain == RADEON_GEM_DOMAIN_VRAM && robj->prime_shared_count) {

  return -EINVAL;
 }
 return 0;
}
