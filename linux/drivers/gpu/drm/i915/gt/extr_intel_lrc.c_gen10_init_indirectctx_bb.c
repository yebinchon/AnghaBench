
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_engine_cs {int dummy; } ;


 unsigned long CACHELINE_BYTES ;
 void* MI_NOOP ;
 int PIPE_CONTROL_CS_STALL ;
 int * gen8_emit_pipe_control (int *,int ,int ) ;

__attribute__((used)) static u32 *
gen10_init_indirectctx_bb(struct intel_engine_cs *engine, u32 *batch)
{
 int i;







 batch = gen8_emit_pipe_control(batch,
           PIPE_CONTROL_CS_STALL,
           0);
 for (i = 0; i < 10; i++)
  *batch++ = MI_NOOP;


 while ((unsigned long)batch % CACHELINE_BYTES)
  *batch++ = MI_NOOP;

 return batch;
}
