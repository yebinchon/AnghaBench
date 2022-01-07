
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gt {int dummy; } ;


 int revoke_mmaps (struct intel_gt*) ;

__attribute__((used)) static void gt_revoke(struct intel_gt *gt)
{
 revoke_mmaps(gt);
}
