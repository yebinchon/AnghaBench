
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct hfi1_devdata {int dummy; } ;


 int write_csr (struct hfi1_devdata*,int,int ) ;

__attribute__((used)) static void write_streamed_rsa_data(struct hfi1_devdata *dd, int what,
        const u8 *data, int nbytes)
{
 u64 *ptr = (u64 *)data;
 int qw_size = nbytes / 8;

 for (; qw_size > 0; qw_size--, ptr++)
  write_csr(dd, what, *ptr);
}
