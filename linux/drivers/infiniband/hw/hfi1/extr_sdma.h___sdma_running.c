
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ current_state; } ;
struct sdma_engine {TYPE_1__ state; } ;


 scalar_t__ sdma_state_s99_running ;

__attribute__((used)) static inline int __sdma_running(struct sdma_engine *engine)
{
 return engine->state.current_state == sdma_state_s99_running;
}
