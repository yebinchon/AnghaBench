; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_read_otg_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_read_otg_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optc = type { i32 }
%struct.dcn_otg_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@OTG_CONTROL = common dso_local global i32 0, align 4
@OTG_MASTER_EN = common dso_local global i32 0, align 4
@OTG_V_BLANK_START_END = common dso_local global i32 0, align 4
@OTG_V_BLANK_START = common dso_local global i32 0, align 4
@OTG_V_BLANK_END = common dso_local global i32 0, align 4
@OTG_V_SYNC_A_CNTL = common dso_local global i32 0, align 4
@OTG_V_SYNC_A_POL = common dso_local global i32 0, align 4
@OTG_V_TOTAL = common dso_local global i32 0, align 4
@OTG_V_TOTAL_MAX = common dso_local global i32 0, align 4
@OTG_V_TOTAL_MIN = common dso_local global i32 0, align 4
@OTG_V_TOTAL_CONTROL = common dso_local global i32 0, align 4
@OTG_V_TOTAL_MAX_SEL = common dso_local global i32 0, align 4
@OTG_V_TOTAL_MIN_SEL = common dso_local global i32 0, align 4
@OTG_V_SYNC_A = common dso_local global i32 0, align 4
@OTG_V_SYNC_A_START = common dso_local global i32 0, align 4
@OTG_V_SYNC_A_END = common dso_local global i32 0, align 4
@OTG_H_BLANK_START_END = common dso_local global i32 0, align 4
@OTG_H_BLANK_START = common dso_local global i32 0, align 4
@OTG_H_BLANK_END = common dso_local global i32 0, align 4
@OTG_H_SYNC_A = common dso_local global i32 0, align 4
@OTG_H_SYNC_A_START = common dso_local global i32 0, align 4
@OTG_H_SYNC_A_END = common dso_local global i32 0, align 4
@OTG_H_SYNC_A_CNTL = common dso_local global i32 0, align 4
@OTG_H_SYNC_A_POL = common dso_local global i32 0, align 4
@OTG_H_TOTAL = common dso_local global i32 0, align 4
@OPTC_INPUT_GLOBAL_CONTROL = common dso_local global i32 0, align 4
@OPTC_UNDERFLOW_OCCURRED_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optc1_read_otg_state(%struct.optc* %0, %struct.dcn_otg_state* %1) #0 {
  %3 = alloca %struct.optc*, align 8
  %4 = alloca %struct.dcn_otg_state*, align 8
  store %struct.optc* %0, %struct.optc** %3, align 8
  store %struct.dcn_otg_state* %1, %struct.dcn_otg_state** %4, align 8
  %5 = load i32, i32* @OTG_CONTROL, align 4
  %6 = load i32, i32* @OTG_MASTER_EN, align 4
  %7 = load %struct.dcn_otg_state*, %struct.dcn_otg_state** %4, align 8
  %8 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %7, i32 0, i32 17
  %9 = call i32 @REG_GET(i32 %5, i32 %6, i32* %8)
  %10 = load i32, i32* @OTG_V_BLANK_START_END, align 4
  %11 = load i32, i32* @OTG_V_BLANK_START, align 4
  %12 = load %struct.dcn_otg_state*, %struct.dcn_otg_state** %4, align 8
  %13 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %12, i32 0, i32 16
  %14 = load i32, i32* @OTG_V_BLANK_END, align 4
  %15 = load %struct.dcn_otg_state*, %struct.dcn_otg_state** %4, align 8
  %16 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %15, i32 0, i32 15
  %17 = call i32 @REG_GET_2(i32 %10, i32 %11, i32* %13, i32 %14, i32* %16)
  %18 = load i32, i32* @OTG_V_SYNC_A_CNTL, align 4
  %19 = load i32, i32* @OTG_V_SYNC_A_POL, align 4
  %20 = load %struct.dcn_otg_state*, %struct.dcn_otg_state** %4, align 8
  %21 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %20, i32 0, i32 14
  %22 = call i32 @REG_GET(i32 %18, i32 %19, i32* %21)
  %23 = load i32, i32* @OTG_V_TOTAL, align 4
  %24 = load i32, i32* @OTG_V_TOTAL, align 4
  %25 = load %struct.dcn_otg_state*, %struct.dcn_otg_state** %4, align 8
  %26 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %25, i32 0, i32 13
  %27 = call i32 @REG_GET(i32 %23, i32 %24, i32* %26)
  %28 = load i32, i32* @OTG_V_TOTAL_MAX, align 4
  %29 = load i32, i32* @OTG_V_TOTAL_MAX, align 4
  %30 = load %struct.dcn_otg_state*, %struct.dcn_otg_state** %4, align 8
  %31 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %30, i32 0, i32 12
  %32 = call i32 @REG_GET(i32 %28, i32 %29, i32* %31)
  %33 = load i32, i32* @OTG_V_TOTAL_MIN, align 4
  %34 = load i32, i32* @OTG_V_TOTAL_MIN, align 4
  %35 = load %struct.dcn_otg_state*, %struct.dcn_otg_state** %4, align 8
  %36 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %35, i32 0, i32 11
  %37 = call i32 @REG_GET(i32 %33, i32 %34, i32* %36)
  %38 = load i32, i32* @OTG_V_TOTAL_CONTROL, align 4
  %39 = load i32, i32* @OTG_V_TOTAL_MAX_SEL, align 4
  %40 = load %struct.dcn_otg_state*, %struct.dcn_otg_state** %4, align 8
  %41 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %40, i32 0, i32 10
  %42 = call i32 @REG_GET(i32 %38, i32 %39, i32* %41)
  %43 = load i32, i32* @OTG_V_TOTAL_CONTROL, align 4
  %44 = load i32, i32* @OTG_V_TOTAL_MIN_SEL, align 4
  %45 = load %struct.dcn_otg_state*, %struct.dcn_otg_state** %4, align 8
  %46 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %45, i32 0, i32 9
  %47 = call i32 @REG_GET(i32 %43, i32 %44, i32* %46)
  %48 = load i32, i32* @OTG_V_SYNC_A, align 4
  %49 = load i32, i32* @OTG_V_SYNC_A_START, align 4
  %50 = load %struct.dcn_otg_state*, %struct.dcn_otg_state** %4, align 8
  %51 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %50, i32 0, i32 8
  %52 = load i32, i32* @OTG_V_SYNC_A_END, align 4
  %53 = load %struct.dcn_otg_state*, %struct.dcn_otg_state** %4, align 8
  %54 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %53, i32 0, i32 7
  %55 = call i32 @REG_GET_2(i32 %48, i32 %49, i32* %51, i32 %52, i32* %54)
  %56 = load i32, i32* @OTG_H_BLANK_START_END, align 4
  %57 = load i32, i32* @OTG_H_BLANK_START, align 4
  %58 = load %struct.dcn_otg_state*, %struct.dcn_otg_state** %4, align 8
  %59 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %58, i32 0, i32 6
  %60 = load i32, i32* @OTG_H_BLANK_END, align 4
  %61 = load %struct.dcn_otg_state*, %struct.dcn_otg_state** %4, align 8
  %62 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %61, i32 0, i32 5
  %63 = call i32 @REG_GET_2(i32 %56, i32 %57, i32* %59, i32 %60, i32* %62)
  %64 = load i32, i32* @OTG_H_SYNC_A, align 4
  %65 = load i32, i32* @OTG_H_SYNC_A_START, align 4
  %66 = load %struct.dcn_otg_state*, %struct.dcn_otg_state** %4, align 8
  %67 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %66, i32 0, i32 4
  %68 = load i32, i32* @OTG_H_SYNC_A_END, align 4
  %69 = load %struct.dcn_otg_state*, %struct.dcn_otg_state** %4, align 8
  %70 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %69, i32 0, i32 3
  %71 = call i32 @REG_GET_2(i32 %64, i32 %65, i32* %67, i32 %68, i32* %70)
  %72 = load i32, i32* @OTG_H_SYNC_A_CNTL, align 4
  %73 = load i32, i32* @OTG_H_SYNC_A_POL, align 4
  %74 = load %struct.dcn_otg_state*, %struct.dcn_otg_state** %4, align 8
  %75 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %74, i32 0, i32 2
  %76 = call i32 @REG_GET(i32 %72, i32 %73, i32* %75)
  %77 = load i32, i32* @OTG_H_TOTAL, align 4
  %78 = load i32, i32* @OTG_H_TOTAL, align 4
  %79 = load %struct.dcn_otg_state*, %struct.dcn_otg_state** %4, align 8
  %80 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %79, i32 0, i32 1
  %81 = call i32 @REG_GET(i32 %77, i32 %78, i32* %80)
  %82 = load i32, i32* @OPTC_INPUT_GLOBAL_CONTROL, align 4
  %83 = load i32, i32* @OPTC_UNDERFLOW_OCCURRED_STATUS, align 4
  %84 = load %struct.dcn_otg_state*, %struct.dcn_otg_state** %4, align 8
  %85 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %84, i32 0, i32 0
  %86 = call i32 @REG_GET(i32 %82, i32 %83, i32* %85)
  ret void
}

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

declare dso_local i32 @REG_GET_2(i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
