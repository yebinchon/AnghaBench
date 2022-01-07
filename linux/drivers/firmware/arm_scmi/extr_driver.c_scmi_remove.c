
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int dummy; } ;
struct scmi_info {struct idr rx_idr; struct idr tx_idr; int node; scalar_t__ users; } ;
struct platform_device {int dummy; } ;


 int EBUSY ;
 int idr_destroy (struct idr*) ;
 int idr_for_each (struct idr*,int ,struct idr*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct scmi_info* platform_get_drvdata (struct platform_device*) ;
 int scmi_list_mutex ;
 int scmi_mbox_free_channel ;

__attribute__((used)) static int scmi_remove(struct platform_device *pdev)
{
 int ret = 0;
 struct scmi_info *info = platform_get_drvdata(pdev);
 struct idr *idr = &info->tx_idr;

 mutex_lock(&scmi_list_mutex);
 if (info->users)
  ret = -EBUSY;
 else
  list_del(&info->node);
 mutex_unlock(&scmi_list_mutex);

 if (ret)
  return ret;


 ret = idr_for_each(idr, scmi_mbox_free_channel, idr);
 idr_destroy(&info->tx_idr);

 idr = &info->rx_idr;
 ret = idr_for_each(idr, scmi_mbox_free_channel, idr);
 idr_destroy(&info->rx_idr);

 return ret;
}
