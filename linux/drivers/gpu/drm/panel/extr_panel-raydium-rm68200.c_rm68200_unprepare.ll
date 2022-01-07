; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-raydium-rm68200.c_rm68200_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-raydium-rm68200.c_rm68200_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.rm68200 = type { i32, i32, i64, i32 }
%struct.mipi_dsi_device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to set display off: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to enter sleep mode: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @rm68200_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rm68200_unprepare(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.rm68200*, align 8
  %5 = alloca %struct.mipi_dsi_device*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %7 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %8 = call %struct.rm68200* @panel_to_rm68200(%struct.drm_panel* %7)
  store %struct.rm68200* %8, %struct.rm68200** %4, align 8
  %9 = load %struct.rm68200*, %struct.rm68200** %4, align 8
  %10 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.mipi_dsi_device* @to_mipi_dsi_device(i32 %11)
  store %struct.mipi_dsi_device* %12, %struct.mipi_dsi_device** %5, align 8
  %13 = load %struct.rm68200*, %struct.rm68200** %4, align 8
  %14 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %53

18:                                               ; preds = %1
  %19 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %20 = call i32 @mipi_dsi_dcs_set_display_off(%struct.mipi_dsi_device* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @DRM_WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %28 = call i32 @mipi_dsi_dcs_enter_sleep_mode(%struct.mipi_dsi_device* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @DRM_WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %31, %26
  %35 = call i32 @msleep(i32 120)
  %36 = load %struct.rm68200*, %struct.rm68200** %4, align 8
  %37 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.rm68200*, %struct.rm68200** %4, align 8
  %42 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @gpiod_set_value_cansleep(i64 %43, i32 1)
  %45 = call i32 @msleep(i32 20)
  br label %46

46:                                               ; preds = %40, %34
  %47 = load %struct.rm68200*, %struct.rm68200** %4, align 8
  %48 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @regulator_disable(i32 %49)
  %51 = load %struct.rm68200*, %struct.rm68200** %4, align 8
  %52 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %46, %17
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.rm68200* @panel_to_rm68200(%struct.drm_panel*) #1

declare dso_local %struct.mipi_dsi_device* @to_mipi_dsi_device(i32) #1

declare dso_local i32 @mipi_dsi_dcs_set_display_off(%struct.mipi_dsi_device*) #1

declare dso_local i32 @DRM_WARN(i8*, i32) #1

declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(%struct.mipi_dsi_device*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
