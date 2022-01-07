
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_format {int pixelformat; } ;
struct saa7146_dev {int dummy; } ;


 int ARRAY_SIZE (struct saa7146_format*) ;
 int DEB_D (char*,char*) ;
 struct saa7146_format* formats ;

struct saa7146_format* saa7146_format_by_fourcc(struct saa7146_dev *dev, int fourcc)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(formats); i++) {
  if (formats[i].pixelformat == fourcc) {
   return formats+i;
  }
 }

 DEB_D("unknown pixelformat:'%4.4s'\n", (char *)&fourcc);
 return ((void*)0);
}
