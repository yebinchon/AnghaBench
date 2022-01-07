
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sbefifo {int broken; TYPE_1__* fsi_dev; } ;
struct iov_iter {int dummy; } ;
struct device {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {struct device dev; } ;


 int EFAULT ;
 int EIO ;
 int EOVERFLOW ;
 int SBEFIFO_DOWN ;
 int SBEFIFO_EOT_ACK ;
 int SBEFIFO_TIMEOUT_IN_RSP ;
 int SBEFIFO_TIMEOUT_START_RSP ;
 int copy_to_iter (int *,int,struct iov_iter*) ;
 int dev_err (struct device*,char*,int) ;
 int dev_vdbg (struct device*,char*,...) ;
 int dev_warn (struct device*,char*,size_t) ;
 int iov_iter_count (struct iov_iter*) ;
 unsigned long msecs_to_jiffies (int ) ;
 int sbefifo_down_read (struct sbefifo*,int *) ;
 int sbefifo_eot_set (int) ;
 size_t sbefifo_populated (int) ;
 int sbefifo_regw (struct sbefifo*,int,int ) ;
 int sbefifo_wait (struct sbefifo*,int,int*,unsigned long) ;

__attribute__((used)) static int sbefifo_read_response(struct sbefifo *sbefifo, struct iov_iter *response)
{
 struct device *dev = &sbefifo->fsi_dev->dev;
 u32 status, eot_set;
 unsigned long timeout;
 bool overflow = 0;
 __be32 data;
 size_t len;
 int rc;

 dev_vdbg(dev, "reading response, buflen = %zd\n", iov_iter_count(response));

 timeout = msecs_to_jiffies(SBEFIFO_TIMEOUT_START_RSP);
 for (;;) {

  rc = sbefifo_wait(sbefifo, 0, &status, timeout);
  if (rc < 0)
   return rc;
  timeout = msecs_to_jiffies(SBEFIFO_TIMEOUT_IN_RSP);


  len = sbefifo_populated(status);
  eot_set = sbefifo_eot_set(status);

  dev_vdbg(dev, "  chunk size %zd eot_set=0x%x\n", len, eot_set);


  while(len--) {

   rc = sbefifo_down_read(sbefifo, &data);
   if (rc < 0)
    return rc;


   if (eot_set & 0x80) {






    if (len) {
     dev_warn(dev, "FIFO read hit"
       " EOT with still %zd data\n",
       len);
     sbefifo->broken = 1;
    }


    rc = sbefifo_regw(sbefifo,
        SBEFIFO_DOWN | SBEFIFO_EOT_ACK, 0);






    if (rc) {
     dev_err(dev, "FSI error %d ack'ing EOT\n", rc);
     sbefifo->broken = 1;
    }


    return overflow ? -EOVERFLOW : 0;
   }


   if (iov_iter_count(response) >= sizeof(__be32)) {
    if (copy_to_iter(&data, sizeof(__be32), response) < sizeof(__be32))
     return -EFAULT;
   } else {
    dev_vdbg(dev, "Response overflowed !\n");

    overflow = 1;
   }


   eot_set <<= 1;
  }
 }

 return -EIO;
}
