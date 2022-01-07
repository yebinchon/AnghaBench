
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_vnic_res_spec {int dummy; } ;
typedef int buf ;


 int usnic_dbg (char*,char*) ;
 int usnic_vnic_spec_dump (char*,int,struct usnic_vnic_res_spec*) ;

__attribute__((used)) static void log_spec(struct usnic_vnic_res_spec *res_spec)
{
 char buf[512];
 usnic_vnic_spec_dump(buf, sizeof(buf), res_spec);
 usnic_dbg("%s\n", buf);
}
