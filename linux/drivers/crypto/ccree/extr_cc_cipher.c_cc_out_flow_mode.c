
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_cipher_ctx {int flow_mode; } ;


 int DIN_AES_DOUT ;
 int DIN_DES_DOUT ;
 int DIN_SM4_DOUT ;




__attribute__((used)) static int cc_out_flow_mode(struct cc_cipher_ctx *ctx_p)
{
 switch (ctx_p->flow_mode) {
 case 130:
  return DIN_AES_DOUT;
 case 129:
  return DIN_DES_DOUT;
 case 128:
  return DIN_SM4_DOUT;
 default:
  return ctx_p->flow_mode;
 }
}
