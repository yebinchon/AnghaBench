; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_source_max_tmds_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_source_max_tmds_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ddi_vbt_port_info* }
%struct.ddi_vbt_port_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_encoder*)* @intel_hdmi_source_max_tmds_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hdmi_source_max_tmds_clock(%struct.intel_encoder* %0) #0 {
  %2 = alloca %struct.intel_encoder*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.ddi_vbt_port_info*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %2, align 8
  %6 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %7 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.drm_i915_private* @to_i915(i32 %9)
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %3, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %13, align 8
  %15 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %16 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %14, i64 %17
  store %struct.ddi_vbt_port_info* %18, %struct.ddi_vbt_port_info** %4, align 8
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %20 = call i32 @INTEL_GEN(%struct.drm_i915_private* %19)
  %21 = icmp sge i32 %20, 10
  br i1 %21, label %26, label %22

22:                                               ; preds = %1
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %24 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %1
  store i32 594000, i32* %5, align 4
  br label %44

27:                                               ; preds = %22
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %29 = call i32 @INTEL_GEN(%struct.drm_i915_private* %28)
  %30 = icmp sge i32 %29, 8
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %33 = call i64 @IS_HASWELL(%struct.drm_i915_private* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %27
  store i32 300000, i32* %5, align 4
  br label %43

36:                                               ; preds = %31
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %38 = call i32 @INTEL_GEN(%struct.drm_i915_private* %37)
  %39 = icmp sge i32 %38, 5
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 225000, i32* %5, align 4
  br label %42

41:                                               ; preds = %36
  store i32 165000, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %40
  br label %43

43:                                               ; preds = %42, %35
  br label %44

44:                                               ; preds = %43, %26
  %45 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %4, align 8
  %46 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %4, align 8
  %52 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @min(i32 %50, i64 %53)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @min(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
