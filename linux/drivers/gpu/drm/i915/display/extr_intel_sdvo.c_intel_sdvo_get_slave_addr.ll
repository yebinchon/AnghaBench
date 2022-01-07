; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_get_slave_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_get_slave_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sdvo_device_mapping* }
%struct.sdvo_device_mapping = type { i32 }
%struct.intel_sdvo = type { i64 }

@PORT_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.intel_sdvo*)* @intel_sdvo_get_slave_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_get_slave_addr(%struct.drm_i915_private* %0, %struct.intel_sdvo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_sdvo*, align 8
  %6 = alloca %struct.sdvo_device_mapping*, align 8
  %7 = alloca %struct.sdvo_device_mapping*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.intel_sdvo* %1, %struct.intel_sdvo** %5, align 8
  %8 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %9 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PORT_B, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %16, align 8
  %18 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %17, i64 0
  store %struct.sdvo_device_mapping* %18, %struct.sdvo_device_mapping** %6, align 8
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %21, align 8
  %23 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %22, i64 1
  store %struct.sdvo_device_mapping* %23, %struct.sdvo_device_mapping** %7, align 8
  br label %35

24:                                               ; preds = %2
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %27, align 8
  %29 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %28, i64 1
  store %struct.sdvo_device_mapping* %29, %struct.sdvo_device_mapping** %6, align 8
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %31 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %32, align 8
  %34 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %33, i64 0
  store %struct.sdvo_device_mapping* %34, %struct.sdvo_device_mapping** %7, align 8
  br label %35

35:                                               ; preds = %24, %13
  %36 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %6, align 8
  %37 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %6, align 8
  %42 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %3, align 4
  br label %64

44:                                               ; preds = %35
  %45 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %7, align 8
  %46 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %7, align 8
  %51 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 112
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 114, i32* %3, align 4
  br label %64

55:                                               ; preds = %49
  store i32 112, i32* %3, align 4
  br label %64

56:                                               ; preds = %44
  %57 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %58 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PORT_B, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 112, i32* %3, align 4
  br label %64

63:                                               ; preds = %56
  store i32 114, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %62, %55, %54, %40
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
