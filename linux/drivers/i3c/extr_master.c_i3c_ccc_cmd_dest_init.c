
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {void* data; scalar_t__ len; } ;
struct i3c_ccc_cmd_dest {TYPE_1__ payload; int addr; } ;


 int GFP_KERNEL ;
 void* kzalloc (scalar_t__,int ) ;

__attribute__((used)) static void *i3c_ccc_cmd_dest_init(struct i3c_ccc_cmd_dest *dest, u8 addr,
       u16 payloadlen)
{
 dest->addr = addr;
 dest->payload.len = payloadlen;
 if (payloadlen)
  dest->payload.data = kzalloc(payloadlen, GFP_KERNEL);
 else
  dest->payload.data = ((void*)0);

 return dest->payload.data;
}
