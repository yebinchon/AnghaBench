; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_trigger_aux_channel_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_trigger_aux_channel_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@_DPA_AUX_CH_CTL = common dso_local global i32 0, align 4
@AUX_CHANNEL_A = common dso_local global i32 0, align 4
@_PCH_DPB_AUX_CH_CTL = common dso_local global i32 0, align 4
@_DPB_AUX_CH_CTL = common dso_local global i32 0, align 4
@AUX_CHANNEL_B = common dso_local global i32 0, align 4
@_PCH_DPC_AUX_CH_CTL = common dso_local global i32 0, align 4
@_DPC_AUX_CH_CTL = common dso_local global i32 0, align 4
@AUX_CHANNEL_C = common dso_local global i32 0, align 4
@_PCH_DPD_AUX_CH_CTL = common dso_local global i32 0, align 4
@_DPD_AUX_CH_CTL = common dso_local global i32 0, align 4
@AUX_CHANNEL_D = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, i32)* @trigger_aux_channel_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trigger_aux_channel_interrupt(%struct.intel_vgpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %9 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @_DPA_AUX_CH_CTL, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @AUX_CHANNEL_A, align 4
  store i32 %17, i32* %7, align 4
  br label %55

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @_PCH_DPB_AUX_CH_CTL, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @_DPB_AUX_CH_CTL, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %18
  %27 = load i32, i32* @AUX_CHANNEL_B, align 4
  store i32 %27, i32* %7, align 4
  br label %54

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @_PCH_DPC_AUX_CH_CTL, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @_DPC_AUX_CH_CTL, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %28
  %37 = load i32, i32* @AUX_CHANNEL_C, align 4
  store i32 %37, i32* %7, align 4
  br label %53

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @_PCH_DPD_AUX_CH_CTL, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @_DPD_AUX_CH_CTL, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %38
  %47 = load i32, i32* @AUX_CHANNEL_D, align 4
  store i32 %47, i32* %7, align 4
  br label %52

48:                                               ; preds = %42
  %49 = call i32 @WARN_ON(i32 1)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %59

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %36
  br label %54

54:                                               ; preds = %53, %26
  br label %55

55:                                               ; preds = %54, %16
  %56 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @intel_vgpu_trigger_virtual_event(%struct.intel_vgpu* %56, i32 %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %48
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @intel_vgpu_trigger_virtual_event(%struct.intel_vgpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
