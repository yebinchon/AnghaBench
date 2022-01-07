; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_check_fdi_rx_train_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_check_fdi_rx_train_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32 }

@FDI_LINK_TRAIN_PATTERN1 = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN_1_CPT = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN_1 = common dso_local global i32 0, align 4
@FDI_RX_BIT_LOCK = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN2 = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN_2_CPT = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN_2 = common dso_local global i32 0, align 4
@FDI_RX_SYMBOL_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid train pattern %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FDI_RX_ENABLE = common dso_local global i32 0, align 4
@FDI_TX_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, i32, i32)* @check_fdi_rx_train_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_fdi_rx_train_status(%struct.intel_vgpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_vgpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @FDI_RX_IMR(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @FDI_TX_CTL(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @FDI_RX_CTL(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @FDI_LINK_TRAIN_PATTERN1, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_1_CPT, align 4
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_1, align 4
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* @FDI_RX_BIT_LOCK, align 4
  store i32 %28, i32* %15, align 4
  br label %43

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @FDI_LINK_TRAIN_PATTERN2, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_2_CPT, align 4
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_2, align 4
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* @FDI_RX_SYMBOL_LOCK, align 4
  store i32 %36, i32* %15, align 4
  br label %42

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %75

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %25
  %44 = load i32, i32* @FDI_RX_ENABLE, align 4
  %45 = load i32, i32* %13, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* @FDI_TX_ENABLE, align 4
  %48 = load i32, i32* %14, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %12, align 4
  %50 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @vgpu_vreg_t(%struct.intel_vgpu* %50, i32 %51)
  %53 = load i32, i32* %15, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %75

57:                                               ; preds = %43
  %58 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @vgpu_vreg_t(%struct.intel_vgpu* %58, i32 %59)
  %61 = load i32, i32* %12, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* %12, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @vgpu_vreg_t(%struct.intel_vgpu* %66, i32 %67)
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  store i32 1, i32* %4, align 4
  br label %75

74:                                               ; preds = %65, %57
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %73, %56, %37
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @FDI_RX_IMR(i32) #1

declare dso_local i32 @FDI_TX_CTL(i32) #1

declare dso_local i32 @FDI_RX_CTL(i32) #1

declare dso_local i32 @gvt_vgpu_err(i8*, i32) #1

declare dso_local i32 @vgpu_vreg_t(%struct.intel_vgpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
