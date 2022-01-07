
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acx565akm_panel {int dummy; } ;


 int acx565akm_transfer (struct acx565akm_panel*,int,int *,int ,int *,int ) ;

__attribute__((used)) static inline void acx565akm_cmd(struct acx565akm_panel *lcd, int cmd)
{
 acx565akm_transfer(lcd, cmd, ((void*)0), 0, ((void*)0), 0);
}
