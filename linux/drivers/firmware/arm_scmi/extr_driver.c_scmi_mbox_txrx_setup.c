
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scmi_info {int dummy; } ;
struct device {int dummy; } ;


 int scmi_mbox_chan_setup (struct scmi_info*,struct device*,int,int) ;

__attribute__((used)) static inline int
scmi_mbox_txrx_setup(struct scmi_info *info, struct device *dev, int prot_id)
{
 int ret = scmi_mbox_chan_setup(info, dev, prot_id, 1);

 if (!ret)
  scmi_mbox_chan_setup(info, dev, prot_id, 0);

 return ret;
}
