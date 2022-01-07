; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_sysfs.c_gt_rp_mhz_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_sysfs.c_gt_rp_mhz_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_attribute = type { i32 }
%struct.device = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.intel_rps }
%struct.intel_rps = type { i32, i32, i32 }

@dev_attr_gt_RP0_freq_mhz = common dso_local global %struct.device_attribute zeroinitializer, align 4
@dev_attr_gt_RP1_freq_mhz = common dso_local global %struct.device_attribute zeroinitializer, align 4
@dev_attr_gt_RPn_freq_mhz = common dso_local global %struct.device_attribute zeroinitializer, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @gt_rp_mhz_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gt_rp_mhz_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_rps*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.drm_i915_private* @kdev_minor_to_i915(%struct.device* %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %7, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.intel_rps* %14, %struct.intel_rps** %8, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %16 = icmp eq %struct.device_attribute* %15, @dev_attr_gt_RP0_freq_mhz
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %19 = load %struct.intel_rps*, %struct.intel_rps** %8, align 8
  %20 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %18, i32 %21)
  store i32 %22, i32* %9, align 4
  br label %45

23:                                               ; preds = %3
  %24 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %25 = icmp eq %struct.device_attribute* %24, @dev_attr_gt_RP1_freq_mhz
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %28 = load %struct.intel_rps*, %struct.intel_rps** %8, align 8
  %29 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %27, i32 %30)
  store i32 %31, i32* %9, align 4
  br label %44

32:                                               ; preds = %23
  %33 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %34 = icmp eq %struct.device_attribute* %33, @dev_attr_gt_RPn_freq_mhz
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %37 = load %struct.intel_rps*, %struct.intel_rps** %8, align 8
  %38 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %36, i32 %39)
  store i32 %40, i32* %9, align 4
  br label %43

41:                                               ; preds = %32
  %42 = call i32 (...) @BUG()
  br label %43

43:                                               ; preds = %41, %35
  br label %44

44:                                               ; preds = %43, %26
  br label %45

45:                                               ; preds = %44, %17
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @snprintf(i8* %46, i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %48)
  ret i32 %49
}

declare dso_local %struct.drm_i915_private* @kdev_minor_to_i915(%struct.device*) #1

declare dso_local i32 @intel_gpu_freq(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
