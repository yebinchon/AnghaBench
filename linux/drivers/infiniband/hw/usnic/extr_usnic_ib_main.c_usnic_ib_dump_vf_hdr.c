
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usnic_ib_vf {TYPE_2__* pf; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ ib_dev; } ;


 int dev_name (int *) ;
 int scnprintf (char*,int,char*,int ) ;

__attribute__((used)) static int usnic_ib_dump_vf_hdr(void *obj, char *buf, int buf_sz)
{
 struct usnic_ib_vf *vf = obj;
 return scnprintf(buf, buf_sz, "PF: %s ", dev_name(&vf->pf->ib_dev.dev));
}
