
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {int dummy; } ;


 int DEB_VBI (char*,unsigned int,unsigned int) ;
 int vbi_pixel_to_capture ;

__attribute__((used)) static int buffer_setup(struct videobuf_queue *q, unsigned int *count, unsigned int *size)
{
 int llength,lines;

 lines = 16 * 2 ;
 llength = vbi_pixel_to_capture;

 *size = lines * llength;
 *count = 2;

 DEB_VBI("count:%d, size:%d\n", *count, *size);

 return 0;
}
