; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-raydium-rm68200.c_rm68200_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-raydium-rm68200.c_rm68200_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.rm68200 = type { i32, i64, i32, i32 }
%struct.mipi_dsi_device = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to enable supply: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @rm68200_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rm68200_prepare(%struct.drm_panel* %0) #0 {
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
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mipi_dsi_device* @to_mipi_dsi_device(i32 %11)
  store %struct.mipi_dsi_device* %12, %struct.mipi_dsi_device** %5, align 8
  %13 = load %struct.rm68200*, %struct.rm68200** %4, align 8
  %14 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

18:                                               ; preds = %1
  %19 = load %struct.rm68200*, %struct.rm68200** %4, align 8
  %20 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @regulator_enable(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %66

29:                                               ; preds = %18
  %30 = load %struct.rm68200*, %struct.rm68200** %4, align 8
  %31 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.rm68200*, %struct.rm68200** %4, align 8
  %36 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @gpiod_set_value_cansleep(i64 %37, i32 1)
  %39 = call i32 @msleep(i32 20)
  %40 = load %struct.rm68200*, %struct.rm68200** %4, align 8
  %41 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @gpiod_set_value_cansleep(i64 %42, i32 0)
  %44 = call i32 @msleep(i32 100)
  br label %45

45:                                               ; preds = %34, %29
  %46 = load %struct.rm68200*, %struct.rm68200** %4, align 8
  %47 = call i32 @rm68200_init_sequence(%struct.rm68200* %46)
  %48 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %49 = call i32 @mipi_dsi_dcs_exit_sleep_mode(%struct.mipi_dsi_device* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %66

54:                                               ; preds = %45
  %55 = call i32 @msleep(i32 125)
  %56 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %57 = call i32 @mipi_dsi_dcs_set_display_on(%struct.mipi_dsi_device* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %66

62:                                               ; preds = %54
  %63 = call i32 @msleep(i32 20)
  %64 = load %struct.rm68200*, %struct.rm68200** %4, align 8
  %65 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %62, %60, %52, %25, %17
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.rm68200* @panel_to_rm68200(%struct.drm_panel*) #1

declare dso_local %struct.mipi_dsi_device* @to_mipi_dsi_device(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rm68200_init_sequence(%struct.rm68200*) #1

declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(%struct.mipi_dsi_device*) #1

declare dso_local i32 @mipi_dsi_dcs_set_display_on(%struct.mipi_dsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
