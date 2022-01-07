
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srpt_port {int mutex; } ;
struct se_portal_group {int dummy; } ;
struct config_item {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,...) ;
 int srpt_set_enabled (struct srpt_port*,unsigned long) ;
 struct srpt_port* srpt_tpg_to_sport (struct se_portal_group*) ;
 struct se_portal_group* to_tpg (struct config_item*) ;

__attribute__((used)) static ssize_t srpt_tpg_enable_store(struct config_item *item,
  const char *page, size_t count)
{
 struct se_portal_group *se_tpg = to_tpg(item);
 struct srpt_port *sport = srpt_tpg_to_sport(se_tpg);
 unsigned long tmp;
 int ret;

 ret = kstrtoul(page, 0, &tmp);
 if (ret < 0) {
  pr_err("Unable to extract srpt_tpg_store_enable\n");
  return -EINVAL;
 }

 if ((tmp != 0) && (tmp != 1)) {
  pr_err("Illegal value for srpt_tpg_store_enable: %lu\n", tmp);
  return -EINVAL;
 }

 mutex_lock(&sport->mutex);
 srpt_set_enabled(sport, tmp);
 mutex_unlock(&sport->mutex);

 return count;
}
