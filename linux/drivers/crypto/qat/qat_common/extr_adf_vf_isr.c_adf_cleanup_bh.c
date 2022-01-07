
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adf_etr_data {TYPE_1__* banks; } ;
struct adf_accel_dev {struct adf_etr_data* transport; } ;
struct TYPE_2__ {int resp_handler; } ;


 int tasklet_disable (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void adf_cleanup_bh(struct adf_accel_dev *accel_dev)
{
 struct adf_etr_data *priv_data = accel_dev->transport;

 tasklet_disable(&priv_data->banks[0].resp_handler);
 tasklet_kill(&priv_data->banks[0].resp_handler);
}
