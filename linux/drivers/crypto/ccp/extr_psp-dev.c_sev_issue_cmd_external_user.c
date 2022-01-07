
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int * f_op; } ;


 int EBADF ;
 int sev_do_cmd (unsigned int,void*,int*) ;
 int sev_fops ;

int sev_issue_cmd_external_user(struct file *filep, unsigned int cmd,
    void *data, int *error)
{
 if (!filep || filep->f_op != &sev_fops)
  return -EBADF;

 return sev_do_cmd(cmd, data, error);
}
