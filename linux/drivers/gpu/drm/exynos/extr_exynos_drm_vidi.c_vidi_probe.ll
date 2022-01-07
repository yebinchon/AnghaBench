; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_vidi.c_vidi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_vidi.c_vidi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.vidi_context = type { i32, i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vidi_fake_vblank_timer = common dso_local global i32 0, align 4
@dev_attr_connection = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to create connection sysfs.\0A\00", align 1
@vidi_component_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vidi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.vidi_context*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.vidi_context* @devm_kzalloc(%struct.device* %9, i32 16, i32 %10)
  store %struct.vidi_context* %11, %struct.vidi_context** %4, align 8
  %12 = load %struct.vidi_context*, %struct.vidi_context** %4, align 8
  %13 = icmp ne %struct.vidi_context* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %51

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load %struct.vidi_context*, %struct.vidi_context** %4, align 8
  %20 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %19, i32 0, i32 2
  store %struct.device* %18, %struct.device** %20, align 8
  %21 = load %struct.vidi_context*, %struct.vidi_context** %4, align 8
  %22 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %21, i32 0, i32 1
  %23 = load i32, i32* @vidi_fake_vblank_timer, align 4
  %24 = call i32 @timer_setup(i32* %22, i32 %23, i32 0)
  %25 = load %struct.vidi_context*, %struct.vidi_context** %4, align 8
  %26 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %25, i32 0, i32 0
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load %struct.vidi_context*, %struct.vidi_context** %4, align 8
  %30 = call i32 @platform_set_drvdata(%struct.platform_device* %28, %struct.vidi_context* %29)
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = call i32 @device_create_file(%struct.device* %31, i32* @dev_attr_connection)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %17
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = call i32 @DRM_DEV_ERROR(%struct.device* %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %51

39:                                               ; preds = %17
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = call i32 @component_add(%struct.device* %40, i32* @vidi_component_ops)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %51

47:                                               ; preds = %44
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = call i32 @device_remove_file(%struct.device* %48, i32* @dev_attr_connection)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %45, %35, %14
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.vidi_context* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.vidi_context*) #1

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
