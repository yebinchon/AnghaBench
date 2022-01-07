
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbefifo {int fsi_dev; } ;
typedef int __be32 ;


 int SBEFIFO_DOWN ;
 int fsi_device_read (int ,int ,int *,int) ;

__attribute__((used)) static int sbefifo_down_read(struct sbefifo *sbefifo, __be32 *word)
{
 return fsi_device_read(sbefifo->fsi_dev, SBEFIFO_DOWN, word,
          sizeof(*word));
}
