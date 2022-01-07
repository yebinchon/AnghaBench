; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sitronix-st7701.c_st7701_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sitronix-st7701.c_st7701_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.st7701 = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MIPI_DCS_ENTER_SLEEP_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @st7701_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st7701_unprepare(%struct.drm_panel* %0) #0 {
  %2 = alloca %struct.drm_panel*, align 8
  %3 = alloca %struct.st7701*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %2, align 8
  %4 = load %struct.drm_panel*, %struct.drm_panel** %2, align 8
  %5 = call %struct.st7701* @panel_to_st7701(%struct.drm_panel* %4)
  store %struct.st7701* %5, %struct.st7701** %3, align 8
  %6 = load %struct.st7701*, %struct.st7701** %3, align 8
  %7 = load i32, i32* @MIPI_DCS_ENTER_SLEEP_MODE, align 4
  %8 = call i32 @ST7701_DSI(%struct.st7701* %6, i32 %7, i32 0)
  %9 = load %struct.st7701*, %struct.st7701** %3, align 8
  %10 = getelementptr inbounds %struct.st7701, %struct.st7701* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @msleep(i32 %11)
  %13 = load %struct.st7701*, %struct.st7701** %3, align 8
  %14 = getelementptr inbounds %struct.st7701, %struct.st7701* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @gpiod_set_value(i32 %15, i32 0)
  %17 = load %struct.st7701*, %struct.st7701** %3, align 8
  %18 = getelementptr inbounds %struct.st7701, %struct.st7701* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @msleep(i32 %19)
  %21 = load %struct.st7701*, %struct.st7701** %3, align 8
  %22 = getelementptr inbounds %struct.st7701, %struct.st7701* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.st7701*, %struct.st7701** %3, align 8
  %27 = getelementptr inbounds %struct.st7701, %struct.st7701* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @regulator_bulk_disable(i32 %25, i32 %28)
  ret i32 0
}

declare dso_local %struct.st7701* @panel_to_st7701(%struct.drm_panel*) #1

declare dso_local i32 @ST7701_DSI(%struct.st7701*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
