
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sbefifo {int fsi_dev; } ;
typedef int raw_word ;
typedef int __be32 ;


 int cpu_to_be32 (int ) ;
 int fsi_device_write (int ,int,int *,int) ;

__attribute__((used)) static int sbefifo_regw(struct sbefifo *sbefifo, int reg, u32 word)
{
 __be32 raw_word = cpu_to_be32(word);

 return fsi_device_write(sbefifo->fsi_dev, reg, &raw_word,
    sizeof(raw_word));
}
