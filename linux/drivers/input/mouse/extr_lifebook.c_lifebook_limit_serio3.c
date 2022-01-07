
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {int dummy; } ;


 char* desired_serio_phys ;

__attribute__((used)) static int lifebook_limit_serio3(const struct dmi_system_id *d)
{
 desired_serio_phys = "isa0060/serio3";
 return 1;
}
