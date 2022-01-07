
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_fabric_configfs {int dummy; } ;
struct se_wwn {int dummy; } ;
struct config_group {int dummy; } ;


 int EINVAL ;
 struct se_wwn* ERR_PTR (int ) ;
 scalar_t__ srpt_lookup_wwn (char const*) ;

__attribute__((used)) static struct se_wwn *srpt_make_tport(struct target_fabric_configfs *tf,
          struct config_group *group,
          const char *name)
{
 return srpt_lookup_wwn(name) ? : ERR_PTR(-EINVAL);
}
