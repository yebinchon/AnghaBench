; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_init_vbt_missing_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_init_vbt_missing_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ddi_vbt_port_info* }
%struct.ddi_vbt_port_info = type { i32, i32, i32, i32 }

@PORT_A = common dso_local global i32 0, align 4
@I915_MAX_PORTS = common dso_local global i32 0, align 4
@PORT_E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @init_vbt_missing_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_vbt_missing_defaults(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ddi_vbt_port_info*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %6 = load i32, i32* @PORT_A, align 4
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %57, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @I915_MAX_PORTS, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %60

11:                                               ; preds = %7
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %15, i64 %17
  store %struct.ddi_vbt_port_info* %18, %struct.ddi_vbt_port_info** %4, align 8
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @intel_port_to_phy(%struct.drm_i915_private* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @intel_phy_is_tc(%struct.drm_i915_private* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %11
  br label %57

27:                                               ; preds = %11
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @PORT_A, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @PORT_E, align 4
  %34 = icmp ne i32 %32, %33
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ false, %27 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %4, align 8
  %39 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %4, align 8
  %41 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %4, align 8
  %44 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @PORT_E, align 4
  %47 = icmp ne i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %4, align 8
  %50 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @PORT_A, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %4, align 8
  %56 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %35, %26
  %58 = load i32, i32* %3, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %7

60:                                               ; preds = %7
  ret void
}

declare dso_local i32 @intel_port_to_phy(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @intel_phy_is_tc(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
