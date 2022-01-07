; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e63m0.c_s6e63m0_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e63m0.c_s6e63m0_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.s6e63m0 = type { i32, i32 }

@MIPI_DCS_ENTER_SLEEP_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @s6e63m0_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6e63m0_disable(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.s6e63m0*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %5 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %6 = call %struct.s6e63m0* @panel_to_s6e63m0(%struct.drm_panel* %5)
  store %struct.s6e63m0* %6, %struct.s6e63m0** %4, align 8
  %7 = load %struct.s6e63m0*, %struct.s6e63m0** %4, align 8
  %8 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.s6e63m0*, %struct.s6e63m0** %4, align 8
  %14 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @backlight_disable(i32 %15)
  %17 = load %struct.s6e63m0*, %struct.s6e63m0** %4, align 8
  %18 = load i32, i32* @MIPI_DCS_ENTER_SLEEP_MODE, align 4
  %19 = call i32 @s6e63m0_dcs_write_seq_static(%struct.s6e63m0* %17, i32 %18)
  %20 = call i32 @msleep(i32 200)
  %21 = load %struct.s6e63m0*, %struct.s6e63m0** %4, align 8
  %22 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %12, %11
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.s6e63m0* @panel_to_s6e63m0(%struct.drm_panel*) #1

declare dso_local i32 @backlight_disable(i32) #1

declare dso_local i32 @s6e63m0_dcs_write_seq_static(%struct.s6e63m0*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
