
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ delay; int link; } ;
struct i915_request {TYPE_1__ mock; } ;


 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static int mock_request_alloc(struct i915_request *request)
{
 INIT_LIST_HEAD(&request->mock.link);
 request->mock.delay = 0;

 return 0;
}
