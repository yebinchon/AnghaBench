
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_wa_list {int list; } ;


 int kfree (int ) ;
 int memset (struct i915_wa_list*,int ,int) ;

__attribute__((used)) static inline void intel_wa_list_free(struct i915_wa_list *wal)
{
 kfree(wal->list);
 memset(wal, 0, sizeof(*wal));
}
