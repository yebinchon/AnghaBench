; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_pread_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_pread_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_gem_pread = type { i64, i32, i32, i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@u64 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I915_WAIT_INTERRUPTIBLE = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_pread_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_gem_pread*, align 8
  %9 = alloca %struct.drm_i915_gem_object*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_i915_gem_pread*
  store %struct.drm_i915_gem_pread* %12, %struct.drm_i915_gem_pread** %8, align 8
  %13 = load %struct.drm_i915_gem_pread*, %struct.drm_i915_gem_pread** %8, align 8
  %14 = getelementptr inbounds %struct.drm_i915_gem_pread, %struct.drm_i915_gem_pread* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %105

18:                                               ; preds = %3
  %19 = load %struct.drm_i915_gem_pread*, %struct.drm_i915_gem_pread** %8, align 8
  %20 = getelementptr inbounds %struct.drm_i915_gem_pread, %struct.drm_i915_gem_pread* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @u64_to_user_ptr(i32 %21)
  %23 = load %struct.drm_i915_gem_pread*, %struct.drm_i915_gem_pread** %8, align 8
  %24 = getelementptr inbounds %struct.drm_i915_gem_pread, %struct.drm_i915_gem_pread* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @access_ok(i32 %22, i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* @EFAULT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %105

31:                                               ; preds = %18
  %32 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %33 = load %struct.drm_i915_gem_pread*, %struct.drm_i915_gem_pread** %8, align 8
  %34 = getelementptr inbounds %struct.drm_i915_gem_pread, %struct.drm_i915_gem_pread* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.drm_i915_gem_object* @i915_gem_object_lookup(%struct.drm_file* %32, i32 %35)
  store %struct.drm_i915_gem_object* %36, %struct.drm_i915_gem_object** %9, align 8
  %37 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %38 = icmp ne %struct.drm_i915_gem_object* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %105

42:                                               ; preds = %31
  %43 = load i32, i32* @u64, align 4
  %44 = load %struct.drm_i915_gem_pread*, %struct.drm_i915_gem_pread** %8, align 8
  %45 = getelementptr inbounds %struct.drm_i915_gem_pread, %struct.drm_i915_gem_pread* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.drm_i915_gem_pread*, %struct.drm_i915_gem_pread** %8, align 8
  %48 = getelementptr inbounds %struct.drm_i915_gem_pread, %struct.drm_i915_gem_pread* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %51 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @range_overflows_t(i32 %43, i32 %46, i64 %49, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %42
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %10, align 4
  br label %101

59:                                               ; preds = %42
  %60 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %61 = load %struct.drm_i915_gem_pread*, %struct.drm_i915_gem_pread** %8, align 8
  %62 = getelementptr inbounds %struct.drm_i915_gem_pread, %struct.drm_i915_gem_pread* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.drm_i915_gem_pread*, %struct.drm_i915_gem_pread** %8, align 8
  %65 = getelementptr inbounds %struct.drm_i915_gem_pread, %struct.drm_i915_gem_pread* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @trace_i915_gem_object_pread(%struct.drm_i915_gem_object* %60, i32 %63, i64 %66)
  %68 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %69 = load i32, i32* @I915_WAIT_INTERRUPTIBLE, align 4
  %70 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %71 = call i32 @i915_gem_object_wait(%struct.drm_i915_gem_object* %68, i32 %69, i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %59
  br label %101

75:                                               ; preds = %59
  %76 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %77 = call i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %101

81:                                               ; preds = %75
  %82 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %83 = load %struct.drm_i915_gem_pread*, %struct.drm_i915_gem_pread** %8, align 8
  %84 = call i32 @i915_gem_shmem_pread(%struct.drm_i915_gem_object* %82, %struct.drm_i915_gem_pread* %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @EFAULT, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %94, label %89

89:                                               ; preds = %81
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @ENODEV, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %89, %81
  %95 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %96 = load %struct.drm_i915_gem_pread*, %struct.drm_i915_gem_pread** %8, align 8
  %97 = call i32 @i915_gem_gtt_pread(%struct.drm_i915_gem_object* %95, %struct.drm_i915_gem_pread* %96)
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %94, %89
  %99 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %100 = call i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object* %99)
  br label %101

101:                                              ; preds = %98, %80, %74, %56
  %102 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %103 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %102)
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %101, %39, %28, %17
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @access_ok(i32, i64) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i64 @range_overflows_t(i32, i32, i64, i32) #1

declare dso_local i32 @trace_i915_gem_object_pread(%struct.drm_i915_gem_object*, i32, i64) #1

declare dso_local i32 @i915_gem_object_wait(%struct.drm_i915_gem_object*, i32, i32) #1

declare dso_local i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_shmem_pread(%struct.drm_i915_gem_object*, %struct.drm_i915_gem_pread*) #1

declare dso_local i32 @i915_gem_gtt_pread(%struct.drm_i915_gem_object*, %struct.drm_i915_gem_pread*) #1

declare dso_local i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_put(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
