
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int word ;
struct sbefifo {int fsi_dev; } ;
typedef int __be32 ;


 int SBEFIFO_UP ;
 int fsi_device_write (int ,int ,int *,int) ;

__attribute__((used)) static int sbefifo_up_write(struct sbefifo *sbefifo, __be32 word)
{
 return fsi_device_write(sbefifo->fsi_dev, SBEFIFO_UP, &word,
    sizeof(word));
}
