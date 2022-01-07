; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_i915_perf_open_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_i915_perf_open_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_perf_open_param = type { i32, i32, i32 }
%struct.perf_open_properties = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"i915 perf interface not available for this system\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@I915_PERF_FLAG_FD_CLOEXEC = common dso_local global i32 0, align 4
@I915_PERF_FLAG_FD_NONBLOCK = common dso_local global i32 0, align 4
@I915_PERF_FLAG_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Unknown drm_i915_perf_open_param flag\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_perf_open_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.drm_i915_perf_open_param*, align 8
  %10 = alloca %struct.perf_open_properties, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.drm_i915_perf_open_param*
  store %struct.drm_i915_perf_open_param* %17, %struct.drm_i915_perf_open_param** %9, align 8
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %72

27:                                               ; preds = %3
  %28 = load i32, i32* @I915_PERF_FLAG_FD_CLOEXEC, align 4
  %29 = load i32, i32* @I915_PERF_FLAG_FD_NONBLOCK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @I915_PERF_FLAG_DISABLED, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load %struct.drm_i915_perf_open_param*, %struct.drm_i915_perf_open_param** %9, align 8
  %34 = getelementptr inbounds %struct.drm_i915_perf_open_param, %struct.drm_i915_perf_open_param* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %72

44:                                               ; preds = %27
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %46 = load %struct.drm_i915_perf_open_param*, %struct.drm_i915_perf_open_param** %9, align 8
  %47 = getelementptr inbounds %struct.drm_i915_perf_open_param, %struct.drm_i915_perf_open_param* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @u64_to_user_ptr(i32 %48)
  %50 = load %struct.drm_i915_perf_open_param*, %struct.drm_i915_perf_open_param** %9, align 8
  %51 = getelementptr inbounds %struct.drm_i915_perf_open_param, %struct.drm_i915_perf_open_param* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @read_properties_unlocked(%struct.drm_i915_private* %45, i32 %49, i32 %52, %struct.perf_open_properties* %10)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %4, align 4
  br label %72

58:                                               ; preds = %44
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %60 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @mutex_lock(i32* %61)
  %63 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %64 = load %struct.drm_i915_perf_open_param*, %struct.drm_i915_perf_open_param** %9, align 8
  %65 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %66 = call i32 @i915_perf_open_ioctl_locked(%struct.drm_i915_private* %63, %struct.drm_i915_perf_open_param* %64, %struct.perf_open_properties* %10, %struct.drm_file* %65)
  store i32 %66, i32* %12, align 4
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %68 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %58, %56, %40, %23
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @read_properties_unlocked(%struct.drm_i915_private*, i32, i32, %struct.perf_open_properties*) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i915_perf_open_ioctl_locked(%struct.drm_i915_private*, %struct.drm_i915_perf_open_param*, %struct.perf_open_properties*, %struct.drm_file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
