
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ishtp_device {int dummy; } ;


 int IPC_BUILD_HEADER (int,int ,int) ;
 int IPC_PROTOCOL_ISHTP ;

__attribute__((used)) static uint32_t ish_ipc_get_header(struct ishtp_device *dev, int length,
       int busy)
{
 uint32_t drbl_val;

 drbl_val = IPC_BUILD_HEADER(length, IPC_PROTOCOL_ISHTP, busy);

 return drbl_val;
}
