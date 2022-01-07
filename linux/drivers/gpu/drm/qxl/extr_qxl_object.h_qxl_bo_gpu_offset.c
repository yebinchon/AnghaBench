
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int offset; } ;
struct qxl_bo {TYPE_1__ tbo; } ;



__attribute__((used)) static inline u64 qxl_bo_gpu_offset(struct qxl_bo *bo)
{
 return bo->tbo.offset;
}
