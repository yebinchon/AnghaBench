
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {struct vb2_fileio_data* fileio; int type; } ;
struct vb2_fileio_data {scalar_t__ count; int memory; } ;


 int dprintk (int,char*) ;
 int kfree (struct vb2_fileio_data*) ;
 int vb2_core_reqbufs (struct vb2_queue*,int ,scalar_t__*) ;
 int vb2_core_streamoff (struct vb2_queue*,int ) ;

__attribute__((used)) static int __vb2_cleanup_fileio(struct vb2_queue *q)
{
 struct vb2_fileio_data *fileio = q->fileio;

 if (fileio) {
  vb2_core_streamoff(q, q->type);
  q->fileio = ((void*)0);
  fileio->count = 0;
  vb2_core_reqbufs(q, fileio->memory, &fileio->count);
  kfree(fileio);
  dprintk(3, "file io emulator closed\n");
 }
 return 0;
}
