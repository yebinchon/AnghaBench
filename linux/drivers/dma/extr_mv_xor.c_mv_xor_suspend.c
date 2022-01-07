
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mv_xor_device {struct mv_xor_chan** channels; } ;
struct mv_xor_chan {void* saved_int_mask_reg; void* saved_config_reg; } ;
typedef int pm_message_t ;


 int MV_XOR_MAX_CHANNELS ;
 int XOR_CONFIG (struct mv_xor_chan*) ;
 int XOR_INTR_MASK (struct mv_xor_chan*) ;
 struct mv_xor_device* platform_get_drvdata (struct platform_device*) ;
 void* readl_relaxed (int ) ;

__attribute__((used)) static int mv_xor_suspend(struct platform_device *pdev, pm_message_t state)
{
 struct mv_xor_device *xordev = platform_get_drvdata(pdev);
 int i;

 for (i = 0; i < MV_XOR_MAX_CHANNELS; i++) {
  struct mv_xor_chan *mv_chan = xordev->channels[i];

  if (!mv_chan)
   continue;

  mv_chan->saved_config_reg =
   readl_relaxed(XOR_CONFIG(mv_chan));
  mv_chan->saved_int_mask_reg =
   readl_relaxed(XOR_INTR_MASK(mv_chan));
 }

 return 0;
}
