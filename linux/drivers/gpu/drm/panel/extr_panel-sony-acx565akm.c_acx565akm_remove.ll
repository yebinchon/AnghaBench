; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sony-acx565akm.c_acx565akm_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sony-acx565akm.c_acx565akm_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.acx565akm_panel = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @acx565akm_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acx565akm_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.acx565akm_panel*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %4 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %5 = call %struct.acx565akm_panel* @spi_get_drvdata(%struct.spi_device* %4)
  store %struct.acx565akm_panel* %5, %struct.acx565akm_panel** %3, align 8
  %6 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %7 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %6, i32 0, i32 0
  %8 = call i32 @drm_panel_remove(i32* %7)
  %9 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %10 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %15 = call i32 @acx565akm_backlight_cleanup(%struct.acx565akm_panel* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %18 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %17, i32 0, i32 0
  %19 = call i32 @drm_panel_disable(i32* %18)
  %20 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %21 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %20, i32 0, i32 0
  %22 = call i32 @drm_panel_unprepare(i32* %21)
  ret i32 0
}

declare dso_local %struct.acx565akm_panel* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @drm_panel_remove(i32*) #1

declare dso_local i32 @acx565akm_backlight_cleanup(%struct.acx565akm_panel*) #1

declare dso_local i32 @drm_panel_disable(i32*) #1

declare dso_local i32 @drm_panel_unprepare(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
