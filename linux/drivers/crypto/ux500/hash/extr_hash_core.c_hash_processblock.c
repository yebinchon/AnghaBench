
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hash_device_data {TYPE_1__* base; } ;
struct TYPE_2__ {int str; } ;


 int HASH_BYTES_PER_WORD ;
 int HASH_CLEAR_BITS (int *,int ) ;
 int HASH_SET_DIN (int const*,int) ;
 int HASH_STR_NBLW_MASK ;

__attribute__((used)) static void hash_processblock(struct hash_device_data *device_data,
         const u32 *message, int length)
{
 int len = length / HASH_BYTES_PER_WORD;



 HASH_CLEAR_BITS(&device_data->base->str, HASH_STR_NBLW_MASK);




 HASH_SET_DIN(message, len);
}
