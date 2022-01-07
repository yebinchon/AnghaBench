
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct steam_device {int dummy; } ;


 int STEAM_CMD_REQUEST_COMM_STATUS ;
 int steam_send_report_byte (struct steam_device*,int ) ;

__attribute__((used)) static inline int steam_request_conn_status(struct steam_device *steam)
{
 return steam_send_report_byte(steam, STEAM_CMD_REQUEST_COMM_STATUS);
}
