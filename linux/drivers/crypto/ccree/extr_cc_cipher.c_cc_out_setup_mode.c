
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_cipher_ctx {int flow_mode; } ;


 int S_AES_to_DOUT ;
 int S_DES_to_DOUT ;



 int S_SM4_to_DOUT ;

__attribute__((used)) static int cc_out_setup_mode(struct cc_cipher_ctx *ctx_p)
{
 switch (ctx_p->flow_mode) {
 case 130:
  return S_AES_to_DOUT;
 case 129:
  return S_DES_to_DOUT;
 case 128:
  return S_SM4_to_DOUT;
 default:
  return ctx_p->flow_mode;
 }
}
