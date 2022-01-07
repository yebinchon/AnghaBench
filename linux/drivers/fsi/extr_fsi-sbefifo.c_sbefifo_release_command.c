
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbefifo_user {scalar_t__ pending_len; int * pending_cmd; } ;


 scalar_t__ is_vmalloc_addr (int *) ;
 int vfree (int *) ;

__attribute__((used)) static void sbefifo_release_command(struct sbefifo_user *user)
{
 if (is_vmalloc_addr(user->pending_cmd))
  vfree(user->pending_cmd);
 user->pending_cmd = ((void*)0);
 user->pending_len = 0;
}
