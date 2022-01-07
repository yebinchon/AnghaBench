
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct guc_ct_buffer_desc {int status; int is_in_error; int fence; } ;


 int DRM_ERROR (char*,int ,int ) ;
 int EPROTO ;
 scalar_t__ WARN_ON (int ) ;
 int done ;
 int guc_ct_buffer_desc_reset (struct guc_ct_buffer_desc*) ;
 scalar_t__ unlikely (int) ;
 int wait_for (int ,int) ;
 int wait_for_us (int ,int) ;

__attribute__((used)) static int wait_for_ctb_desc_update(struct guc_ct_buffer_desc *desc,
        u32 fence,
        u32 *status)
{
 int err;







 err = wait_for_us((READ_ONCE(desc->fence) == fence), 10);
 if (err)
  err = wait_for((READ_ONCE(desc->fence) == fence), 10);


 if (unlikely(err)) {
  DRM_ERROR("CT: fence %u failed; reported fence=%u\n",
     fence, desc->fence);

  if (WARN_ON(desc->is_in_error)) {



   guc_ct_buffer_desc_reset(desc);
   err = -EPROTO;
  }
 }

 *status = desc->status;
 return err;
}
