
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_user_info {scalar_t__ spu_port; } ;
struct qib_devdata {scalar_t__ num_pports; } ;
struct file {int dummy; } ;


 int ENODEV ;
 int choose_port_ctxt (struct file*,struct qib_devdata*,scalar_t__,struct qib_user_info const*) ;
 struct qib_devdata* qib_lookup (int) ;

__attribute__((used)) static int find_free_ctxt(int unit, struct file *fp,
     const struct qib_user_info *uinfo)
{
 struct qib_devdata *dd = qib_lookup(unit);
 int ret;

 if (!dd || (uinfo->spu_port && uinfo->spu_port > dd->num_pports))
  ret = -ENODEV;
 else
  ret = choose_port_ctxt(fp, dd, uinfo->spu_port, uinfo);

 return ret;
}
