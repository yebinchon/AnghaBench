
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int SUMO_SMU_SERVICE_ROUTINE_PG_INIT ;
 int sumo_send_msg_to_smu (struct radeon_device*,int ) ;

void sumo_smu_pg_init(struct radeon_device *rdev)
{
 sumo_send_msg_to_smu(rdev, SUMO_SMU_SERVICE_ROUTINE_PG_INIT);
}
