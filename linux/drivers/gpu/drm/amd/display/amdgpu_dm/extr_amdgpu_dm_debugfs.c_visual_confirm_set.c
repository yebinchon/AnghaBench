
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_6__ {TYPE_2__* dc; } ;
struct amdgpu_device {TYPE_3__ dm; } ;
typedef enum visual_confirm { ____Placeholder_visual_confirm } visual_confirm ;
struct TYPE_4__ {int visual_confirm; } ;
struct TYPE_5__ {TYPE_1__ debug; } ;



__attribute__((used)) static int visual_confirm_set(void *data, u64 val)
{
 struct amdgpu_device *adev = data;

 adev->dm.dc->debug.visual_confirm = (enum visual_confirm)val;

 return 0;
}
