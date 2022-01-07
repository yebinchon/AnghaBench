
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct hfi1_devdata {int irq_src_lock; } ;


 int BITS_PER_REGISTER ;
 scalar_t__ CCE_INT_MASK ;
 int read_csr (struct hfi1_devdata*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int write_csr (struct hfi1_devdata*,scalar_t__,int ) ;

__attribute__((used)) static void read_mod_write(struct hfi1_devdata *dd, u16 src, u64 bits,
      bool set)
{
 u64 reg;
 u16 idx = src / BITS_PER_REGISTER;

 spin_lock(&dd->irq_src_lock);
 reg = read_csr(dd, CCE_INT_MASK + (8 * idx));
 if (set)
  reg |= bits;
 else
  reg &= ~bits;
 write_csr(dd, CCE_INT_MASK + (8 * idx), reg);
 spin_unlock(&dd->irq_src_lock);
}
