
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_device {struct ast_private* dev_private; } ;
struct ast_private {int dummy; } ;


 int AST_IO_CRTC_PORT ;
 int ast_set_index_reg_mask (struct ast_private*,int ,int,int,int ) ;
 int clear_cmd_trigger (struct ast_private*) ;
 int send_ack (struct ast_private*) ;
 int send_nack (struct ast_private*) ;
 int set_cmd_trigger (struct ast_private*) ;
 scalar_t__ wait_ack (struct ast_private*) ;
 scalar_t__ wait_nack (struct ast_private*) ;

__attribute__((used)) static bool ast_write_cmd(struct drm_device *dev, u8 data)
{
 struct ast_private *ast = dev->dev_private;
 int retry = 0;
 if (wait_nack(ast)) {
  send_nack(ast);
  ast_set_index_reg_mask(ast, AST_IO_CRTC_PORT, 0x9a, 0x00, data);
  send_ack(ast);
  set_cmd_trigger(ast);
  do {
   if (wait_ack(ast)) {
    clear_cmd_trigger(ast);
    send_nack(ast);
    return 1;
   }
  } while (retry++ < 100);
 }
 clear_cmd_trigger(ast);
 send_nack(ast);
 return 0;
}
