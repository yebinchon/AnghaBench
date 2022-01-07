; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_enable_display_power_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_enable_display_power_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_3__*, %struct.dc_context* }
%struct.TYPE_3__ = type { i32 }
%struct.dc_context = type { i32 }
%struct.dc_bios = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.dc_bios*, i32, i32)* }

@BP_RESULT_OK = common dso_local global i32 0, align 4
@PIPE_GATING_CONTROL_INIT = common dso_local global i32 0, align 4
@ASIC_PIPE_INIT = common dso_local global i32 0, align 4
@PIPE_GATING_CONTROL_ENABLE = common dso_local global i32 0, align 4
@ASIC_PIPE_ENABLE = common dso_local global i32 0, align 4
@ASIC_PIPE_DISABLE = common dso_local global i32 0, align 4
@CONTROLLER_ID_UNDERLAY0 = common dso_local global i32 0, align 4
@CONTROLLER_ID_MAX = common dso_local global i32 0, align 4
@mmCRTC_MASTER_UPDATE_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc*, i32, %struct.dc_bios*, i32)* @dce110_enable_display_power_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce110_enable_display_power_gating(%struct.dc* %0, i32 %1, %struct.dc_bios* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dc_bios*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dc_context*, align 8
  %13 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dc_bios* %2, %struct.dc_bios** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %14, i32* %10, align 4
  %15 = load %struct.dc*, %struct.dc** %6, align 8
  %16 = getelementptr inbounds %struct.dc, %struct.dc* %15, i32 0, i32 1
  %17 = load %struct.dc_context*, %struct.dc_context** %16, align 8
  store %struct.dc_context* %17, %struct.dc_context** %12, align 8
  %18 = load %struct.dc*, %struct.dc** %6, align 8
  %19 = getelementptr inbounds %struct.dc, %struct.dc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  %23 = load %struct.dc_context*, %struct.dc_context** %12, align 8
  %24 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @IS_FPGA_MAXIMUS_DC(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %93

29:                                               ; preds = %4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @PIPE_GATING_CONTROL_INIT, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @ASIC_PIPE_INIT, align 4
  store i32 %34, i32* %11, align 4
  br label %44

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @PIPE_GATING_CONTROL_ENABLE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @ASIC_PIPE_ENABLE, align 4
  store i32 %40, i32* %11, align 4
  br label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @ASIC_PIPE_DISABLE, align 4
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %41, %39
  br label %44

44:                                               ; preds = %43, %33
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @CONTROLLER_ID_UNDERLAY0, align 4
  %50 = sub i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @PIPE_GATING_CONTROL_INIT, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %55, %51
  %59 = load %struct.dc_bios*, %struct.dc_bios** %8, align 8
  %60 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32 (%struct.dc_bios*, i32, i32)*, i32 (%struct.dc_bios*, i32, i32)** %62, align 8
  %64 = load %struct.dc_bios*, %struct.dc_bios** %8, align 8
  %65 = load i32, i32* %7, align 4
  %66 = add i32 %65, 1
  %67 = load i32, i32* %11, align 4
  %68 = call i32 %63(%struct.dc_bios* %64, i32 %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @CONTROLLER_ID_MAX, align 4
  %71 = sub nsw i32 %70, 1
  %72 = icmp ult i32 %69, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %58
  %74 = load %struct.dc_context*, %struct.dc_context** %12, align 8
  %75 = load i32, i32* @mmCRTC_MASTER_UPDATE_MODE, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @HW_REG_CRTC(i32 %75, i32 %76)
  %78 = call i32 @dm_write_reg(%struct.dc_context* %74, i32 %77, i32 0)
  br label %79

79:                                               ; preds = %73, %58
  br label %80

80:                                               ; preds = %79, %55
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @PIPE_GATING_CONTROL_ENABLE, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load %struct.dc_context*, %struct.dc_context** %12, align 8
  %86 = call i32 @dce110_init_pte(%struct.dc_context* %85)
  br label %87

87:                                               ; preds = %84, %80
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @BP_RESULT_OK, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 1, i32* %5, align 4
  br label %93

92:                                               ; preds = %87
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %91, %28
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i64 @IS_FPGA_MAXIMUS_DC(i32) #1

declare dso_local i32 @dm_write_reg(%struct.dc_context*, i32, i32) #1

declare dso_local i32 @HW_REG_CRTC(i32, i32) #1

declare dso_local i32 @dce110_init_pte(%struct.dc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
