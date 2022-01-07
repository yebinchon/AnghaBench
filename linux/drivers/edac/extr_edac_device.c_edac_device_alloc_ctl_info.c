
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct edac_device_instance {unsigned int nr_blocks; int name; struct edac_device_block* blocks; struct edac_device_ctl_info* ctl; } ;
struct edac_device_ctl_info {int dev_idx; unsigned int nr_instances; int log_ce; int log_ue; int op_state; int name; void* pvt_info; struct edac_device_instance* instances; } ;
struct edac_device_block {unsigned int nr_attribs; struct edac_dev_sysfs_block_attribute* block_attributes; int name; struct edac_device_instance* instance; } ;
struct TYPE_2__ {int name; } ;
struct edac_dev_sysfs_block_attribute {TYPE_1__ attr; struct edac_device_block* block; int store; int show; } ;


 int GFP_KERNEL ;
 int OP_ALLOC ;
 void* edac_align_ptr (void**,unsigned int,int) ;
 int edac_dbg (int,char*,...) ;
 int edac_device_register_sysfs_main_kobj (struct edac_device_ctl_info*) ;
 int kfree (struct edac_device_ctl_info*) ;
 struct edac_device_ctl_info* kzalloc (unsigned int,int ) ;
 int snprintf (int ,int,char*,char*,...) ;

struct edac_device_ctl_info *edac_device_alloc_ctl_info(
 unsigned sz_private,
 char *edac_device_name, unsigned nr_instances,
 char *edac_block_name, unsigned nr_blocks,
 unsigned offset_value,
 struct edac_dev_sysfs_block_attribute *attrib_spec, unsigned nr_attrib,
 int device_index)
{
 struct edac_device_ctl_info *dev_ctl;
 struct edac_device_instance *dev_inst, *inst;
 struct edac_device_block *dev_blk, *blk_p, *blk;
 struct edac_dev_sysfs_block_attribute *dev_attrib, *attrib_p, *attrib;
 unsigned total_size;
 unsigned count;
 unsigned instance, block, attr;
 void *pvt, *p;
 int err;

 edac_dbg(4, "instances=%d blocks=%d\n", nr_instances, nr_blocks);
 p = ((void*)0);
 dev_ctl = edac_align_ptr(&p, sizeof(*dev_ctl), 1);




 dev_inst = edac_align_ptr(&p, sizeof(*dev_inst), nr_instances);




 count = nr_instances * nr_blocks;
 dev_blk = edac_align_ptr(&p, sizeof(*dev_blk), count);





 if (nr_attrib > 0)
  count *= nr_attrib;
 dev_attrib = edac_align_ptr(&p, sizeof(*dev_attrib), count);


 pvt = edac_align_ptr(&p, sz_private, 1);





 total_size = ((unsigned long)pvt) + sz_private;


 dev_ctl = kzalloc(total_size, GFP_KERNEL);
 if (dev_ctl == ((void*)0))
  return ((void*)0);
 dev_inst = (struct edac_device_instance *)
  (((char *)dev_ctl) + ((unsigned long)dev_inst));
 dev_blk = (struct edac_device_block *)
  (((char *)dev_ctl) + ((unsigned long)dev_blk));
 dev_attrib = (struct edac_dev_sysfs_block_attribute *)
  (((char *)dev_ctl) + ((unsigned long)dev_attrib));
 pvt = sz_private ? (((char *)dev_ctl) + ((unsigned long)pvt)) : ((void*)0);


 dev_ctl->dev_idx = device_index;
 dev_ctl->nr_instances = nr_instances;
 dev_ctl->instances = dev_inst;
 dev_ctl->pvt_info = pvt;


 dev_ctl->log_ce = 1;
 dev_ctl->log_ue = 1;


 snprintf(dev_ctl->name,sizeof(dev_ctl->name),"%s",edac_device_name);

 edac_dbg(4, "edac_dev=%p next after end=%p\n",
   dev_ctl, pvt + sz_private);


 for (instance = 0; instance < nr_instances; instance++) {
  inst = &dev_inst[instance];
  inst->ctl = dev_ctl;
  inst->nr_blocks = nr_blocks;
  blk_p = &dev_blk[instance * nr_blocks];
  inst->blocks = blk_p;


  snprintf(inst->name, sizeof(inst->name),
    "%s%u", edac_device_name, instance);


  for (block = 0; block < nr_blocks; block++) {
   blk = &blk_p[block];
   blk->instance = inst;
   snprintf(blk->name, sizeof(blk->name),
     "%s%d", edac_block_name, block+offset_value);

   edac_dbg(4, "instance=%d inst_p=%p block=#%d block_p=%p name='%s'\n",
     instance, inst, block, blk, blk->name);




   if ((nr_attrib == 0) || (attrib_spec == ((void*)0)))
    continue;


   blk->nr_attribs = nr_attrib;
   attrib_p = &dev_attrib[block*nr_instances*nr_attrib];
   blk->block_attributes = attrib_p;

   edac_dbg(4, "THIS BLOCK_ATTRIB=%p\n",
     blk->block_attributes);






   for (attr = 0; attr < nr_attrib; attr++) {
    attrib = &attrib_p[attr];




    attrib->attr = attrib_spec[attr].attr;
    attrib->show = attrib_spec[attr].show;
    attrib->store = attrib_spec[attr].store;

    attrib->block = blk;

    edac_dbg(4, "alloc-attrib=%p attrib_name='%s' attrib-spec=%p spec-name=%s\n",
      attrib, attrib->attr.name,
      &attrib_spec[attr],
      attrib_spec[attr].attr.name
     );
   }
  }
 }


 dev_ctl->op_state = OP_ALLOC;




 err = edac_device_register_sysfs_main_kobj(dev_ctl);
 if (err) {
  kfree(dev_ctl);
  return ((void*)0);
 }
 return dev_ctl;
}
