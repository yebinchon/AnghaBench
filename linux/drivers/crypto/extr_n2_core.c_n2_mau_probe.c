
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct n2_mau {int mau_list; int mau_info; } ;
struct mdesc_handle {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int HV_NCS_QTYPE_MAU ;
 struct n2_mau* alloc_ncp () ;
 int cpu_to_mau ;
 int dev_err (TYPE_1__*,char*,int ) ;
 int dev_set_drvdata (TYPE_1__*,struct n2_mau*) ;
 int free_ncp (struct n2_mau*) ;
 int grab_global_resources () ;
 int grab_mdesc_irq_props (struct mdesc_handle*,struct platform_device*,int *,char*) ;
 int mau_intr ;
 struct mdesc_handle* mdesc_grab () ;
 int mdesc_release (struct mdesc_handle*) ;
 int n2_spu_driver_version () ;
 int pr_info (char*,int ) ;
 int release_global_resources () ;
 int spu_mdesc_scan (struct mdesc_handle*,struct platform_device*,int *,int *,char*,int ,int ,int ) ;

__attribute__((used)) static int n2_mau_probe(struct platform_device *dev)
{
 struct mdesc_handle *mdesc;
 struct n2_mau *mp;
 int err;

 n2_spu_driver_version();

 pr_info("Found NCP at %pOF\n", dev->dev.of_node);

 mp = alloc_ncp();
 if (!mp) {
  dev_err(&dev->dev, "%pOF: Unable to allocate ncp.\n",
   dev->dev.of_node);
  return -ENOMEM;
 }

 err = grab_global_resources();
 if (err) {
  dev_err(&dev->dev, "%pOF: Unable to grab global resources.\n",
   dev->dev.of_node);
  goto out_free_ncp;
 }

 mdesc = mdesc_grab();

 if (!mdesc) {
  dev_err(&dev->dev, "%pOF: Unable to grab MDESC.\n",
   dev->dev.of_node);
  err = -ENODEV;
  goto out_free_global;
 }

 err = grab_mdesc_irq_props(mdesc, dev, &mp->mau_info, "ncp");
 if (err) {
  dev_err(&dev->dev, "%pOF: Unable to grab IRQ props.\n",
   dev->dev.of_node);
  mdesc_release(mdesc);
  goto out_free_global;
 }

 err = spu_mdesc_scan(mdesc, dev, &mp->mau_info, &mp->mau_list,
        "mau", HV_NCS_QTYPE_MAU, mau_intr,
        cpu_to_mau);
 mdesc_release(mdesc);

 if (err) {
  dev_err(&dev->dev, "%pOF: MAU MDESC scan failed.\n",
   dev->dev.of_node);
  goto out_free_global;
 }

 dev_set_drvdata(&dev->dev, mp);

 return 0;

out_free_global:
 release_global_resources();

out_free_ncp:
 free_ncp(mp);

 return err;
}
