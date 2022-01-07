
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int* data; } ;


 size_t ACR ;
 size_t B ;
 size_t SR ;
 int SR_OUT ;
 int ST_CMD ;
 int ST_MASK ;
 int command_byte ;
 struct adb_request* current_req ;
 int data_index ;
 int macii_state ;
 int sending ;
 int* via ;

__attribute__((used)) static void macii_start(void)
{
 struct adb_request *req;

 req = current_req;







 command_byte = req->data[1];

 via[ACR] |= SR_OUT;

 via[SR] = req->data[1];

 via[B] = (via[B] & ~ST_MASK) | ST_CMD;

 macii_state = sending;
 data_index = 2;
}
