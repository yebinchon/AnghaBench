
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct amdgpu_device {TYPE_2__ virt; } ;
struct TYPE_3__ {int (* get_pp_clk ) (struct amdgpu_device*,int ,char*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int PP_SCLK ;
 int kfree (char*) ;
 char* kzalloc (int ,int ) ;
 int parse_clk (char*,int) ;
 int stub1 (struct amdgpu_device*,int ,char*) ;

uint32_t amdgpu_virt_get_sclk(struct amdgpu_device *adev, bool lowest)
{
 char *buf = ((void*)0);
 uint32_t clk = 0;

 buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 adev->virt.ops->get_pp_clk(adev, PP_SCLK, buf);
 clk = parse_clk(buf, lowest);

 kfree(buf);

 return clk;
}
