
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct class {int dummy; } ;
struct TYPE_3__ {int mutex; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 TYPE_1__* srm_data ;

int drm_setup_hdcp_srm(struct class *drm_class)
{
 srm_data = kzalloc(sizeof(*srm_data), GFP_KERNEL);
 if (!srm_data)
  return -ENOMEM;
 mutex_init(&srm_data->mutex);

 return 0;
}
