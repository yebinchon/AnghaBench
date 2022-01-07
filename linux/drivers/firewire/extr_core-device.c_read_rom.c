
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct fw_device {int max_speed; int node_id; int card; } ;


 int CSR_CONFIG_ROM ;
 int CSR_REGISTER_BASE ;
 int RCODE_BUSY ;
 int TCODE_READ_QUADLET_REQUEST ;
 int be32_to_cpus (int *) ;
 int fw_run_transaction (int ,int ,int ,int,int ,int,int *,int) ;
 int msleep (int) ;
 int smp_rmb () ;

__attribute__((used)) static int read_rom(struct fw_device *device,
      int generation, int index, u32 *data)
{
 u64 offset = (CSR_REGISTER_BASE | CSR_CONFIG_ROM) + index * 4;
 int i, rcode;


 smp_rmb();

 for (i = 10; i < 100; i += 10) {
  rcode = fw_run_transaction(device->card,
    TCODE_READ_QUADLET_REQUEST, device->node_id,
    generation, device->max_speed, offset, data, 4);
  if (rcode != RCODE_BUSY)
   break;
  msleep(i);
 }
 be32_to_cpus(data);

 return rcode;
}
