
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sbefifo {int fsi_dev; } ;
typedef int raw_word ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;
 int fsi_device_read (int ,int,int *,int) ;

__attribute__((used)) static int sbefifo_regr(struct sbefifo *sbefifo, int reg, u32 *word)
{
 __be32 raw_word;
 int rc;

 rc = fsi_device_read(sbefifo->fsi_dev, reg, &raw_word,
        sizeof(raw_word));
 if (rc)
  return rc;

 *word = be32_to_cpu(raw_word);

 return 0;
}
