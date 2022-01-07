
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct resource {char* name; int start; int end; struct resource* sibling; int flags; } ;
struct TYPE_8__ {int minimum; int maximum; } ;
struct TYPE_9__ {TYPE_3__ address; } ;
struct TYPE_6__ {int minimum; int maximum; } ;
struct TYPE_7__ {TYPE_1__ address; } ;
struct TYPE_10__ {TYPE_4__ address64; TYPE_2__ address32; } ;
struct acpi_resource {int type; TYPE_5__ data; } ;
typedef int resource_size_t ;
typedef int acpi_status ;




 int AE_NO_MEMORY ;
 int AE_OK ;
 int GFP_ATOMIC ;
 int IORESOURCE_MEM ;
 int VTPM_BASE_ADDRESS ;
 struct resource* hyperv_mmio ;
 int kfree (struct resource*) ;
 struct resource* kzalloc (int,int ) ;

__attribute__((used)) static acpi_status vmbus_walk_resources(struct acpi_resource *res, void *ctx)
{
 resource_size_t start = 0;
 resource_size_t end = 0;
 struct resource *new_res;
 struct resource **old_res = &hyperv_mmio;
 struct resource **prev_res = ((void*)0);

 switch (res->type) {






 case 129:
  start = res->data.address32.address.minimum;
  end = res->data.address32.address.maximum;
  break;

 case 128:
  start = res->data.address64.address.minimum;
  end = res->data.address64.address.maximum;
  break;

 default:

  return AE_OK;

 }




 if (end < 0x100000)
  return AE_OK;

 new_res = kzalloc(sizeof(*new_res), GFP_ATOMIC);
 if (!new_res)
  return AE_NO_MEMORY;


 if (end > VTPM_BASE_ADDRESS && start < VTPM_BASE_ADDRESS)
  end = VTPM_BASE_ADDRESS;

 new_res->name = "hyperv mmio";
 new_res->flags = IORESOURCE_MEM;
 new_res->start = start;
 new_res->end = end;




 do {
  if (!*old_res) {
   *old_res = new_res;
   break;
  }

  if (((*old_res)->end + 1) == new_res->start) {
   (*old_res)->end = new_res->end;
   kfree(new_res);
   break;
  }

  if ((*old_res)->start == new_res->end + 1) {
   (*old_res)->start = new_res->start;
   kfree(new_res);
   break;
  }

  if ((*old_res)->start > new_res->end) {
   new_res->sibling = *old_res;
   if (prev_res)
    (*prev_res)->sibling = new_res;
   *old_res = new_res;
   break;
  }

  prev_res = old_res;
  old_res = &(*old_res)->sibling;

 } while (1);

 return AE_OK;
}
