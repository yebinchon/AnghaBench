
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rdma_hw_stats {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_devdata {int portcntrnameslen; int portcntrnames; int cntrnameslen; int cntrnames; } ;


 int RDMA_HW_STATS_DEFAULT_LIFESPAN ;
 int cntr_names_initialized ;
 int cntr_names_lock ;
 struct hfi1_devdata* dd_from_ibdev (struct ib_device*) ;
 int * dev_cntr_names ;
 int * driver_cntr_names ;
 int init_cntr_names (int ,int ,int,int*,int **) ;
 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int num_dev_cntrs ;
 int num_driver_cntrs ;
 int num_port_cntrs ;
 int * port_cntr_names ;
 struct rdma_hw_stats* rdma_alloc_hw_stats_struct (int *,int,int ) ;

__attribute__((used)) static struct rdma_hw_stats *alloc_hw_stats(struct ib_device *ibdev,
         u8 port_num)
{
 int i, err;

 mutex_lock(&cntr_names_lock);
 if (!cntr_names_initialized) {
  struct hfi1_devdata *dd = dd_from_ibdev(ibdev);

  err = init_cntr_names(dd->cntrnames,
          dd->cntrnameslen,
          num_driver_cntrs,
          &num_dev_cntrs,
          &dev_cntr_names);
  if (err) {
   mutex_unlock(&cntr_names_lock);
   return ((void*)0);
  }

  for (i = 0; i < num_driver_cntrs; i++)
   dev_cntr_names[num_dev_cntrs + i] =
    driver_cntr_names[i];

  err = init_cntr_names(dd->portcntrnames,
          dd->portcntrnameslen,
          0,
          &num_port_cntrs,
          &port_cntr_names);
  if (err) {
   kfree(dev_cntr_names);
   dev_cntr_names = ((void*)0);
   mutex_unlock(&cntr_names_lock);
   return ((void*)0);
  }
  cntr_names_initialized = 1;
 }
 mutex_unlock(&cntr_names_lock);

 if (!port_num)
  return rdma_alloc_hw_stats_struct(
    dev_cntr_names,
    num_dev_cntrs + num_driver_cntrs,
    RDMA_HW_STATS_DEFAULT_LIFESPAN);
 else
  return rdma_alloc_hw_stats_struct(
    port_cntr_names,
    num_port_cntrs,
    RDMA_HW_STATS_DEFAULT_LIFESPAN);
}
