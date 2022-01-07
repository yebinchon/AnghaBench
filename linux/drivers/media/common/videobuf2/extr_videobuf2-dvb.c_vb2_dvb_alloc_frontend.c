
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_dvb_frontends {int lock; int felist; } ;
struct TYPE_2__ {int lock; } ;
struct vb2_dvb_frontend {int id; int felist; TYPE_1__ dvb; } ;


 int GFP_KERNEL ;
 struct vb2_dvb_frontend* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct vb2_dvb_frontend *vb2_dvb_alloc_frontend(
 struct vb2_dvb_frontends *f, int id)
{
 struct vb2_dvb_frontend *fe;

 fe = kzalloc(sizeof(struct vb2_dvb_frontend), GFP_KERNEL);
 if (fe == ((void*)0))
  return ((void*)0);

 fe->id = id;
 mutex_init(&fe->dvb.lock);

 mutex_lock(&f->lock);
 list_add_tail(&fe->felist, &f->felist);
 mutex_unlock(&f->lock);
 return fe;
}
