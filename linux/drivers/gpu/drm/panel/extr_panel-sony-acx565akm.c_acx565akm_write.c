
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct acx565akm_panel {int dummy; } ;


 int acx565akm_transfer (struct acx565akm_panel*,int,int const*,int,int *,int ) ;

__attribute__((used)) static inline void acx565akm_write(struct acx565akm_panel *lcd,
          int reg, const u8 *buf, int len)
{
 acx565akm_transfer(lcd, reg, buf, len, ((void*)0), 0);
}
