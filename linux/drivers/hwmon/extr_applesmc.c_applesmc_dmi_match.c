
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {int dummy; } ;



__attribute__((used)) static int applesmc_dmi_match(const struct dmi_system_id *id)
{
 return 1;
}
