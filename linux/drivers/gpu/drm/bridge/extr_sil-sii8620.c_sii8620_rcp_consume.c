
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sii8620 {int rc_dev; int dev; } ;


 int MHL_RCP_KEY_ID_MASK ;
 int MHL_RCP_KEY_RELEASED_MASK ;
 int RC_PROTO_CEC ;
 int dev_dbg (int ,char*) ;
 int rc_keydown (int ,int ,int,int ) ;
 int rc_keyup (int ) ;

__attribute__((used)) static bool sii8620_rcp_consume(struct sii8620 *ctx, u8 scancode)
{
 bool pressed = !(scancode & MHL_RCP_KEY_RELEASED_MASK);

 scancode &= MHL_RCP_KEY_ID_MASK;

 if (!ctx->rc_dev) {
  dev_dbg(ctx->dev, "RCP input device not initialized\n");
  return 0;
 }

 if (pressed)
  rc_keydown(ctx->rc_dev, RC_PROTO_CEC, scancode, 0);
 else
  rc_keyup(ctx->rc_dev);

 return 1;
}
