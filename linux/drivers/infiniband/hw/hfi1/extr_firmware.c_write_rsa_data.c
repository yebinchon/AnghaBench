
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct hfi1_devdata {int dummy; } ;


 int memcpy (int *,int const*,int) ;
 int write_csr (struct hfi1_devdata*,int,int ) ;

__attribute__((used)) static void write_rsa_data(struct hfi1_devdata *dd, int what,
      const u8 *data, int nbytes)
{
 int qw_size = nbytes / 8;
 int i;

 if (((unsigned long)data & 0x7) == 0) {

  u64 *ptr = (u64 *)data;

  for (i = 0; i < qw_size; i++, ptr++)
   write_csr(dd, what + (8 * i), *ptr);
 } else {

  for (i = 0; i < qw_size; i++, data += 8) {
   u64 value;

   memcpy(&value, data, 8);
   write_csr(dd, what + (8 * i), value);
  }
 }
}
