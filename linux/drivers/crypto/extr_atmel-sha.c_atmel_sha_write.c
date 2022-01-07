
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int tmp ;
struct atmel_sha_dev {int flags; scalar_t__ io_base; int dev; } ;


 int SHA_FLAGS_DUMP_REG ;
 int atmel_sha_reg_name (scalar_t__,char*,int,int) ;
 int dev_vdbg (int ,char*,scalar_t__,int ) ;
 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void atmel_sha_write(struct atmel_sha_dev *dd,
     u32 offset, u32 value)
{
 writel_relaxed(value, dd->io_base + offset);
}
