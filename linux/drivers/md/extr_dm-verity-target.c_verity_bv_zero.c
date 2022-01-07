
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dm_verity_io {int dummy; } ;
struct dm_verity {int dummy; } ;


 int memset (int *,int ,size_t) ;

__attribute__((used)) static int verity_bv_zero(struct dm_verity *v, struct dm_verity_io *io,
     u8 *data, size_t len)
{
 memset(data, 0, len);
 return 0;
}
