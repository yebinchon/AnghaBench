
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_file_private {int ban_score; } ;


 scalar_t__ I915_CLIENT_SCORE_BANNED ;
 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static bool client_is_banned(struct drm_i915_file_private *file_priv)
{
 return atomic_read(&file_priv->ban_score) >= I915_CLIENT_SCORE_BANNED;
}
