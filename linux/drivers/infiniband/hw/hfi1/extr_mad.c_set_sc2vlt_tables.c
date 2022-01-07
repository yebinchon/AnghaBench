
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hfi1_devdata {int sc2vl_lock; int sc2vl; } ;


 int SEND_SC2VLT0 ;
 int SEND_SC2VLT1 ;
 int SEND_SC2VLT2 ;
 int SEND_SC2VLT3 ;
 int filter_sc2vlt (void*,int) ;
 int memcpy (int ,void*,int) ;
 int write_csr (struct hfi1_devdata*,int ,int ) ;
 int write_seqlock_irq (int *) ;
 int write_sequnlock_irq (int *) ;

__attribute__((used)) static int set_sc2vlt_tables(struct hfi1_devdata *dd, void *data)
{
 u64 *val = data;

 filter_sc2vlt(data, 1);

 write_csr(dd, SEND_SC2VLT0, *val++);
 write_csr(dd, SEND_SC2VLT1, *val++);
 write_csr(dd, SEND_SC2VLT2, *val++);
 write_csr(dd, SEND_SC2VLT3, *val++);
 write_seqlock_irq(&dd->sc2vl_lock);
 memcpy(dd->sc2vl, data, sizeof(dd->sc2vl));
 write_sequnlock_irq(&dd->sc2vl_lock);
 return 0;
}
