; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_fdi_auto_training_started.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_fdi_auto_training_started.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32 }

@PORT_E = common dso_local global i32 0, align 4
@_FDI_RXA_CTL = common dso_local global i32 0, align 4
@DDI_BUF_CTL_ENABLE = common dso_local global i32 0, align 4
@FDI_RX_ENABLE = common dso_local global i32 0, align 4
@FDI_AUTO_TRAINING = common dso_local global i32 0, align 4
@DP_TP_CTL_ENABLE = common dso_local global i32 0, align 4
@DP_TP_CTL_FDI_AUTOTRAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*)* @fdi_auto_training_started to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdi_auto_training_started(%struct.intel_vgpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_vgpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %3, align 8
  %7 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %8 = load i32, i32* @PORT_E, align 4
  %9 = call i32 @DDI_BUF_CTL(i32 %8)
  %10 = call i32 @vgpu_vreg_t(%struct.intel_vgpu* %7, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %12 = load i32, i32* @_FDI_RXA_CTL, align 4
  %13 = call i32 @vgpu_vreg(%struct.intel_vgpu* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %15 = load i32, i32* @PORT_E, align 4
  %16 = call i32 @DP_TP_CTL(i32 %15)
  %17 = call i32 @vgpu_vreg_t(%struct.intel_vgpu* %14, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @DDI_BUF_CTL_ENABLE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @FDI_RX_ENABLE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @FDI_AUTO_TRAINING, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @DP_TP_CTL_ENABLE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @DP_TP_CTL_FDI_AUTOTRAIN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 1, i32* %2, align 4
  br label %44

43:                                               ; preds = %37, %32, %27, %22, %1
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %42
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @vgpu_vreg_t(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @DDI_BUF_CTL(i32) #1

declare dso_local i32 @vgpu_vreg(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @DP_TP_CTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
