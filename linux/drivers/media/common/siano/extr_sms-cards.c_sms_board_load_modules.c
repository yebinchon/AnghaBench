
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int request_module (char*) ;

int sms_board_load_modules(int id)
{
 request_module("smsdvb");
 return 0;
}
