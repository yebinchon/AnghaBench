; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mixer_drv_data = type { i64, i64, i32 }
%struct.mixer_context = type { i32, i32, %struct.device*, %struct.platform_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to alloc mixer context.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MXR_BIT_VP_ENABLED = common dso_local global i32 0, align 4
@MXR_BIT_HAS_SCLK = common dso_local global i32 0, align 4
@mixer_component_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mixer_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mixer_drv_data*, align 8
  %6 = alloca %struct.mixer_context*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mixer_context* @devm_kzalloc(%struct.device* %11, i32 24, i32 %12)
  store %struct.mixer_context* %13, %struct.mixer_context** %6, align 8
  %14 = load %struct.mixer_context*, %struct.mixer_context** %6, align 8
  %15 = icmp ne %struct.mixer_context* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 @DRM_DEV_ERROR(%struct.device* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %68

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call %struct.mixer_drv_data* @of_device_get_match_data(%struct.device* %22)
  store %struct.mixer_drv_data* %23, %struct.mixer_drv_data** %5, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.mixer_context*, %struct.mixer_context** %6, align 8
  %26 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %25, i32 0, i32 3
  store %struct.platform_device* %24, %struct.platform_device** %26, align 8
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load %struct.mixer_context*, %struct.mixer_context** %6, align 8
  %29 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %28, i32 0, i32 2
  store %struct.device* %27, %struct.device** %29, align 8
  %30 = load %struct.mixer_drv_data*, %struct.mixer_drv_data** %5, align 8
  %31 = getelementptr inbounds %struct.mixer_drv_data, %struct.mixer_drv_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mixer_context*, %struct.mixer_context** %6, align 8
  %34 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.mixer_drv_data*, %struct.mixer_drv_data** %5, align 8
  %36 = getelementptr inbounds %struct.mixer_drv_data, %struct.mixer_drv_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %21
  %40 = load i32, i32* @MXR_BIT_VP_ENABLED, align 4
  %41 = load %struct.mixer_context*, %struct.mixer_context** %6, align 8
  %42 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %41, i32 0, i32 0
  %43 = call i32 @__set_bit(i32 %40, i32* %42)
  br label %44

44:                                               ; preds = %39, %21
  %45 = load %struct.mixer_drv_data*, %struct.mixer_drv_data** %5, align 8
  %46 = getelementptr inbounds %struct.mixer_drv_data, %struct.mixer_drv_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* @MXR_BIT_HAS_SCLK, align 4
  %51 = load %struct.mixer_context*, %struct.mixer_context** %6, align 8
  %52 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %51, i32 0, i32 0
  %53 = call i32 @__set_bit(i32 %50, i32* %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = load %struct.mixer_context*, %struct.mixer_context** %6, align 8
  %57 = call i32 @platform_set_drvdata(%struct.platform_device* %55, %struct.mixer_context* %56)
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 @component_add(%struct.device* %59, i32* @mixer_component_ops)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %54
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 @pm_runtime_enable(%struct.device* %64)
  br label %66

66:                                               ; preds = %63, %54
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %16
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.mixer_context* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*) #1

declare dso_local %struct.mixer_drv_data* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mixer_context*) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
