
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adreno_rev {int patchid; int minor; int major; int core; } ;
struct TYPE_2__ {int patchid; int minor; int major; int core; } ;
struct adreno_info {TYPE_1__ rev; } ;


 int ARRAY_SIZE (struct adreno_info*) ;
 scalar_t__ _rev_match (int ,int ) ;
 struct adreno_info* gpulist ;

const struct adreno_info *adreno_info(struct adreno_rev rev)
{
 int i;


 for (i = 0; i < ARRAY_SIZE(gpulist); i++) {
  const struct adreno_info *info = &gpulist[i];
  if (_rev_match(info->rev.core, rev.core) &&
    _rev_match(info->rev.major, rev.major) &&
    _rev_match(info->rev.minor, rev.minor) &&
    _rev_match(info->rev.patchid, rev.patchid))
   return info;
 }

 return ((void*)0);
}
