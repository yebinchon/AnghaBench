
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dw_hdmi {int card; } ;
struct platform_device {int dummy; } ;


 struct snd_dw_hdmi* platform_get_drvdata (struct platform_device*) ;
 int snd_card_free (int ) ;

__attribute__((used)) static int snd_dw_hdmi_remove(struct platform_device *pdev)
{
 struct snd_dw_hdmi *dw = platform_get_drvdata(pdev);

 snd_card_free(dw->card);

 return 0;
}
