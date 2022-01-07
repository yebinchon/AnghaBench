
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int emit_config_values; int set_config_value; int allow_migrations; int tick; int residency; int get_hint; int invalidate_mapping; int load_mapping; int clear_dirty; int set_dirty; int complete_background_work; int get_background_work; int lookup_with_work; int lookup; int destroy; } ;
struct smq_policy {TYPE_1__ policy; } ;


 int mq_emit_config_values ;
 int mq_set_config_value ;
 int smq_allow_migrations ;
 int smq_clear_dirty ;
 int smq_complete_background_work ;
 int smq_destroy ;
 int smq_get_background_work ;
 int smq_get_hint ;
 int smq_invalidate_mapping ;
 int smq_load_mapping ;
 int smq_lookup ;
 int smq_lookup_with_work ;
 int smq_residency ;
 int smq_set_dirty ;
 int smq_tick ;

__attribute__((used)) static void init_policy_functions(struct smq_policy *mq, bool mimic_mq)
{
 mq->policy.destroy = smq_destroy;
 mq->policy.lookup = smq_lookup;
 mq->policy.lookup_with_work = smq_lookup_with_work;
 mq->policy.get_background_work = smq_get_background_work;
 mq->policy.complete_background_work = smq_complete_background_work;
 mq->policy.set_dirty = smq_set_dirty;
 mq->policy.clear_dirty = smq_clear_dirty;
 mq->policy.load_mapping = smq_load_mapping;
 mq->policy.invalidate_mapping = smq_invalidate_mapping;
 mq->policy.get_hint = smq_get_hint;
 mq->policy.residency = smq_residency;
 mq->policy.tick = smq_tick;
 mq->policy.allow_migrations = smq_allow_migrations;

 if (mimic_mq) {
  mq->policy.set_config_value = mq_set_config_value;
  mq->policy.emit_config_values = mq_emit_config_values;
 }
}
