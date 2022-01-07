
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ desc_size; int * desc_ptr; } ;
struct TYPE_3__ {scalar_t__ desc_size; int * desc_ptr; } ;
struct uclogic_params {TYPE_2__ frame; TYPE_1__ pen; scalar_t__ desc_size; int * desc_ptr; int pen_unused; } ;
typedef int __u8 ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WARN_ON (int) ;
 int * kmalloc (unsigned int,int ) ;
 int memcpy (int *,int *,scalar_t__) ;

int uclogic_params_get_desc(const struct uclogic_params *params,
    __u8 **pdesc,
    unsigned int *psize)
{
 bool common_present;
 bool pen_present;
 bool frame_present;
 unsigned int size;
 __u8 *desc = ((void*)0);


 if (params == ((void*)0) || pdesc == ((void*)0) || psize == ((void*)0))
  return -EINVAL;

 size = 0;

 common_present = (params->desc_ptr != ((void*)0));
 pen_present = (!params->pen_unused && params->pen.desc_ptr != ((void*)0));
 frame_present = (params->frame.desc_ptr != ((void*)0));

 if (common_present)
  size += params->desc_size;
 if (pen_present)
  size += params->pen.desc_size;
 if (frame_present)
  size += params->frame.desc_size;

 if (common_present || pen_present || frame_present) {
  __u8 *p;

  desc = kmalloc(size, GFP_KERNEL);
  if (desc == ((void*)0))
   return -ENOMEM;
  p = desc;

  if (common_present) {
   memcpy(p, params->desc_ptr,
    params->desc_size);
   p += params->desc_size;
  }
  if (pen_present) {
   memcpy(p, params->pen.desc_ptr,
    params->pen.desc_size);
   p += params->pen.desc_size;
  }
  if (frame_present) {
   memcpy(p, params->frame.desc_ptr,
    params->frame.desc_size);
   p += params->frame.desc_size;
  }

  WARN_ON(p != desc + size);

  *psize = size;
 }

 *pdesc = desc;
 return 0;
}
