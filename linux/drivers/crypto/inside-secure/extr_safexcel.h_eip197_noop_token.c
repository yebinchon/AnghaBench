
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safexcel_token {int packet_length; int opcode; } ;


 int BIT (int) ;
 int EIP197_TOKEN_OPCODE_NOOP ;

__attribute__((used)) static inline void eip197_noop_token(struct safexcel_token *token)
{
 token->opcode = EIP197_TOKEN_OPCODE_NOOP;
 token->packet_length = BIT(2);
}
