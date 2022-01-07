
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {struct ast_private* dev_private; } ;
struct ast_private {int * dp501_fw; } ;


 int release_firmware (int *) ;

void ast_release_firmware(struct drm_device *dev)
{
 struct ast_private *ast = dev->dev_private;

 release_firmware(ast->dp501_fw);
 ast->dp501_fw = ((void*)0);
}
