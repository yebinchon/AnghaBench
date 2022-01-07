
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_dvb_frontends {int adapter; } ;


 int dvb_unregister_adapter (int *) ;
 int vb2_dvb_dealloc_frontends (struct vb2_dvb_frontends*) ;

void vb2_dvb_unregister_bus(struct vb2_dvb_frontends *f)
{
 vb2_dvb_dealloc_frontends(f);

 dvb_unregister_adapter(&f->adapter);
}
