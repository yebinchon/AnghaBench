; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_sanitize_aux_ch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_sanitize_aux_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ddi_vbt_port_info* }
%struct.ddi_vbt_port_info = type { i32, i64 }

@PORT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"port %c trying to use the same AUX CH (0x%x) as port %c, disabling port %c DP support\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @sanitize_aux_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sanitize_aux_ch(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ddi_vbt_port_info*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %10, i64 %12
  store %struct.ddi_vbt_port_info* %13, %struct.ddi_vbt_port_info** %5, align 8
  %14 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %5, align 8
  %15 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %50

19:                                               ; preds = %2
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %21 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %5, align 8
  %22 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @get_port_by_aux_ch(%struct.drm_i915_private* %20, i64 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @PORT_NONE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @port_name(i32 %29)
  %31 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %5, align 8
  %32 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @port_name(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @port_name(i32 %36)
  %38 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %33, i32 %35, i32 %37)
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %40 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %42, i64 %44
  store %struct.ddi_vbt_port_info* %45, %struct.ddi_vbt_port_info** %5, align 8
  %46 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %5, align 8
  %47 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %5, align 8
  %49 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %18, %28, %19
  ret void
}

declare dso_local i32 @get_port_by_aux_ch(%struct.drm_i915_private*, i64) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i64, i32, i32) #1

declare dso_local i32 @port_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
