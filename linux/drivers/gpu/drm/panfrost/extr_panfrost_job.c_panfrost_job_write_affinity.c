
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int shader_present; } ;
struct panfrost_device {TYPE_1__ features; } ;


 int JS_AFFINITY_NEXT_HI (int) ;
 int JS_AFFINITY_NEXT_LO (int) ;
 int job_write (struct panfrost_device*,int ,int) ;

__attribute__((used)) static void panfrost_job_write_affinity(struct panfrost_device *pfdev,
     u32 requirements,
     int js)
{
 u64 affinity;






 affinity = pfdev->features.shader_present;

 job_write(pfdev, JS_AFFINITY_NEXT_LO(js), affinity & 0xFFFFFFFF);
 job_write(pfdev, JS_AFFINITY_NEXT_HI(js), affinity >> 32);
}
