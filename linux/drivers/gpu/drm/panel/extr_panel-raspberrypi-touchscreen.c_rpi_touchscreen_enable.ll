; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-raspberrypi-touchscreen.c_rpi_touchscreen_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-raspberrypi-touchscreen.c_rpi_touchscreen_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.rpi_touchscreen = type { i32 }

@REG_POWERON = common dso_local global i32 0, align 4
@REG_PORTB = common dso_local global i32 0, align 4
@DSI_LANEENABLE = common dso_local global i32 0, align 4
@DSI_LANEENABLE_CLOCK = common dso_local global i32 0, align 4
@DSI_LANEENABLE_D0 = common dso_local global i32 0, align 4
@PPI_D0S_CLRSIPOCOUNT = common dso_local global i32 0, align 4
@PPI_D1S_CLRSIPOCOUNT = common dso_local global i32 0, align 4
@PPI_D0S_ATMR = common dso_local global i32 0, align 4
@PPI_D1S_ATMR = common dso_local global i32 0, align 4
@PPI_LPTXTIMECNT = common dso_local global i32 0, align 4
@SPICMR = common dso_local global i32 0, align 4
@LCDCTRL = common dso_local global i32 0, align 4
@SYSCTRL = common dso_local global i32 0, align 4
@PPI_STARTPPI = common dso_local global i32 0, align 4
@DSI_STARTDSI = common dso_local global i32 0, align 4
@REG_PWM = common dso_local global i32 0, align 4
@REG_PORTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @rpi_touchscreen_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpi_touchscreen_enable(%struct.drm_panel* %0) #0 {
  %2 = alloca %struct.drm_panel*, align 8
  %3 = alloca %struct.rpi_touchscreen*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %2, align 8
  %5 = load %struct.drm_panel*, %struct.drm_panel** %2, align 8
  %6 = call %struct.rpi_touchscreen* @panel_to_ts(%struct.drm_panel* %5)
  store %struct.rpi_touchscreen* %6, %struct.rpi_touchscreen** %3, align 8
  %7 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %3, align 8
  %8 = load i32, i32* @REG_POWERON, align 4
  %9 = call i32 @rpi_touchscreen_i2c_write(%struct.rpi_touchscreen* %7, i32 %8, i32 1)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %21, %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 100
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %3, align 8
  %15 = load i32, i32* @REG_PORTB, align 4
  %16 = call i32 @rpi_touchscreen_i2c_read(%struct.rpi_touchscreen* %14, i32 %15)
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %24

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %10

24:                                               ; preds = %19, %10
  %25 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %3, align 8
  %26 = load i32, i32* @DSI_LANEENABLE, align 4
  %27 = load i32, i32* @DSI_LANEENABLE_CLOCK, align 4
  %28 = load i32, i32* @DSI_LANEENABLE_D0, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @rpi_touchscreen_write(%struct.rpi_touchscreen* %25, i32 %26, i32 %29)
  %31 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %3, align 8
  %32 = load i32, i32* @PPI_D0S_CLRSIPOCOUNT, align 4
  %33 = call i32 @rpi_touchscreen_write(%struct.rpi_touchscreen* %31, i32 %32, i32 5)
  %34 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %3, align 8
  %35 = load i32, i32* @PPI_D1S_CLRSIPOCOUNT, align 4
  %36 = call i32 @rpi_touchscreen_write(%struct.rpi_touchscreen* %34, i32 %35, i32 5)
  %37 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %3, align 8
  %38 = load i32, i32* @PPI_D0S_ATMR, align 4
  %39 = call i32 @rpi_touchscreen_write(%struct.rpi_touchscreen* %37, i32 %38, i32 0)
  %40 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %3, align 8
  %41 = load i32, i32* @PPI_D1S_ATMR, align 4
  %42 = call i32 @rpi_touchscreen_write(%struct.rpi_touchscreen* %40, i32 %41, i32 0)
  %43 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %3, align 8
  %44 = load i32, i32* @PPI_LPTXTIMECNT, align 4
  %45 = call i32 @rpi_touchscreen_write(%struct.rpi_touchscreen* %43, i32 %44, i32 3)
  %46 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %3, align 8
  %47 = load i32, i32* @SPICMR, align 4
  %48 = call i32 @rpi_touchscreen_write(%struct.rpi_touchscreen* %46, i32 %47, i32 0)
  %49 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %3, align 8
  %50 = load i32, i32* @LCDCTRL, align 4
  %51 = call i32 @rpi_touchscreen_write(%struct.rpi_touchscreen* %49, i32 %50, i32 1048912)
  %52 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %3, align 8
  %53 = load i32, i32* @SYSCTRL, align 4
  %54 = call i32 @rpi_touchscreen_write(%struct.rpi_touchscreen* %52, i32 %53, i32 1039)
  %55 = call i32 @msleep(i32 100)
  %56 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %3, align 8
  %57 = load i32, i32* @PPI_STARTPPI, align 4
  %58 = call i32 @rpi_touchscreen_write(%struct.rpi_touchscreen* %56, i32 %57, i32 1)
  %59 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %3, align 8
  %60 = load i32, i32* @DSI_STARTDSI, align 4
  %61 = call i32 @rpi_touchscreen_write(%struct.rpi_touchscreen* %59, i32 %60, i32 1)
  %62 = call i32 @msleep(i32 100)
  %63 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %3, align 8
  %64 = load i32, i32* @REG_PWM, align 4
  %65 = call i32 @rpi_touchscreen_i2c_write(%struct.rpi_touchscreen* %63, i32 %64, i32 255)
  %66 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %3, align 8
  %67 = load i32, i32* @REG_PORTA, align 4
  %68 = call i32 @BIT(i32 2)
  %69 = call i32 @rpi_touchscreen_i2c_write(%struct.rpi_touchscreen* %66, i32 %67, i32 %68)
  ret i32 0
}

declare dso_local %struct.rpi_touchscreen* @panel_to_ts(%struct.drm_panel*) #1

declare dso_local i32 @rpi_touchscreen_i2c_write(%struct.rpi_touchscreen*, i32, i32) #1

declare dso_local i32 @rpi_touchscreen_i2c_read(%struct.rpi_touchscreen*, i32) #1

declare dso_local i32 @rpi_touchscreen_write(%struct.rpi_touchscreen*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
