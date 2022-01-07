
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;


 int V4L2_FIELD_ALTERNATE ;
 int V4L2_FIELD_SEQ_BT ;
 int V4L2_FIELD_SEQ_TB ;
 int V4L2_STD_525_60 ;

__attribute__((used)) static inline enum v4l2_field
ipu_csi_translate_field(enum v4l2_field field, v4l2_std_id std)
{
 return (field != V4L2_FIELD_ALTERNATE) ? field :
  ((std & V4L2_STD_525_60) ?
   V4L2_FIELD_SEQ_BT : V4L2_FIELD_SEQ_TB);
}
