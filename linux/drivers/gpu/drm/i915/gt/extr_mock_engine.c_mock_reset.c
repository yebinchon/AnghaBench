
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int dummy; } ;


 int GEM_BUG_ON (int) ;

__attribute__((used)) static void mock_reset(struct intel_engine_cs *engine, bool stalled)
{
 GEM_BUG_ON(stalled);
}
