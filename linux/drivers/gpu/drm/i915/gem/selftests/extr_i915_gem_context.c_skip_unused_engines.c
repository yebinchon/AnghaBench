
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_context {int state; } ;



__attribute__((used)) static bool skip_unused_engines(struct intel_context *ce, void *data)
{
 return !ce->state;
}
