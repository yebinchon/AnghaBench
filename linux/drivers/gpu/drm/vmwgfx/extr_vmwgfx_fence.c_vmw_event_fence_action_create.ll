; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fence.c_vmw_event_fence_action_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fence.c_vmw_event_fence_action_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.vmw_fence_obj = type { i32 }
%struct.vmw_event_fence_pending = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.vmw_fence_manager = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to allocate an event.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DRM_VMW_EVENT_FENCE_SIGNALED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Failed to allocate event space for this file.\0A\00", align 1
@DRM_VMW_FE_FLAG_REQ_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_file*, %struct.vmw_fence_obj*, i32, i32, i32)* @vmw_event_fence_action_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_event_fence_action_create(%struct.drm_file* %0, %struct.vmw_fence_obj* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.vmw_fence_obj*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vmw_event_fence_pending*, align 8
  %13 = alloca %struct.vmw_fence_manager*, align 8
  %14 = alloca %struct.drm_device*, align 8
  %15 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %7, align 8
  store %struct.vmw_fence_obj* %1, %struct.vmw_fence_obj** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %8, align 8
  %17 = call %struct.vmw_fence_manager* @fman_from_fence(%struct.vmw_fence_obj* %16)
  store %struct.vmw_fence_manager* %17, %struct.vmw_fence_manager** %13, align 8
  %18 = load %struct.vmw_fence_manager*, %struct.vmw_fence_manager** %13, align 8
  %19 = getelementptr inbounds %struct.vmw_fence_manager, %struct.vmw_fence_manager* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.drm_device*, %struct.drm_device** %21, align 8
  store %struct.drm_device* %22, %struct.drm_device** %14, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.vmw_event_fence_pending* @kzalloc(i32 24, i32 %23)
  store %struct.vmw_event_fence_pending* %24, %struct.vmw_event_fence_pending** %12, align 8
  %25 = load %struct.vmw_event_fence_pending*, %struct.vmw_event_fence_pending** %12, align 8
  %26 = icmp ne %struct.vmw_event_fence_pending* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %5
  %32 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %15, align 4
  br label %101

35:                                               ; preds = %5
  %36 = load i32, i32* @DRM_VMW_EVENT_FENCE_SIGNALED, align 4
  %37 = load %struct.vmw_event_fence_pending*, %struct.vmw_event_fence_pending** %12, align 8
  %38 = getelementptr inbounds %struct.vmw_event_fence_pending, %struct.vmw_event_fence_pending* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 4
  %41 = load %struct.vmw_event_fence_pending*, %struct.vmw_event_fence_pending** %12, align 8
  %42 = getelementptr inbounds %struct.vmw_event_fence_pending, %struct.vmw_event_fence_pending* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 24, i32* %44, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.vmw_event_fence_pending*, %struct.vmw_event_fence_pending** %12, align 8
  %47 = getelementptr inbounds %struct.vmw_event_fence_pending, %struct.vmw_event_fence_pending* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 4
  %49 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %50 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %51 = load %struct.vmw_event_fence_pending*, %struct.vmw_event_fence_pending** %12, align 8
  %52 = getelementptr inbounds %struct.vmw_event_fence_pending, %struct.vmw_event_fence_pending* %51, i32 0, i32 0
  %53 = load %struct.vmw_event_fence_pending*, %struct.vmw_event_fence_pending** %12, align 8
  %54 = getelementptr inbounds %struct.vmw_event_fence_pending, %struct.vmw_event_fence_pending* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = call i32 @drm_event_reserve_init(%struct.drm_device* %49, %struct.drm_file* %50, i32* %52, %struct.TYPE_6__* %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %35
  %63 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.vmw_event_fence_pending*, %struct.vmw_event_fence_pending** %12, align 8
  %65 = call i32 @kfree(%struct.vmw_event_fence_pending* %64)
  br label %101

66:                                               ; preds = %35
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @DRM_VMW_FE_FLAG_REQ_TIME, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %73 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %8, align 8
  %74 = load %struct.vmw_event_fence_pending*, %struct.vmw_event_fence_pending** %12, align 8
  %75 = getelementptr inbounds %struct.vmw_event_fence_pending, %struct.vmw_event_fence_pending* %74, i32 0, i32 0
  %76 = load %struct.vmw_event_fence_pending*, %struct.vmw_event_fence_pending** %12, align 8
  %77 = getelementptr inbounds %struct.vmw_event_fence_pending, %struct.vmw_event_fence_pending* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load %struct.vmw_event_fence_pending*, %struct.vmw_event_fence_pending** %12, align 8
  %80 = getelementptr inbounds %struct.vmw_event_fence_pending, %struct.vmw_event_fence_pending* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @vmw_event_fence_action_queue(%struct.drm_file* %72, %struct.vmw_fence_obj* %73, i32* %75, i32* %78, i32* %81, i32 %82)
  store i32 %83, i32* %15, align 4
  br label %91

84:                                               ; preds = %66
  %85 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %86 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %8, align 8
  %87 = load %struct.vmw_event_fence_pending*, %struct.vmw_event_fence_pending** %12, align 8
  %88 = getelementptr inbounds %struct.vmw_event_fence_pending, %struct.vmw_event_fence_pending* %87, i32 0, i32 0
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @vmw_event_fence_action_queue(%struct.drm_file* %85, %struct.vmw_fence_obj* %86, i32* %88, i32* null, i32* null, i32 %89)
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %84, %71
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %96

95:                                               ; preds = %91
  store i32 0, i32* %6, align 4
  br label %103

96:                                               ; preds = %94
  %97 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %98 = load %struct.vmw_event_fence_pending*, %struct.vmw_event_fence_pending** %12, align 8
  %99 = getelementptr inbounds %struct.vmw_event_fence_pending, %struct.vmw_event_fence_pending* %98, i32 0, i32 0
  %100 = call i32 @drm_event_cancel_free(%struct.drm_device* %97, i32* %99)
  br label %101

101:                                              ; preds = %96, %62, %31
  %102 = load i32, i32* %15, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %101, %95
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local %struct.vmw_fence_manager* @fman_from_fence(%struct.vmw_fence_obj*) #1

declare dso_local %struct.vmw_event_fence_pending* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_event_reserve_init(%struct.drm_device*, %struct.drm_file*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.vmw_event_fence_pending*) #1

declare dso_local i32 @vmw_event_fence_action_queue(%struct.drm_file*, %struct.vmw_fence_obj*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @drm_event_cancel_free(%struct.drm_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
