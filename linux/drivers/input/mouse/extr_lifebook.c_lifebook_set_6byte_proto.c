
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {int dummy; } ;


 int lifebook_use_6byte_proto ;

__attribute__((used)) static int lifebook_set_6byte_proto(const struct dmi_system_id *d)
{
 lifebook_use_6byte_proto = 1;
 return 1;
}
