; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_hw_sequencer.c_dce112_enable_display_power_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_hw_sequencer.c_dce112_enable_display_power_gating.c"
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
@mmCRTC_MASTER_UPDATE_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc*, i64, %struct.dc_bios*, i32)* @dce112_enable_display_power_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce112_enable_display_power_gating(%struct.dc* %0, i64 %1, %struct.dc_bios* %2, i32 %3) #0 {
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
  %17 = load %struct.dc_context*, %struct.dc_context** %12, align 8
  %18 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @IS_FPGA_MAXIMUS_DC(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %74

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @PIPE_GATING_CONTROL_INIT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @ASIC_PIPE_INIT, align 4
  store i32 %28, i32* %11, align 4
  br label %38

29:                                               ; preds = %23
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @PIPE_GATING_CONTROL_ENABLE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @ASIC_PIPE_ENABLE, align 4
  store i32 %34, i32* %11, align 4
  br label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @ASIC_PIPE_DISABLE, align 4
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %35, %33
  br label %38

38:                                               ; preds = %37, %27
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @PIPE_GATING_CONTROL_INIT, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %7, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %42, %38
  %46 = load %struct.dc_bios*, %struct.dc_bios** %8, align 8
  %47 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.dc_bios*, i64, i32)*, i32 (%struct.dc_bios*, i64, i32)** %49, align 8
  %51 = load %struct.dc_bios*, %struct.dc_bios** %8, align 8
  %52 = load i64, i64* %7, align 8
  %53 = add nsw i64 %52, 1
  %54 = load i32, i32* %11, align 4
  %55 = call i32 %50(%struct.dc_bios* %51, i64 %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load %struct.dc_context*, %struct.dc_context** %12, align 8
  %57 = load i32, i32* @mmCRTC_MASTER_UPDATE_MODE, align 4
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @HW_REG_CRTC(i32 %57, i64 %58)
  %60 = call i32 @dm_write_reg(%struct.dc_context* %56, i32 %59, i32 0)
  br label %61

61:                                               ; preds = %45, %42
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @PIPE_GATING_CONTROL_ENABLE, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load %struct.dc_context*, %struct.dc_context** %12, align 8
  %67 = call i32 @dce112_init_pte(%struct.dc_context* %66)
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @BP_RESULT_OK, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 1, i32* %5, align 4
  br label %74

73:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %72, %22
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i64 @IS_FPGA_MAXIMUS_DC(i32) #1

declare dso_local i32 @dm_write_reg(%struct.dc_context*, i32, i32) #1

declare dso_local i32 @HW_REG_CRTC(i32, i64) #1

declare dso_local i32 @dce112_init_pte(%struct.dc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
