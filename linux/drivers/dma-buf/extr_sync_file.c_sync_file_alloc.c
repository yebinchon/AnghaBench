
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int node; } ;
struct sync_file {TYPE_1__ cb; int wq; int file; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int anon_inode_getfile (char*,int *,struct sync_file*,int ) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct sync_file*) ;
 struct sync_file* kzalloc (int,int ) ;
 int sync_file_fops ;

__attribute__((used)) static struct sync_file *sync_file_alloc(void)
{
 struct sync_file *sync_file;

 sync_file = kzalloc(sizeof(*sync_file), GFP_KERNEL);
 if (!sync_file)
  return ((void*)0);

 sync_file->file = anon_inode_getfile("sync_file", &sync_file_fops,
          sync_file, 0);
 if (IS_ERR(sync_file->file))
  goto err;

 init_waitqueue_head(&sync_file->wq);

 INIT_LIST_HEAD(&sync_file->cb.node);

 return sync_file;

err:
 kfree(sync_file);
 return ((void*)0);
}
