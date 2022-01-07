
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxt_data {int crc_completion; scalar_t__ config_crc; } ;


 int MXT_CRC_TIMEOUT ;
 int mxt_t6_command (struct mxt_data*,int ,int ,int) ;
 int mxt_wait_for_completion (struct mxt_data*,int *,int ) ;
 int reinit_completion (int *) ;

__attribute__((used)) static void mxt_update_crc(struct mxt_data *data, u8 cmd, u8 value)
{




 data->config_crc = 0;
 reinit_completion(&data->crc_completion);

 mxt_t6_command(data, cmd, value, 1);





 mxt_wait_for_completion(data, &data->crc_completion, MXT_CRC_TIMEOUT);
}
