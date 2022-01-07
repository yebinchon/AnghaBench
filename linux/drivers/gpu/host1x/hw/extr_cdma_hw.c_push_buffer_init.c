
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct push_buffer {scalar_t__ size; scalar_t__ mapped; } ;


 int host1x_opcode_restart (int ) ;

__attribute__((used)) static void push_buffer_init(struct push_buffer *pb)
{
 *(u32 *)(pb->mapped + pb->size) = host1x_opcode_restart(0);
}
