
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_context {int dummy; } ;


 unsigned long long ktime_get_raw_ns () ;

__attribute__((used)) static inline unsigned long long dm_get_timestamp(struct dc_context *ctx)
{
 return ktime_get_raw_ns();
}
