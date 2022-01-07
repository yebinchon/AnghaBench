; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce100/extr_dce100_hw_sequencer.c_dce100_enable_display_power_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce100/extr_dce100_hw_sequencer.c_dce100_enable_display_power_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.dc_context* }
%struct.dc_context = type { i32 }
%struct.dc_bios = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dc_bios*, i64, i32)* }

@BP_RESULT_OK = common dso_local global i32 0, align 4
@PIPE_GATING_CONTROL_INIT = common dso_local global i32 0, align 4
@ASIC_PIPE_INIT = common dso_local global i32 0, align 4
@PIPE_GATING_CONTROL_ENABLE = common dso_local global i32 0, align 4
@ASIC_PIPE_ENABLE = common dso_local global i32 0, align 4
@ASIC_PIPE_DISABLE = common dso_local global i32 0, align 4
@mmMASTER_UPDATE_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce100_enable_display_power_gating(%struct.dc* %0, i64 %1, %struct.dc_bios* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dc_bios*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dc_context*, align 8
  store %struct.dc* %0, %struct.dc** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.dc_bios* %2, %struct.dc_bios** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.dc*, %struct.dc** %6, align 8
  %15 = getelementptr inbounds %struct.dc, %struct.dc* %14, i32 0, i32 0
  %16 = load %struct.dc_context*, %struct.dc_context** %15, align 8
  store %struct.dc_context* %16, %struct.dc_context** %12, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @PIPE_GATING_CONTROL_INIT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @ASIC_PIPE_INIT, align 4
  store i32 %21, i32* %11, align 4
  br label %31

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @PIPE_GATING_CONTROL_ENABLE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @ASIC_PIPE_ENABLE, align 4
  store i32 %27, i32* %11, align 4
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @ASIC_PIPE_DISABLE, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %28, %26
  br label %31

31:                                               ; preds = %30, %20
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @PIPE_GATING_CONTROL_INIT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %35, %31
  %39 = load %struct.dc_bios*, %struct.dc_bios** %8, align 8
  %40 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.dc_bios*, i64, i32)*, i32 (%struct.dc_bios*, i64, i32)** %42, align 8
  %44 = load %struct.dc_bios*, %struct.dc_bios** %8, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add nsw i64 %45, 1
  %47 = load i32, i32* %11, align 4
  %48 = call i32 %43(%struct.dc_bios* %44, i64 %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.dc_context*, %struct.dc_context** %12, align 8
  %50 = load i32, i32* @mmMASTER_UPDATE_MODE, align 4
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @HW_REG_CRTC(i32 %50, i64 %51)
  %53 = call i32 @dm_write_reg(%struct.dc_context* %49, i32 %52, i32 0)
  br label %54

54:                                               ; preds = %38, %35
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @BP_RESULT_OK, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 1, i32* %5, align 4
  br label %60

59:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %58
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @dm_write_reg(%struct.dc_context*, i32, i32) #1

declare dso_local i32 @HW_REG_CRTC(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
