
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_ib_vf {int dummy; } ;


 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kzalloc (int,int ) ;
 int usnic_dbg (char*,char*) ;
 int usnic_ib_dump_vf (struct usnic_ib_vf*,char*,int) ;

void usnic_ib_log_vf(struct usnic_ib_vf *vf)
{
 char *buf = kzalloc(1000, GFP_KERNEL);

 if (!buf)
  return;

 usnic_ib_dump_vf(vf, buf, 1000);
 usnic_dbg("%s\n", buf);

 kfree(buf);
}
