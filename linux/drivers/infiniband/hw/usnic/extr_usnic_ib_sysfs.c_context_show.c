
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_ib_qp_grp {int ctx; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t context_show(struct usnic_ib_qp_grp *qp_grp, char *buf)
{
 return scnprintf(buf, PAGE_SIZE, "0x%p\n", qp_grp->ctx);
}
