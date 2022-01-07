
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int obj; TYPE_1__* component; } ;
struct komeda_scaler_state {TYPE_2__ base; } ;
struct TYPE_3__ {int obj; } ;
struct komeda_scaler {TYPE_1__ base; } ;
struct komeda_kms_dev {int base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_atomic_private_obj_init (int *,int *,int *,int *) ;
 int komeda_scaler_obj_funcs ;
 struct komeda_scaler_state* kzalloc (int,int ) ;

__attribute__((used)) static int komeda_scaler_obj_add(struct komeda_kms_dev *kms,
     struct komeda_scaler *scaler)
{
 struct komeda_scaler_state *st;

 st = kzalloc(sizeof(*st), GFP_KERNEL);
 if (!st)
  return -ENOMEM;

 st->base.component = &scaler->base;
 drm_atomic_private_obj_init(&kms->base,
        &scaler->base.obj, &st->base.obj,
        &komeda_scaler_obj_funcs);
 return 0;
}
