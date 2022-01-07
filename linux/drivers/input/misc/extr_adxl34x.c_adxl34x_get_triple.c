
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct axis_triple {void* z; void* y; void* x; } ;
struct TYPE_4__ {void* z; void* y; void* x; } ;
struct adxl34x {int mutex; TYPE_2__ saved; int dev; TYPE_1__* bops; } ;
typedef void* s16 ;
struct TYPE_3__ {int (* read_block ) (int ,scalar_t__,scalar_t__,short*) ;} ;


 scalar_t__ DATAX0 ;
 scalar_t__ DATAZ1 ;
 scalar_t__ le16_to_cpu (short) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ,scalar_t__,scalar_t__,short*) ;

__attribute__((used)) static void adxl34x_get_triple(struct adxl34x *ac, struct axis_triple *axis)
{
 short buf[3];

 ac->bops->read_block(ac->dev, DATAX0, DATAZ1 - DATAX0 + 1, buf);

 mutex_lock(&ac->mutex);
 ac->saved.x = (s16) le16_to_cpu(buf[0]);
 axis->x = ac->saved.x;

 ac->saved.y = (s16) le16_to_cpu(buf[1]);
 axis->y = ac->saved.y;

 ac->saved.z = (s16) le16_to_cpu(buf[2]);
 axis->z = ac->saved.z;
 mutex_unlock(&ac->mutex);
}
