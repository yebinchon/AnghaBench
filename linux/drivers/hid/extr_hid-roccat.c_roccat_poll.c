
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roccat_reader {scalar_t__ cbuf_start; TYPE_1__* device; } ;
struct file {struct roccat_reader* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {scalar_t__ cbuf_end; int exist; int wait; } ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t roccat_poll(struct file *file, poll_table *wait)
{
 struct roccat_reader *reader = file->private_data;
 poll_wait(file, &reader->device->wait, wait);
 if (reader->cbuf_start != reader->device->cbuf_end)
  return EPOLLIN | EPOLLRDNORM;
 if (!reader->device->exist)
  return EPOLLERR | EPOLLHUP;
 return 0;
}
