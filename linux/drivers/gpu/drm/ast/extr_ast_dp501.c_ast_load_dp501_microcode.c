
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dev; struct ast_private* dev_private; } ;
struct ast_private {int dp501_fw; } ;


 int request_firmware (int *,char*,int ) ;

__attribute__((used)) static int ast_load_dp501_microcode(struct drm_device *dev)
{
 struct ast_private *ast = dev->dev_private;

 return request_firmware(&ast->dp501_fw, "ast_dp501_fw.bin", dev->dev);
}
