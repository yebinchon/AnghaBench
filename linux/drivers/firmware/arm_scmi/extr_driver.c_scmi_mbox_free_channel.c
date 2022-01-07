
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scmi_chan_info {int * chan; } ;
struct idr {int dummy; } ;


 int IS_ERR_OR_NULL (int *) ;
 int idr_remove (struct idr*,int) ;
 int mbox_free_channel (int *) ;

__attribute__((used)) static int scmi_mbox_free_channel(int id, void *p, void *data)
{
 struct scmi_chan_info *cinfo = p;
 struct idr *idr = data;

 if (!IS_ERR_OR_NULL(cinfo->chan)) {
  mbox_free_channel(cinfo->chan);
  cinfo->chan = ((void*)0);
 }

 idr_remove(idr, id);

 return 0;
}
