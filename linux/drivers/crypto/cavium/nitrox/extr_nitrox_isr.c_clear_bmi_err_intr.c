
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nitrox_device {int dummy; } ;


 int BMI_INT ;
 int DEV (struct nitrox_device*) ;
 int dev_err_ratelimited (int ,char*,int ) ;
 int nitrox_read_csr (struct nitrox_device*,int ) ;
 int nitrox_write_csr (struct nitrox_device*,int ,int ) ;

__attribute__((used)) static void clear_bmi_err_intr(struct nitrox_device *ndev)
{
 u64 value;

 value = nitrox_read_csr(ndev, BMI_INT);
 nitrox_write_csr(ndev, BMI_INT, value);
 dev_err_ratelimited(DEV(ndev), "BMI_INT  0x%016llx\n", value);
}
