
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbefifo {int async_ffdc; TYPE_1__* fsi_dev; } ;
struct kvec {void* iov_len; int * iov_base; } ;
struct iov_iter {int dummy; } ;
struct device {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {struct device dev; } ;


 int SBEFIFO_CMD_GET_SBE_FFDC ;
 void* SBEFIFO_MAX_FFDC_SIZE ;
 int WRITE ;
 int cpu_to_be32 (int) ;
 int dev_err (struct device*,char*,...) ;
 void* iov_iter_count (struct iov_iter*) ;
 int iov_iter_kvec (struct iov_iter*,int ,struct kvec*,int,void*) ;
 int sbefifo_do_command (struct sbefifo*,int *,int,struct iov_iter*) ;
 int sbefifo_dump_ffdc (struct device*,int *,size_t,int) ;
 int sbefifo_parse_status (struct device*,int,int *,size_t,size_t*) ;
 int vfree (int *) ;
 int * vmalloc (void*) ;

__attribute__((used)) static void sbefifo_collect_async_ffdc(struct sbefifo *sbefifo)
{
 struct device *dev = &sbefifo->fsi_dev->dev;
        struct iov_iter ffdc_iter;
        struct kvec ffdc_iov;
 __be32 *ffdc;
 size_t ffdc_sz;
 __be32 cmd[2];
 int rc;

 sbefifo->async_ffdc = 0;
 ffdc = vmalloc(SBEFIFO_MAX_FFDC_SIZE);
 if (!ffdc) {
  dev_err(dev, "Failed to allocate SBE FFDC buffer\n");
  return;
 }
        ffdc_iov.iov_base = ffdc;
 ffdc_iov.iov_len = SBEFIFO_MAX_FFDC_SIZE;
        iov_iter_kvec(&ffdc_iter, WRITE, &ffdc_iov, 1, SBEFIFO_MAX_FFDC_SIZE);
 cmd[0] = cpu_to_be32(2);
 cmd[1] = cpu_to_be32(SBEFIFO_CMD_GET_SBE_FFDC);
 rc = sbefifo_do_command(sbefifo, cmd, 2, &ffdc_iter);
 if (rc != 0) {
  dev_err(dev, "Error %d retrieving SBE FFDC\n", rc);
  goto bail;
 }
 ffdc_sz = SBEFIFO_MAX_FFDC_SIZE - iov_iter_count(&ffdc_iter);
 ffdc_sz /= sizeof(__be32);
 rc = sbefifo_parse_status(dev, SBEFIFO_CMD_GET_SBE_FFDC, ffdc,
      ffdc_sz, &ffdc_sz);
 if (rc != 0) {
  dev_err(dev, "Error %d decoding SBE FFDC\n", rc);
  goto bail;
 }
 if (ffdc_sz > 0)
  sbefifo_dump_ffdc(dev, ffdc, ffdc_sz, 1);
 bail:
 vfree(ffdc);

}
