
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_msg {int dummy; } ;
struct ssp_data {int dummy; } ;


 int ssp_do_transfer (struct ssp_data*,struct ssp_msg*,int *,int ) ;

__attribute__((used)) static inline int ssp_spi_sync_command(struct ssp_data *data,
           struct ssp_msg *msg)
{
 return ssp_do_transfer(data, msg, ((void*)0), 0);
}
