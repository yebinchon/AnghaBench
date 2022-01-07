; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_sysfs.c_gt_boost_freq_mhz_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_sysfs.c_gt_boost_freq_mhz_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.intel_rps }
%struct.intel_rps = type { i64, i64, i64, i32, i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @gt_boost_freq_mhz_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gt_boost_freq_mhz_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.drm_i915_private*, align 8
  %11 = alloca %struct.intel_rps*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.drm_i915_private* @kdev_minor_to_i915(%struct.device* %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %10, align 8
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.intel_rps* %19, %struct.intel_rps** %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @kstrtou32(i8* %20, i32 0, i64* %14)
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %13, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* %13, align 8
  store i64 %25, i64* %5, align 8
  br label %72

26:                                               ; preds = %4
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %28 = load i64, i64* %14, align 8
  %29 = call i64 @intel_freq_opcode(%struct.drm_i915_private* %27, i64 %28)
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %14, align 8
  %31 = load %struct.intel_rps*, %struct.intel_rps** %11, align 8
  %32 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %26
  %36 = load i64, i64* %14, align 8
  %37 = load %struct.intel_rps*, %struct.intel_rps** %11, align 8
  %38 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %26
  %42 = load i64, i64* @EINVAL, align 8
  %43 = sub i64 0, %42
  store i64 %43, i64* %5, align 8
  br label %72

44:                                               ; preds = %35
  %45 = load %struct.intel_rps*, %struct.intel_rps** %11, align 8
  %46 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %45, i32 0, i32 4
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load i64, i64* %14, align 8
  %49 = load %struct.intel_rps*, %struct.intel_rps** %11, align 8
  %50 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load i64, i64* %14, align 8
  %55 = load %struct.intel_rps*, %struct.intel_rps** %11, align 8
  %56 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load %struct.intel_rps*, %struct.intel_rps** %11, align 8
  %58 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %57, i32 0, i32 5
  %59 = call i32 @atomic_read(i32* %58)
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %53, %44
  %61 = load %struct.intel_rps*, %struct.intel_rps** %11, align 8
  %62 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %61, i32 0, i32 4
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.intel_rps*, %struct.intel_rps** %11, align 8
  %68 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %67, i32 0, i32 3
  %69 = call i32 @schedule_work(i32* %68)
  br label %70

70:                                               ; preds = %66, %60
  %71 = load i64, i64* %9, align 8
  store i64 %71, i64* %5, align 8
  br label %72

72:                                               ; preds = %70, %41, %24
  %73 = load i64, i64* %5, align 8
  ret i64 %73
}

declare dso_local %struct.drm_i915_private* @kdev_minor_to_i915(%struct.device*) #1

declare dso_local i64 @kstrtou32(i8*, i32, i64*) #1

declare dso_local i64 @intel_freq_opcode(%struct.drm_i915_private*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
