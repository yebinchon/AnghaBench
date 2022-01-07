
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_cmdbuf_man {int dummy; } ;


 int __vmw_cmdbuf_cur_flush (struct vmw_cmdbuf_man*) ;
 int vmw_cmdbuf_cur_lock (struct vmw_cmdbuf_man*,int) ;
 int vmw_cmdbuf_cur_unlock (struct vmw_cmdbuf_man*) ;

int vmw_cmdbuf_cur_flush(struct vmw_cmdbuf_man *man,
    bool interruptible)
{
 int ret = vmw_cmdbuf_cur_lock(man, interruptible);

 if (ret)
  return ret;

 __vmw_cmdbuf_cur_flush(man);
 vmw_cmdbuf_cur_unlock(man);

 return 0;
}
