
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct steam_device {int dummy; } ;


 int steam_send_report (struct steam_device*,int *,int) ;

__attribute__((used)) static inline int steam_send_report_byte(struct steam_device *steam, u8 cmd)
{
 return steam_send_report(steam, &cmd, 1);
}
