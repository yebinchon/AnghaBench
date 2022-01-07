
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ width; scalar_t__ height; } ;
struct ipu_image {TYPE_1__ pix; } ;
typedef enum ipu_rotate_mode { ____Placeholder_ipu_rotate_mode } ipu_rotate_mode ;


 int EINVAL ;
 int ipu_image_convert_adjust (struct ipu_image*,struct ipu_image*,int) ;

int ipu_image_convert_verify(struct ipu_image *in, struct ipu_image *out,
        enum ipu_rotate_mode rot_mode)
{
 struct ipu_image testin, testout;

 testin = *in;
 testout = *out;

 ipu_image_convert_adjust(&testin, &testout, rot_mode);

 if (testin.pix.width != in->pix.width ||
     testin.pix.height != in->pix.height ||
     testout.pix.width != out->pix.width ||
     testout.pix.height != out->pix.height)
  return -EINVAL;

 return 0;
}
