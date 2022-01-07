
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_mtu { ____Placeholder_ib_mtu } ib_mtu ;


 scalar_t__ RXE_MAX_HDR_LENGTH ;
 int rxe_mtu_int_to_enum (int) ;

__attribute__((used)) static inline enum ib_mtu eth_mtu_int_to_enum(int mtu)
{
 mtu -= RXE_MAX_HDR_LENGTH;

 return rxe_mtu_int_to_enum(mtu);
}
