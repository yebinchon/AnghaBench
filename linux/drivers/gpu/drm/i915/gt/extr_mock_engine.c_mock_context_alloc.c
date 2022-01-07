
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct intel_context {int timeline; TYPE_1__* engine; int ring; } ;
struct TYPE_3__ {int gt; } ;


 int ENOMEM ;
 int GEM_BUG_ON (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int intel_timeline_create (int ,int *) ;
 int kfree (TYPE_1__*) ;
 int mock_ring (TYPE_1__*) ;
 int mock_timeline_pin (int ) ;

__attribute__((used)) static int mock_context_alloc(struct intel_context *ce)
{
 ce->ring = mock_ring(ce->engine);
 if (!ce->ring)
  return -ENOMEM;

 GEM_BUG_ON(ce->timeline);
 ce->timeline = intel_timeline_create(ce->engine->gt, ((void*)0));
 if (IS_ERR(ce->timeline)) {
  kfree(ce->engine);
  return PTR_ERR(ce->timeline);
 }

 mock_timeline_pin(ce->timeline);

 return 0;
}
