
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dpu_encoder_phys {TYPE_2__* hw_intf; } ;
struct TYPE_3__ {int (* get_line_count ) (TYPE_2__*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int EINVAL ;
 int dpu_encoder_phys_vid_is_master (struct dpu_encoder_phys*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int dpu_encoder_phys_vid_get_line_count(
  struct dpu_encoder_phys *phys_enc)
{
 if (!phys_enc)
  return -EINVAL;

 if (!dpu_encoder_phys_vid_is_master(phys_enc))
  return -EINVAL;

 if (!phys_enc->hw_intf || !phys_enc->hw_intf->ops.get_line_count)
  return -EINVAL;

 return phys_enc->hw_intf->ops.get_line_count(phys_enc->hw_intf);
}
