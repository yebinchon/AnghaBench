; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6d16d0.c_s6d16d0_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6d16d0.c_s6d16d0_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.s6d16d0 = type { i32, i32, i32 }
%struct.mipi_dsi_device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to enable supply (%d)\0A\00", align 1
@MIPI_DSI_DCS_TEAR_MODE_VBLANK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to enable vblank TE (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to exit sleep mode (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @s6d16d0_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6d16d0_prepare(%struct.drm_panel* %0) #0 {
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
  %10 = getelementptr inbounds %struct.s6d16d0, %struct.s6d16d0* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mipi_dsi_device* @to_mipi_dsi_device(i32 %11)
  store %struct.mipi_dsi_device* %12, %struct.mipi_dsi_device** %5, align 8
  %13 = load %struct.s6d16d0*, %struct.s6d16d0** %4, align 8
  %14 = getelementptr inbounds %struct.s6d16d0, %struct.s6d16d0* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @regulator_enable(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.s6d16d0*, %struct.s6d16d0** %4, align 8
  %21 = getelementptr inbounds %struct.s6d16d0, %struct.s6d16d0* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @DRM_DEV_ERROR(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %62

26:                                               ; preds = %1
  %27 = load %struct.s6d16d0*, %struct.s6d16d0** %4, align 8
  %28 = getelementptr inbounds %struct.s6d16d0, %struct.s6d16d0* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @gpiod_set_value_cansleep(i32 %29, i32 1)
  %31 = call i32 @udelay(i32 10)
  %32 = load %struct.s6d16d0*, %struct.s6d16d0** %4, align 8
  %33 = getelementptr inbounds %struct.s6d16d0, %struct.s6d16d0* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @gpiod_set_value_cansleep(i32 %34, i32 0)
  %36 = call i32 @msleep(i32 120)
  %37 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %38 = load i32, i32* @MIPI_DSI_DCS_TEAR_MODE_VBLANK, align 4
  %39 = call i32 @mipi_dsi_dcs_set_tear_on(%struct.mipi_dsi_device* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %26
  %43 = load %struct.s6d16d0*, %struct.s6d16d0** %4, align 8
  %44 = getelementptr inbounds %struct.s6d16d0, %struct.s6d16d0* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @DRM_DEV_ERROR(i32 %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %62

49:                                               ; preds = %26
  %50 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %51 = call i32 @mipi_dsi_dcs_exit_sleep_mode(%struct.mipi_dsi_device* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.s6d16d0*, %struct.s6d16d0** %4, align 8
  %56 = getelementptr inbounds %struct.s6d16d0, %struct.s6d16d0* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @DRM_DEV_ERROR(i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %54, %42, %19
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.s6d16d0* @panel_to_s6d16d0(%struct.drm_panel*) #1

declare dso_local %struct.mipi_dsi_device* @to_mipi_dsi_device(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mipi_dsi_dcs_set_tear_on(%struct.mipi_dsi_device*, i32) #1

declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(%struct.mipi_dsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
