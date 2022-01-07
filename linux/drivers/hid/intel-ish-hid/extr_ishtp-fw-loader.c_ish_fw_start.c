
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int command; } ;
struct loader_start {TYPE_1__ hdr; } ;
struct loader_msg_hdr {int dummy; } ;
struct ishtp_cl_data {int dummy; } ;
typedef int ldr_start_ack ;
typedef int ldr_start ;


 int LOADER_CMD_START ;
 int loader_cl_send (struct ishtp_cl_data*,int *,int,int *,int) ;
 int memset (struct loader_start*,int ,int) ;

__attribute__((used)) static int ish_fw_start(struct ishtp_cl_data *client_data)
{
 struct loader_start ldr_start;
 struct loader_msg_hdr ldr_start_ack;

 memset(&ldr_start, 0, sizeof(ldr_start));
 ldr_start.hdr.command = LOADER_CMD_START;
 return loader_cl_send(client_data,
       (u8 *)&ldr_start,
       sizeof(ldr_start),
       (u8 *)&ldr_start_ack,
       sizeof(ldr_start_ack));
}
