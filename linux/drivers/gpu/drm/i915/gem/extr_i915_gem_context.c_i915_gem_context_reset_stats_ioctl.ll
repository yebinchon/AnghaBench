; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_i915_gem_context_reset_stats_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_i915_gem_context_reset_stats_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.drm_i915_reset_stats = type { i8*, i8*, i64, i32, i64, i64 }
%struct.i915_gem_context = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_context_reset_stats_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.drm_i915_reset_stats*, align 8
  %10 = alloca %struct.i915_gem_context*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.drm_i915_reset_stats*
  store %struct.drm_i915_reset_stats* %15, %struct.drm_i915_reset_stats** %9, align 8
  %16 = load %struct.drm_i915_reset_stats*, %struct.drm_i915_reset_stats** %9, align 8
  %17 = getelementptr inbounds %struct.drm_i915_reset_stats, %struct.drm_i915_reset_stats* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load %struct.drm_i915_reset_stats*, %struct.drm_i915_reset_stats** %9, align 8
  %22 = getelementptr inbounds %struct.drm_i915_reset_stats, %struct.drm_i915_reset_stats* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %69

28:                                               ; preds = %20
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %11, align 4
  %31 = call i32 (...) @rcu_read_lock()
  %32 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %33 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.drm_i915_reset_stats*, %struct.drm_i915_reset_stats** %9, align 8
  %36 = getelementptr inbounds %struct.drm_i915_reset_stats, %struct.drm_i915_reset_stats* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.i915_gem_context* @__i915_gem_context_lookup_rcu(i32 %34, i32 %37)
  store %struct.i915_gem_context* %38, %struct.i915_gem_context** %10, align 8
  %39 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %40 = icmp ne %struct.i915_gem_context* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %28
  br label %66

42:                                               ; preds = %28
  %43 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %44 = call i64 @capable(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %48 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %47, i32 0, i32 0
  %49 = call i64 @i915_reset_count(i32* %48)
  %50 = load %struct.drm_i915_reset_stats*, %struct.drm_i915_reset_stats** %9, align 8
  %51 = getelementptr inbounds %struct.drm_i915_reset_stats, %struct.drm_i915_reset_stats* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  br label %55

52:                                               ; preds = %42
  %53 = load %struct.drm_i915_reset_stats*, %struct.drm_i915_reset_stats** %9, align 8
  %54 = getelementptr inbounds %struct.drm_i915_reset_stats, %struct.drm_i915_reset_stats* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %52, %46
  %56 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %57 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %56, i32 0, i32 1
  %58 = call i8* @atomic_read(i32* %57)
  %59 = load %struct.drm_i915_reset_stats*, %struct.drm_i915_reset_stats** %9, align 8
  %60 = getelementptr inbounds %struct.drm_i915_reset_stats, %struct.drm_i915_reset_stats* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %62 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %61, i32 0, i32 0
  %63 = call i8* @atomic_read(i32* %62)
  %64 = load %struct.drm_i915_reset_stats*, %struct.drm_i915_reset_stats** %9, align 8
  %65 = getelementptr inbounds %struct.drm_i915_reset_stats, %struct.drm_i915_reset_stats* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %55, %41
  %67 = call i32 (...) @rcu_read_unlock()
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %25
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.i915_gem_context* @__i915_gem_context_lookup_rcu(i32, i32) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i64 @i915_reset_count(i32*) #1

declare dso_local i8* @atomic_read(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
