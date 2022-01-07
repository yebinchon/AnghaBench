; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_lvds_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_lvds_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32, %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_connector = type { i64 }
%struct.drm_encoder = type { i32 }
%struct.radeon_encoder = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32 }

@connector_status_disconnected = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@RADEON_IS_PX = common dso_local global i32 0, align 4
@radeon_runtime_pm = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @radeon_lvds_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_lvds_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.radeon_connector*, align 8
  %9 = alloca %struct.drm_encoder*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.radeon_encoder*, align 8
  %13 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %15 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %6, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 1
  %19 = load %struct.radeon_device*, %struct.radeon_device** %18, align 8
  store %struct.radeon_device* %19, %struct.radeon_device** %7, align 8
  %20 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %21 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %20)
  store %struct.radeon_connector* %21, %struct.radeon_connector** %8, align 8
  %22 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %23 = call %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector* %22)
  store %struct.drm_encoder* %23, %struct.drm_encoder** %9, align 8
  %24 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %24, i32* %10, align 4
  %25 = call i32 (...) @drm_kms_helper_is_poll_worker()
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %2
  %28 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %29 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %28, i32 0, i32 0
  %30 = load %struct.drm_device*, %struct.drm_device** %29, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @pm_runtime_get_sync(i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %37, i32* %3, align 4
  br label %101

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %41 = icmp ne %struct.drm_encoder* %40, null
  br i1 %41, label %42, label %71

42:                                               ; preds = %39
  %43 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %44 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %43)
  store %struct.radeon_encoder* %44, %struct.radeon_encoder** %12, align 8
  %45 = load %struct.radeon_encoder*, %struct.radeon_encoder** %12, align 8
  %46 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %45, i32 0, i32 0
  store %struct.drm_display_mode* %46, %struct.drm_display_mode** %13, align 8
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %13, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %49, 320
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %13, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %54, 240
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @connector_status_connected, align 4
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %56, %51, %42
  %59 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @RADEON_IS_PX, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load i64, i64* @radeon_runtime_pm, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %68, %65, %58
  br label %71

71:                                               ; preds = %70, %39
  %72 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %73 = call i32 @radeon_connector_get_edid(%struct.drm_connector* %72)
  %74 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %75 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32, i32* @connector_status_connected, align 4
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %78, %71
  %81 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @radeon_connector_update_scratch_regs(%struct.drm_connector* %81, i32 %82)
  %84 = call i32 (...) @drm_kms_helper_is_poll_worker()
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %99, label %86

86:                                               ; preds = %80
  %87 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %88 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %87, i32 0, i32 0
  %89 = load %struct.drm_device*, %struct.drm_device** %88, align 8
  %90 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @pm_runtime_mark_last_busy(i32 %91)
  %93 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %94 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %93, i32 0, i32 0
  %95 = load %struct.drm_device*, %struct.drm_device** %94, align 8
  %96 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @pm_runtime_put_autosuspend(i32 %97)
  br label %99

99:                                               ; preds = %86, %80
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %36
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector*) #1

declare dso_local i32 @drm_kms_helper_is_poll_worker(...) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_connector_get_edid(%struct.drm_connector*) #1

declare dso_local i32 @radeon_connector_update_scratch_regs(%struct.drm_connector*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
