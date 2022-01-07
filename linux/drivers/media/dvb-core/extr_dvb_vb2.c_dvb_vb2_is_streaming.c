
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_vb2_ctx {int state; } ;


 int DVB_VB2_STATE_STREAMON ;

int dvb_vb2_is_streaming(struct dvb_vb2_ctx *ctx)
{
 return (ctx->state & DVB_VB2_STATE_STREAMON);
}
