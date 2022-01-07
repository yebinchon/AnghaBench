; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6d16d0.c_s6d16d0_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6d16d0.c_s6d16d0_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.s6d16d0 = type { i32, i32, i32 }
%struct.mipi_dsi_device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"failed to enter sleep mode (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @s6d16d0_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6d16d0_unprepare(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.s6d16d0*, align 8
  %5 = alloca %struct.mipi_dsi_device*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %7 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %8 = call %struct.s6d16d0* @panel_to_s6d16d0(%struct.drm_panel* %7)
  store %struct.s6d16d0* %8, %struct.s6d16d0** %4, align 8
  %9 = load %struct.s6d16d0*, %struct.s6d16d0** %4, align 8
  %10 = getelementptr inbounds %struct.s6d16d0, %struct.s6d16d0* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mipi_dsi_device* @to_mipi_dsi_device(i32 %11)
  store %struct.mipi_dsi_device* %12, %struct.mipi_dsi_device** %5, align 8
  %13 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %14 = call i32 @mipi_dsi_dcs_enter_sleep_mode(%struct.mipi_dsi_device* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.s6d16d0*, %struct.s6d16d0** %4, align 8
  %19 = getelementptr inbounds %struct.s6d16d0, %struct.s6d16d0* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @DRM_DEV_ERROR(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %33

24:                                               ; preds = %1
  %25 = load %struct.s6d16d0*, %struct.s6d16d0** %4, align 8
  %26 = getelementptr inbounds %struct.s6d16d0, %struct.s6d16d0* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @gpiod_set_value_cansleep(i32 %27, i32 1)
  %29 = load %struct.s6d16d0*, %struct.s6d16d0** %4, align 8
  %30 = getelementptr inbounds %struct.s6d16d0, %struct.s6d16d0* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regulator_disable(i32 %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %24, %17
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.s6d16d0* @panel_to_s6d16d0(%struct.drm_panel*) #1

declare dso_local %struct.mipi_dsi_device* @to_mipi_dsi_device(i32) #1

declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(%struct.mipi_dsi_device*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
