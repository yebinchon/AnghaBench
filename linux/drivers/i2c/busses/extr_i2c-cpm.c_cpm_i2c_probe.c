
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {int of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_7__ {int of_node; TYPE_4__* parent; } ;
struct TYPE_8__ {int nr; int name; TYPE_1__ dev; } ;
struct cpm_i2c {TYPE_2__ adap; struct platform_device* ofdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int be32_to_cpup (int const*) ;
 int cpm_i2c_setup (struct cpm_i2c*) ;
 int cpm_i2c_shutdown (struct cpm_i2c*) ;
 TYPE_2__ cpm_ops ;
 int dev_dbg (TYPE_4__*,char*,int ) ;
 int dev_err (TYPE_4__*,char*) ;
 int i2c_add_numbered_adapter (TYPE_2__*) ;
 int i2c_set_adapdata (TYPE_2__*,struct cpm_i2c*) ;
 int kfree (struct cpm_i2c*) ;
 struct cpm_i2c* kzalloc (int,int ) ;
 int * of_get_property (int ,char*,int*) ;
 int of_node_get (int ) ;
 int platform_set_drvdata (struct platform_device*,struct cpm_i2c*) ;

__attribute__((used)) static int cpm_i2c_probe(struct platform_device *ofdev)
{
 int result, len;
 struct cpm_i2c *cpm;
 const u32 *data;

 cpm = kzalloc(sizeof(struct cpm_i2c), GFP_KERNEL);
 if (!cpm)
  return -ENOMEM;

 cpm->ofdev = ofdev;

 platform_set_drvdata(ofdev, cpm);

 cpm->adap = cpm_ops;
 i2c_set_adapdata(&cpm->adap, cpm);
 cpm->adap.dev.parent = &ofdev->dev;
 cpm->adap.dev.of_node = of_node_get(ofdev->dev.of_node);

 result = cpm_i2c_setup(cpm);
 if (result) {
  dev_err(&ofdev->dev, "Unable to init hardware\n");
  goto out_free;
 }



 data = of_get_property(ofdev->dev.of_node, "linux,i2c-index", &len);
 cpm->adap.nr = (data && len == 4) ? be32_to_cpup(data) : -1;
 result = i2c_add_numbered_adapter(&cpm->adap);

 if (result < 0)
  goto out_shut;

 dev_dbg(&ofdev->dev, "hw routines for %s registered.\n",
  cpm->adap.name);

 return 0;
out_shut:
 cpm_i2c_shutdown(cpm);
out_free:
 kfree(cpm);

 return result;
}
