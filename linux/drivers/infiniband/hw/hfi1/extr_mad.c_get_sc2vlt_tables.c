
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hfi1_devdata {int dummy; } ;


 int SEND_SC2VLT0 ;
 int SEND_SC2VLT1 ;
 int SEND_SC2VLT2 ;
 int SEND_SC2VLT3 ;
 int filter_sc2vlt (int *,int) ;
 void* read_csr (struct hfi1_devdata*,int ) ;

__attribute__((used)) static int get_sc2vlt_tables(struct hfi1_devdata *dd, void *data)
{
 u64 *val = (u64 *)data;

 *val++ = read_csr(dd, SEND_SC2VLT0);
 *val++ = read_csr(dd, SEND_SC2VLT1);
 *val++ = read_csr(dd, SEND_SC2VLT2);
 *val++ = read_csr(dd, SEND_SC2VLT3);

 filter_sc2vlt((u64 *)data, 0);
 return 0;
}
