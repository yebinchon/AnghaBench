
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_execbuffer {TYPE_1__* args; int engine; } ;
struct TYPE_2__ {scalar_t__ batch_len; } ;


 scalar_t__ intel_engine_requires_cmd_parser (int ) ;
 scalar_t__ intel_engine_using_cmd_parser (int ) ;

__attribute__((used)) static inline bool eb_use_cmdparser(const struct i915_execbuffer *eb)
{
 return intel_engine_requires_cmd_parser(eb->engine) ||
  (intel_engine_using_cmd_parser(eb->engine) &&
   eb->args->batch_len);
}
