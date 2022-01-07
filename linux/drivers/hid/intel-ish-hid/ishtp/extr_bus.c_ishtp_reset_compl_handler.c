
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_device {int hbm_state; int dev_state; } ;


 int ISHTP_DEV_INIT_CLIENTS ;
 int ISHTP_HBM_START ;
 int ishtp_hbm_start_req (struct ishtp_device*) ;

void ishtp_reset_compl_handler(struct ishtp_device *dev)
{
 dev->dev_state = ISHTP_DEV_INIT_CLIENTS;
 dev->hbm_state = ISHTP_HBM_START;
 ishtp_hbm_start_req(dev);
}
