
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_msg {int length; } ;
struct ssp_data {int dummy; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int EPERM ;
 scalar_t__ WARN_ON (int) ;
 int done ;
 int ssp_do_transfer (struct ssp_data*,struct ssp_msg*,int *,int) ;

__attribute__((used)) static int ssp_spi_sync(struct ssp_data *data, struct ssp_msg *msg,
   int timeout)
{
 DECLARE_COMPLETION_ONSTACK(done);

 if (WARN_ON(!msg->length))
  return -EPERM;

 return ssp_do_transfer(data, msg, &done, timeout);
}
