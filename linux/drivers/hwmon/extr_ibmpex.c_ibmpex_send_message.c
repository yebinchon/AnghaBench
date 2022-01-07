
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmpex_bmc_data {int bmc_device; int tx_message; int tx_msgid; int address; int user; } ;


 int dev_err (int ,char*,int) ;
 int ipmi_request_settime (int ,int *,int ,int *,struct ibmpex_bmc_data*,int ,int ,int ) ;
 int ipmi_validate_addr (int *,int) ;

__attribute__((used)) static int ibmpex_send_message(struct ibmpex_bmc_data *data)
{
 int err;

 err = ipmi_validate_addr(&data->address, sizeof(data->address));
 if (err)
  goto out;

 data->tx_msgid++;
 err = ipmi_request_settime(data->user, &data->address, data->tx_msgid,
       &data->tx_message, data, 0, 0, 0);
 if (err)
  goto out1;

 return 0;
out1:
 dev_err(data->bmc_device, "request_settime=%x\n", err);
 return err;
out:
 dev_err(data->bmc_device, "validate_addr=%x\n", err);
 return err;
}
