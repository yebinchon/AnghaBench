
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



__attribute__((used)) static u64 get_enc_obj_id(u32 opcode, u32 obj_id)
{
 return ((u64)opcode << 32) | obj_id;
}
