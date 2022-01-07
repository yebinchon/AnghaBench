
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uclogic_params_frame {size_t desc_size; unsigned int id; int * desc_ptr; } ;
typedef int __u8 ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int * kmemdup (int const*,size_t,int ) ;
 int memset (struct uclogic_params_frame*,int ,int) ;

__attribute__((used)) static int uclogic_params_frame_init_with_desc(
     struct uclogic_params_frame *frame,
     const __u8 *desc_ptr,
     size_t desc_size,
     unsigned int id)
{
 __u8 *copy_desc_ptr;

 if (frame == ((void*)0) || (desc_ptr == ((void*)0) && desc_size != 0))
  return -EINVAL;

 copy_desc_ptr = kmemdup(desc_ptr, desc_size, GFP_KERNEL);
 if (copy_desc_ptr == ((void*)0))
  return -ENOMEM;

 memset(frame, 0, sizeof(*frame));
 frame->desc_ptr = copy_desc_ptr;
 frame->desc_size = desc_size;
 frame->id = id;
 return 0;
}
