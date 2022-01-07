
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_file {TYPE_2__* minor; int master; scalar_t__ is_master; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {scalar_t__ master; } ;


 scalar_t__ drm_lease_owner (int ) ;

bool drm_is_current_master(struct drm_file *fpriv)
{
 return fpriv->is_master && drm_lease_owner(fpriv->master) == fpriv->minor->dev->master;
}
