
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_cmdbuf_man {int cur_mutex; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static void vmw_cmdbuf_cur_unlock(struct vmw_cmdbuf_man *man)
{
 mutex_unlock(&man->cur_mutex);
}
