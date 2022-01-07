
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mdp5_kms {TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int DRM_DEV_INFO (struct device*,char*,int ,int ) ;
 int FIELD (int ,int ) ;
 int MDP5_HW_VERSION_MAJOR ;
 int MDP5_HW_VERSION_MINOR ;
 int REG_MDP5_HW_VERSION ;
 int mdp5_read (struct mdp5_kms*,int ) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;

__attribute__((used)) static void read_mdp_hw_revision(struct mdp5_kms *mdp5_kms,
     u32 *major, u32 *minor)
{
 struct device *dev = &mdp5_kms->pdev->dev;
 u32 version;

 pm_runtime_get_sync(dev);
 version = mdp5_read(mdp5_kms, REG_MDP5_HW_VERSION);
 pm_runtime_put_sync(dev);

 *major = FIELD(version, MDP5_HW_VERSION_MAJOR);
 *minor = FIELD(version, MDP5_HW_VERSION_MINOR);

 DRM_DEV_INFO(dev, "MDP5 version v%d.%d", *major, *minor);
}
