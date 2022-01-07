
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_wa_list {char const* name; char const* engine_name; } ;



__attribute__((used)) static void wa_init_start(struct i915_wa_list *wal, const char *name, const char *engine_name)
{
 wal->name = name;
 wal->engine_name = engine_name;
}
