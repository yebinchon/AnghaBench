
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct mem_ctl_info {int dev; scalar_t__ csbased; } ;
struct TYPE_7__ {int * parent; int * type; } ;
struct dimm_info {TYPE_1__ dev; struct mem_ctl_info* mci; } ;
typedef int location ;


 int CONFIG_EDAC_DEBUG ;
 scalar_t__ IS_ENABLED (int ) ;
 int dev_name (TYPE_1__*) ;
 int dev_set_drvdata (TYPE_1__*,struct dimm_info*) ;
 int dev_set_name (TYPE_1__*,char*,int) ;
 int device_add (TYPE_1__*) ;
 int device_initialize (TYPE_1__*) ;
 int dimm_attr_type ;
 int edac_dbg (int,char*,int ,...) ;
 int edac_dimm_info_location (struct dimm_info*,char*,int) ;
 int pm_runtime_forbid (int *) ;
 int put_device (TYPE_1__*) ;

__attribute__((used)) static int edac_create_dimm_object(struct mem_ctl_info *mci,
       struct dimm_info *dimm,
       int index)
{
 int err;
 dimm->mci = mci;

 dimm->dev.type = &dimm_attr_type;
 device_initialize(&dimm->dev);

 dimm->dev.parent = &mci->dev;
 if (mci->csbased)
  dev_set_name(&dimm->dev, "rank%d", index);
 else
  dev_set_name(&dimm->dev, "dimm%d", index);
 dev_set_drvdata(&dimm->dev, dimm);
 pm_runtime_forbid(&mci->dev);

 err = device_add(&dimm->dev);
 if (err) {
  edac_dbg(1, "failure: create device %s\n", dev_name(&dimm->dev));
  put_device(&dimm->dev);
  return err;
 }

 if (IS_ENABLED(CONFIG_EDAC_DEBUG)) {
  char location[80];

  edac_dimm_info_location(dimm, location, sizeof(location));
  edac_dbg(0, "device %s created at location %s\n",
   dev_name(&dimm->dev), location);
 }

 return 0;
}
