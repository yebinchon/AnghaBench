; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_vidi.c_vidi_store_connection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_vidi.c_vidi_store_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.vidi_context = type { i32, i32, %struct.edid* }
%struct.edid = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@fake_edid_info = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"edid data is not fake data.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"requested connection.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @vidi_store_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidi_store_connection(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vidi_context*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.vidi_context* @dev_get_drvdata(%struct.device* %12)
  store %struct.vidi_context* %13, %struct.vidi_context** %10, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load %struct.vidi_context*, %struct.vidi_context** %10, align 8
  %16 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %15, i32 0, i32 0
  %17 = call i32 @kstrtoint(i8* %14, i32 0, i32* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %5, align 4
  br label %61

22:                                               ; preds = %4
  %23 = load %struct.vidi_context*, %struct.vidi_context** %10, align 8
  %24 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %61

30:                                               ; preds = %22
  %31 = load %struct.vidi_context*, %struct.vidi_context** %10, align 8
  %32 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %31, i32 0, i32 2
  %33 = load %struct.edid*, %struct.edid** %32, align 8
  %34 = icmp ne %struct.edid* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i64, i64* @fake_edid_info, align 8
  %37 = inttoptr i64 %36 to %struct.edid*
  %38 = load %struct.vidi_context*, %struct.vidi_context** %10, align 8
  %39 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %38, i32 0, i32 2
  store %struct.edid* %37, %struct.edid** %39, align 8
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.vidi_context*, %struct.vidi_context** %10, align 8
  %42 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %41, i32 0, i32 2
  %43 = load %struct.edid*, %struct.edid** %42, align 8
  %44 = load i64, i64* @fake_edid_info, align 8
  %45 = inttoptr i64 %44 to %struct.edid*
  %46 = icmp ne %struct.edid* %43, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = call i32 @DRM_DEV_DEBUG_KMS(%struct.device* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %61

52:                                               ; preds = %40
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = call i32 @DRM_DEV_DEBUG_KMS(%struct.device* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.vidi_context*, %struct.vidi_context** %10, align 8
  %56 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @drm_helper_hpd_irq_event(i32 %57)
  %59 = load i64, i64* %9, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %52, %47, %27, %20
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.vidi_context* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @DRM_DEV_DEBUG_KMS(%struct.device*, i8*) #1

declare dso_local i32 @drm_helper_hpd_irq_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
