
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int PMS7003_PM_MAX ;
 int PMS7003_PM_MIN ;
 int clamp_val (int ,int ,int ) ;
 int get_unaligned_be16 (int const*) ;

__attribute__((used)) static u16 pms7003_get_pm(const u8 *data)
{
 return clamp_val(get_unaligned_be16(data),
    PMS7003_PM_MIN, PMS7003_PM_MAX);
}
