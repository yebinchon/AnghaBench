
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_buf_map {TYPE_1__* list; } ;
struct drm_buf {unsigned long offset; unsigned long idx; unsigned long total; } ;
typedef int address ;
struct TYPE_2__ {int address; int used; int total; int idx; } ;


 int EFAULT ;
 scalar_t__ clear_user (int *,int) ;
 scalar_t__ copy_to_user (int *,unsigned long*,int) ;

__attribute__((used)) static int map_one_buf(void *data, int idx, unsigned long virtual,
   struct drm_buf *buf)
{
 struct drm_buf_map *request = data;
 unsigned long address = virtual + buf->offset;

 if (copy_to_user(&request->list[idx].idx, &buf->idx,
    sizeof(request->list[0].idx)))
  return -EFAULT;
 if (copy_to_user(&request->list[idx].total, &buf->total,
    sizeof(request->list[0].total)))
  return -EFAULT;
 if (clear_user(&request->list[idx].used, sizeof(int)))
  return -EFAULT;
 if (copy_to_user(&request->list[idx].address, &address,
    sizeof(address)))
  return -EFAULT;
 return 0;
}
