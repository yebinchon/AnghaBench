
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_device {int rstc; } ;


 int reset_control_assert (int ) ;

__attribute__((used)) static void panfrost_reset_fini(struct panfrost_device *pfdev)
{
 reset_control_assert(pfdev->rstc);
}
