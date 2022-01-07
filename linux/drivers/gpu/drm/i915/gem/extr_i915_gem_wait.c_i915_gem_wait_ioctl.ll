; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_wait.c_i915_gem_wait_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_wait.c_i915_gem_wait_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_gem_wait = type { i64, i64, i32 }
%struct.drm_i915_gem_object = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@I915_WAIT_INTERRUPTIBLE = common dso_local global i32 0, align 4
@I915_WAIT_PRIORITY = common dso_local global i32 0, align 4
@I915_WAIT_ALL = common dso_local global i32 0, align 4
@ETIME = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_wait_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_gem_wait*, align 8
  %9 = alloca %struct.drm_i915_gem_object*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_i915_gem_wait*
  store %struct.drm_i915_gem_wait* %13, %struct.drm_i915_gem_wait** %8, align 8
  %14 = load %struct.drm_i915_gem_wait*, %struct.drm_i915_gem_wait** %8, align 8
  %15 = getelementptr inbounds %struct.drm_i915_gem_wait, %struct.drm_i915_gem_wait* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %98

21:                                               ; preds = %3
  %22 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %23 = load %struct.drm_i915_gem_wait*, %struct.drm_i915_gem_wait** %8, align 8
  %24 = getelementptr inbounds %struct.drm_i915_gem_wait, %struct.drm_i915_gem_wait* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.drm_i915_gem_object* @i915_gem_object_lookup(%struct.drm_file* %22, i32 %25)
  store %struct.drm_i915_gem_object* %26, %struct.drm_i915_gem_object** %9, align 8
  %27 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %28 = icmp ne %struct.drm_i915_gem_object* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %98

32:                                               ; preds = %21
  %33 = call i32 (...) @ktime_get()
  store i32 %33, i32* %10, align 4
  %34 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %35 = load i32, i32* @I915_WAIT_INTERRUPTIBLE, align 4
  %36 = load i32, i32* @I915_WAIT_PRIORITY, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @I915_WAIT_ALL, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.drm_i915_gem_wait*, %struct.drm_i915_gem_wait** %8, align 8
  %41 = getelementptr inbounds %struct.drm_i915_gem_wait, %struct.drm_i915_gem_wait* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @to_wait_timeout(i64 %42)
  %44 = call i64 @i915_gem_object_wait(%struct.drm_i915_gem_object* %34, i32 %39, i32 %43)
  store i64 %44, i64* %11, align 8
  %45 = load %struct.drm_i915_gem_wait*, %struct.drm_i915_gem_wait** %8, align 8
  %46 = getelementptr inbounds %struct.drm_i915_gem_wait, %struct.drm_i915_gem_wait* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %93

49:                                               ; preds = %32
  %50 = call i32 (...) @ktime_get()
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @ktime_sub(i32 %50, i32 %51)
  %53 = call i64 @ktime_to_ns(i32 %52)
  %54 = load %struct.drm_i915_gem_wait*, %struct.drm_i915_gem_wait** %8, align 8
  %55 = getelementptr inbounds %struct.drm_i915_gem_wait, %struct.drm_i915_gem_wait* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load %struct.drm_i915_gem_wait*, %struct.drm_i915_gem_wait** %8, align 8
  %59 = getelementptr inbounds %struct.drm_i915_gem_wait, %struct.drm_i915_gem_wait* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %49
  %63 = load %struct.drm_i915_gem_wait*, %struct.drm_i915_gem_wait** %8, align 8
  %64 = getelementptr inbounds %struct.drm_i915_gem_wait, %struct.drm_i915_gem_wait* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %49
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* @ETIME, align 8
  %68 = sub nsw i64 0, %67
  %69 = icmp eq i64 %66, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load %struct.drm_i915_gem_wait*, %struct.drm_i915_gem_wait** %8, align 8
  %72 = getelementptr inbounds %struct.drm_i915_gem_wait, %struct.drm_i915_gem_wait* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @nsecs_to_jiffies(i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %70
  %77 = load %struct.drm_i915_gem_wait*, %struct.drm_i915_gem_wait** %8, align 8
  %78 = getelementptr inbounds %struct.drm_i915_gem_wait, %struct.drm_i915_gem_wait* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %76, %70, %65
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* @ETIME, align 8
  %82 = sub nsw i64 0, %81
  %83 = icmp eq i64 %80, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load %struct.drm_i915_gem_wait*, %struct.drm_i915_gem_wait** %8, align 8
  %86 = getelementptr inbounds %struct.drm_i915_gem_wait, %struct.drm_i915_gem_wait* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i64, i64* @EAGAIN, align 8
  %91 = sub nsw i64 0, %90
  store i64 %91, i64* %11, align 8
  br label %92

92:                                               ; preds = %89, %84, %79
  br label %93

93:                                               ; preds = %92, %32
  %94 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %95 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %94)
  %96 = load i64, i64* %11, align 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %93, %29, %18
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @i915_gem_object_wait(%struct.drm_i915_gem_object*, i32, i32) #1

declare dso_local i32 @to_wait_timeout(i64) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @nsecs_to_jiffies(i64) #1

declare dso_local i32 @i915_gem_object_put(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
