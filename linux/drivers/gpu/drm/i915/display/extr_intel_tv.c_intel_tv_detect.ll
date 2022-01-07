; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_intel_tv_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_intel_tv_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.intel_tv = type { i32 }
%struct.intel_load_detect_pipe = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"[CONNECTOR:%d:%s] force=%d\0A\00", align 1
@connector_status_disconnected = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@connector_status_unknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_modeset_acquire_ctx*, i32)* @intel_tv_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_tv_detect(%struct.drm_connector* %0, %struct.drm_modeset_acquire_ctx* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_tv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.intel_load_detect_pipe, align 4
  %12 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %5, align 8
  store %struct.drm_modeset_acquire_ctx* %1, %struct.drm_modeset_acquire_ctx** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %14 = call %struct.intel_tv* @intel_attached_tv(%struct.drm_connector* %13)
  store %struct.intel_tv* %14, %struct.intel_tv** %8, align 8
  %15 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %16 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %20 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %66

26:                                               ; preds = %3
  %27 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %28 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %6, align 8
  %29 = call i32 @intel_get_load_detect_pipe(%struct.drm_connector* %27, i32* null, %struct.intel_load_detect_pipe* %11, %struct.drm_modeset_acquire_ctx* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %4, align 4
  br label %70

34:                                               ; preds = %26
  %35 = load i32, i32* %12, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = load %struct.intel_tv*, %struct.intel_tv** %8, align 8
  %39 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %40 = call i32 @intel_tv_detect_type(%struct.intel_tv* %38, %struct.drm_connector* %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %42 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %6, align 8
  %43 = call i32 @intel_release_load_detect_pipe(%struct.drm_connector* %41, %struct.intel_load_detect_pipe* %11, %struct.drm_modeset_acquire_ctx* %42)
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @connector_status_disconnected, align 4
  br label %50

48:                                               ; preds = %37
  %49 = load i32, i32* @connector_status_connected, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %9, align 4
  br label %54

52:                                               ; preds = %34
  %53 = load i32, i32* @connector_status_unknown, align 4
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @connector_status_connected, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.intel_tv*, %struct.intel_tv** %8, align 8
  %61 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %63 = call i32 @intel_tv_find_better_format(%struct.drm_connector* %62)
  br label %64

64:                                               ; preds = %58, %54
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %70

66:                                               ; preds = %3
  %67 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %68 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %66, %64, %32
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.intel_tv* @intel_attached_tv(%struct.drm_connector*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32) #1

declare dso_local i32 @intel_get_load_detect_pipe(%struct.drm_connector*, i32*, %struct.intel_load_detect_pipe*, %struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @intel_tv_detect_type(%struct.intel_tv*, %struct.drm_connector*) #1

declare dso_local i32 @intel_release_load_detect_pipe(%struct.drm_connector*, %struct.intel_load_detect_pipe*, %struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @intel_tv_find_better_format(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
