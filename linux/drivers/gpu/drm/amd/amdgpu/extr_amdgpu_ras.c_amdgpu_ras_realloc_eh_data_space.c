
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ras_err_handler_data {unsigned int count; unsigned int space_left; void* bps; } ;
struct amdgpu_device {int dummy; } ;


 unsigned int ALIGN (unsigned int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (void*) ;
 void* kmalloc (unsigned int,int ) ;
 int memcpy (void*,void*,int) ;

__attribute__((used)) static int amdgpu_ras_realloc_eh_data_space(struct amdgpu_device *adev,
  struct ras_err_handler_data *data, int pages)
{
 unsigned int old_space = data->count + data->space_left;
 unsigned int new_space = old_space + pages;
 unsigned int align_space = ALIGN(new_space, 1024);
 void *tmp = kmalloc(align_space * sizeof(*data->bps), GFP_KERNEL);

 if (!tmp)
  return -ENOMEM;

 if (data->bps) {
  memcpy(tmp, data->bps,
    data->count * sizeof(*data->bps));
  kfree(data->bps);
 }

 data->bps = tmp;
 data->space_left += align_space - old_space;
 return 0;
}
