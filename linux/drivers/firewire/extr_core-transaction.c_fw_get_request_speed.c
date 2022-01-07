
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed; } ;
struct fw_request {TYPE_1__ response; } ;



int fw_get_request_speed(struct fw_request *request)
{
 return request->response.speed;
}
