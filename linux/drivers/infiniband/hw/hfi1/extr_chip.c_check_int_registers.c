
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long u64 ;
struct hfi1_devdata {int dummy; } ;


 int CCE_INT_CLEAR ;
 int CCE_INT_FORCE ;
 int CCE_INT_MASK ;
 int CCE_INT_STATUS ;
 int EINVAL ;
 int dd_dev_err (struct hfi1_devdata*,char*) ;
 long long read_csr (struct hfi1_devdata*,int ) ;
 int write_csr (struct hfi1_devdata*,int ,long long) ;

__attribute__((used)) static int check_int_registers(struct hfi1_devdata *dd)
{
 u64 reg;
 u64 all_bits = ~(u64)0;
 u64 mask;


 mask = read_csr(dd, CCE_INT_MASK);
 write_csr(dd, CCE_INT_MASK, 0ull);
 reg = read_csr(dd, CCE_INT_MASK);
 if (reg)
  goto err_exit;


 write_csr(dd, CCE_INT_CLEAR, all_bits);
 reg = read_csr(dd, CCE_INT_STATUS);
 if (reg)
  goto err_exit;


 write_csr(dd, CCE_INT_FORCE, all_bits);
 reg = read_csr(dd, CCE_INT_STATUS);
 if (reg != all_bits)
  goto err_exit;


 write_csr(dd, CCE_INT_CLEAR, all_bits);
 write_csr(dd, CCE_INT_MASK, mask);

 return 0;
err_exit:
 write_csr(dd, CCE_INT_MASK, mask);
 dd_dev_err(dd, "Interrupt registers not properly mapped by VMM\n");
 return -EINVAL;
}
