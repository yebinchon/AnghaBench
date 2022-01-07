
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct cs_char* private_data; } ;
struct cs_char {int async_queue; } ;


 int EIO ;
 scalar_t__ fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int cs_char_fasync(int fd, struct file *file, int on)
{
 struct cs_char *csdata = file->private_data;

 if (fasync_helper(fd, file, on, &csdata->async_queue) < 0)
  return -EIO;

 return 0;
}
