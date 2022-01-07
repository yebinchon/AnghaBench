
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct occ {int powr_sample_time_us; int poll_cmd_data; int send_cmd; TYPE_1__* bus_dev; } ;
struct p9_sbe_occ {struct occ occ; int sbe; } ;


 int ENODEV ;
 int ENOMEM ;
 int ESHUTDOWN ;
 int GFP_KERNEL ;
 struct p9_sbe_occ* devm_kzalloc (TYPE_1__*,int,int ) ;
 int occ_setup (struct occ*,char*) ;
 int p9_sbe_occ_send_cmd ;
 int platform_set_drvdata (struct platform_device*,struct occ*) ;

__attribute__((used)) static int p9_sbe_occ_probe(struct platform_device *pdev)
{
 int rc;
 struct occ *occ;
 struct p9_sbe_occ *ctx = devm_kzalloc(&pdev->dev, sizeof(*ctx),
           GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->sbe = pdev->dev.parent;
 occ = &ctx->occ;
 occ->bus_dev = &pdev->dev;
 platform_set_drvdata(pdev, occ);

 occ->powr_sample_time_us = 500;
 occ->poll_cmd_data = 0x20;
 occ->send_cmd = p9_sbe_occ_send_cmd;

 rc = occ_setup(occ, "p9_occ");
 if (rc == -ESHUTDOWN)
  rc = -ENODEV;

 return rc;
}
