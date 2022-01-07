; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_select_ddc_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_select_ddc_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sdvo_device_mapping* }
%struct.sdvo_device_mapping = type { i32, i64 }
%struct.intel_sdvo = type { i64, i32 }

@PORT_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_sdvo*)* @intel_sdvo_select_ddc_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sdvo_select_ddc_bus(%struct.drm_i915_private* %0, %struct.intel_sdvo* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_sdvo*, align 8
  %5 = alloca %struct.sdvo_device_mapping*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.intel_sdvo* %1, %struct.intel_sdvo** %4, align 8
  %6 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %7 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PORT_B, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %14, align 8
  %16 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %15, i64 0
  store %struct.sdvo_device_mapping* %16, %struct.sdvo_device_mapping** %5, align 8
  br label %23

17:                                               ; preds = %2
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %20, align 8
  %22 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %21, i64 1
  store %struct.sdvo_device_mapping* %22, %struct.sdvo_device_mapping** %5, align 8
  br label %23

23:                                               ; preds = %17, %11
  %24 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %5, align 8
  %25 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %5, align 8
  %30 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, 240
  %33 = ashr i32 %32, 4
  %34 = shl i32 1, %33
  %35 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %36 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  br label %40

37:                                               ; preds = %23
  %38 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %39 = call i32 @intel_sdvo_guess_ddc_bus(%struct.intel_sdvo* %38)
  br label %40

40:                                               ; preds = %37, %28
  ret void
}

declare dso_local i32 @intel_sdvo_guess_ddc_bus(%struct.intel_sdvo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
