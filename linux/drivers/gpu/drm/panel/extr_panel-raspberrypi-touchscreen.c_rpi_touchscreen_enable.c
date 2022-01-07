
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpi_touchscreen {int dummy; } ;
struct drm_panel {int dummy; } ;


 int BIT (int) ;
 int DSI_LANEENABLE ;
 int DSI_LANEENABLE_CLOCK ;
 int DSI_LANEENABLE_D0 ;
 int DSI_STARTDSI ;
 int LCDCTRL ;
 int PPI_D0S_ATMR ;
 int PPI_D0S_CLRSIPOCOUNT ;
 int PPI_D1S_ATMR ;
 int PPI_D1S_CLRSIPOCOUNT ;
 int PPI_LPTXTIMECNT ;
 int PPI_STARTPPI ;
 int REG_PORTA ;
 int REG_PORTB ;
 int REG_POWERON ;
 int REG_PWM ;
 int SPICMR ;
 int SYSCTRL ;
 int msleep (int) ;
 struct rpi_touchscreen* panel_to_ts (struct drm_panel*) ;
 int rpi_touchscreen_i2c_read (struct rpi_touchscreen*,int ) ;
 int rpi_touchscreen_i2c_write (struct rpi_touchscreen*,int ,int) ;
 int rpi_touchscreen_write (struct rpi_touchscreen*,int ,int) ;

__attribute__((used)) static int rpi_touchscreen_enable(struct drm_panel *panel)
{
 struct rpi_touchscreen *ts = panel_to_ts(panel);
 int i;

 rpi_touchscreen_i2c_write(ts, REG_POWERON, 1);

 for (i = 0; i < 100; i++) {
  if (rpi_touchscreen_i2c_read(ts, REG_PORTB) & 1)
   break;
 }

 rpi_touchscreen_write(ts, DSI_LANEENABLE,
         DSI_LANEENABLE_CLOCK |
         DSI_LANEENABLE_D0);
 rpi_touchscreen_write(ts, PPI_D0S_CLRSIPOCOUNT, 0x05);
 rpi_touchscreen_write(ts, PPI_D1S_CLRSIPOCOUNT, 0x05);
 rpi_touchscreen_write(ts, PPI_D0S_ATMR, 0x00);
 rpi_touchscreen_write(ts, PPI_D1S_ATMR, 0x00);
 rpi_touchscreen_write(ts, PPI_LPTXTIMECNT, 0x03);

 rpi_touchscreen_write(ts, SPICMR, 0x00);
 rpi_touchscreen_write(ts, LCDCTRL, 0x00100150);
 rpi_touchscreen_write(ts, SYSCTRL, 0x040f);
 msleep(100);

 rpi_touchscreen_write(ts, PPI_STARTPPI, 0x01);
 rpi_touchscreen_write(ts, DSI_STARTDSI, 0x01);
 msleep(100);


 rpi_touchscreen_i2c_write(ts, REG_PWM, 255);






 rpi_touchscreen_i2c_write(ts, REG_PORTA, BIT(2));

 return 0;
}
