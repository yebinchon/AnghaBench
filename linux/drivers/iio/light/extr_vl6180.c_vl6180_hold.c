
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vl6180_data {int client; } ;


 int VL6180_HOLD ;
 int VL6180_HOLD_ON ;
 int vl6180_write_byte (int ,int ,int ) ;

__attribute__((used)) static int vl6180_hold(struct vl6180_data *data, bool hold)
{
 return vl6180_write_byte(data->client, VL6180_HOLD,
  hold ? VL6180_HOLD_ON : 0);
}
