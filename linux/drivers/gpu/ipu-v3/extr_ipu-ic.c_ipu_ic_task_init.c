
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_ic_csc {int dummy; } ;
struct ipu_ic {int dummy; } ;


 int ipu_ic_task_init_rsc (struct ipu_ic*,struct ipu_ic_csc const*,int,int,int,int,int ) ;

int ipu_ic_task_init(struct ipu_ic *ic,
       const struct ipu_ic_csc *csc,
       int in_width, int in_height,
       int out_width, int out_height)
{
 return ipu_ic_task_init_rsc(ic, csc,
        in_width, in_height,
        out_width, out_height, 0);
}
