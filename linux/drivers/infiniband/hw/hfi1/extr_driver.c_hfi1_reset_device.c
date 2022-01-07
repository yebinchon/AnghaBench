
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfi1_pportdata {int dummy; } ;
struct hfi1_devdata {int flags; int num_pports; struct hfi1_pportdata* pport; scalar_t__ rcd; int kregbase1; } ;
struct TYPE_2__ {scalar_t__ sps_ctxts; } ;


 int EBUSY ;
 int ENODEV ;
 int ENXIO ;
 int HFI1_HAS_SEND_DMA ;
 int HFI1_PRESENT ;
 int dd_dev_err (struct hfi1_devdata*,char*,int,int) ;
 int dd_dev_info (struct hfi1_devdata*,char*,int) ;
 int hfi1_init (struct hfi1_devdata*,int) ;
 struct hfi1_devdata* hfi1_lookup (int) ;
 int hfi1_mutex ;
 int hfi1_reset_cpu_counters (struct hfi1_devdata*) ;
 TYPE_1__ hfi1_stats ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sdma_exit (struct hfi1_devdata*) ;
 int shutdown_led_override (struct hfi1_pportdata*) ;

int hfi1_reset_device(int unit)
{
 int ret;
 struct hfi1_devdata *dd = hfi1_lookup(unit);
 struct hfi1_pportdata *ppd;
 int pidx;

 if (!dd) {
  ret = -ENODEV;
  goto bail;
 }

 dd_dev_info(dd, "Reset on unit %u requested\n", unit);

 if (!dd->kregbase1 || !(dd->flags & HFI1_PRESENT)) {
  dd_dev_info(dd,
       "Invalid unit number %u or not initialized or not present\n",
       unit);
  ret = -ENXIO;
  goto bail;
 }


 mutex_lock(&hfi1_mutex);
 if (dd->rcd)
  if (hfi1_stats.sps_ctxts) {
   mutex_unlock(&hfi1_mutex);
   ret = -EBUSY;
   goto bail;
  }
 mutex_unlock(&hfi1_mutex);

 for (pidx = 0; pidx < dd->num_pports; ++pidx) {
  ppd = dd->pport + pidx;

  shutdown_led_override(ppd);
 }
 if (dd->flags & HFI1_HAS_SEND_DMA)
  sdma_exit(dd);

 hfi1_reset_cpu_counters(dd);

 ret = hfi1_init(dd, 1);

 if (ret)
  dd_dev_err(dd,
      "Reinitialize unit %u after reset failed with %d\n",
      unit, ret);
 else
  dd_dev_info(dd, "Reinitialized unit %u after resetting\n",
       unit);

bail:
 return ret;
}
