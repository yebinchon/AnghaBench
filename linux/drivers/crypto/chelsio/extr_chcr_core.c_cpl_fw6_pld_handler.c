
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct crypto_async_request {int dummy; } ;
struct cpl_fw6_pld {int * data; } ;
struct chcr_dev {int dummy; } ;
struct TYPE_2__ {int error; } ;
struct adapter {TYPE_1__ chcr_stats; } ;
typedef int __be32 ;


 scalar_t__ CHK_MAC_ERR_BIT (int ) ;
 scalar_t__ CHK_PAD_ERR_BIT (int ) ;
 int EBADMSG ;
 int EFAULT ;
 int atomic_inc (int *) ;
 scalar_t__ be64_to_cpu (int ) ;
 int chcr_handle_resp (struct crypto_async_request*,unsigned char*,int) ;
 int ntohl (int ) ;
 struct adapter* padap (struct chcr_dev*) ;
 int pr_err (char*) ;

__attribute__((used)) static int cpl_fw6_pld_handler(struct chcr_dev *dev,
          unsigned char *input)
{
 struct crypto_async_request *req;
 struct cpl_fw6_pld *fw6_pld;
 u32 ack_err_status = 0;
 int error_status = 0;
 struct adapter *adap = padap(dev);

 fw6_pld = (struct cpl_fw6_pld *)input;
 req = (struct crypto_async_request *)(uintptr_t)be64_to_cpu(
          fw6_pld->data[1]);

 ack_err_status =
  ntohl(*(__be32 *)((unsigned char *)&fw6_pld->data[0] + 4));
 if (CHK_MAC_ERR_BIT(ack_err_status) || CHK_PAD_ERR_BIT(ack_err_status))
  error_status = -EBADMSG;

 if (req) {
  error_status = chcr_handle_resp(req, input, error_status);
 } else {
  pr_err("Incorrect request address from the firmware\n");
  return -EFAULT;
 }
 if (error_status)
  atomic_inc(&adap->chcr_stats.error);

 return 0;
}
