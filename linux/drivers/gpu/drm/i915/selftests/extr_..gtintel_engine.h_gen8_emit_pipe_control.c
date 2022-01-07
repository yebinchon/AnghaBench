
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GFX_OP_PIPE_CONTROL (int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static inline u32 *gen8_emit_pipe_control(u32 *batch, u32 flags, u32 offset)
{
 memset(batch, 0, 6 * sizeof(u32));

 batch[0] = GFX_OP_PIPE_CONTROL(6);
 batch[1] = flags;
 batch[2] = offset;

 return batch + 6;
}
