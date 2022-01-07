
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfd77402_data {int dummy; } ;


 int RFD77402_CMD_STANDBY ;
 int RFD77402_STATUS_STANDBY ;
 int rfd77402_set_state (struct rfd77402_data*,int ,int ) ;

__attribute__((used)) static int rfd77402_powerdown(struct rfd77402_data *data)
{
 return rfd77402_set_state(data, RFD77402_CMD_STANDBY,
      RFD77402_STATUS_STANDBY);
}
