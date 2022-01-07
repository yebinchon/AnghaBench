; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_get_port_by_aux_ch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_get_port_by_aux_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ddi_vbt_port_info* }
%struct.ddi_vbt_port_info = type { i64, i64 }

@PORT_A = common dso_local global i32 0, align 4
@I915_MAX_PORTS = common dso_local global i32 0, align 4
@PORT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i64)* @get_port_by_aux_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_port_by_aux_ch(%struct.drm_i915_private* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ddi_vbt_port_info*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @PORT_A, align 4
  store i32 %8, i32* %7, align 4
  br label %9

9:                                                ; preds = %34, %2
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @I915_MAX_PORTS, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %17, i64 %19
  store %struct.ddi_vbt_port_info* %20, %struct.ddi_vbt_port_info** %6, align 8
  %21 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %6, align 8
  %22 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %13
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %6, align 8
  %28 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %39

33:                                               ; preds = %25, %13
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %9

37:                                               ; preds = %9
  %38 = load i32, i32* @PORT_NONE, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %31
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
