
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rxe_bth {int opcode; } ;



__attribute__((used)) static inline void __bth_set_opcode(void *arg, u8 opcode)
{
 struct rxe_bth *bth = arg;

 bth->opcode = opcode;
}
