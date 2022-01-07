
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_remote {int remote_fifo; int remote_dir; } ;
struct wacom {struct wacom_remote* remote; } ;


 int kfifo_free (int *) ;
 int kobject_put (int ) ;

__attribute__((used)) static void wacom_remotes_destroy(void *data)
{
 struct wacom *wacom = data;
 struct wacom_remote *remote = wacom->remote;

 if (!remote)
  return;

 kobject_put(remote->remote_dir);
 kfifo_free(&remote->remote_fifo);
 wacom->remote = ((void*)0);
}
