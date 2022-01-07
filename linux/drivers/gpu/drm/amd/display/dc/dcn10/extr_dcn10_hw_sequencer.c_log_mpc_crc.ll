; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_log_mpc_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_log_mpc_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.dce_hwseq*, %struct.dc_context* }
%struct.dce_hwseq = type { i32 }
%struct.dc_context = type { i32 }
%struct.dc_log_buffer_ctx = type { i32 }

@MPC_CRC_RESULT_GB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"MPC_CRC_RESULT_GB:%d MPC_CRC_RESULT_C:%d MPC_CRC_RESULT_AR:%d\0A\00", align 1
@MPC_CRC_RESULT_C = common dso_local global i32 0, align 4
@MPC_CRC_RESULT_AR = common dso_local global i32 0, align 4
@DPP_TOP0_DPP_CRC_VAL_B_A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"DPP_TOP0_DPP_CRC_VAL_B_A:%d DPP_TOP0_DPP_CRC_VAL_R_G:%d\0A\00", align 1
@DPP_TOP0_DPP_CRC_VAL_R_G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.dc_log_buffer_ctx*)* @log_mpc_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_mpc_crc(%struct.dc* %0, %struct.dc_log_buffer_ctx* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.dc_log_buffer_ctx*, align 8
  %5 = alloca %struct.dc_context*, align 8
  %6 = alloca %struct.dce_hwseq*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.dc_log_buffer_ctx* %1, %struct.dc_log_buffer_ctx** %4, align 8
  %7 = load %struct.dc*, %struct.dc** %3, align 8
  %8 = getelementptr inbounds %struct.dc, %struct.dc* %7, i32 0, i32 1
  %9 = load %struct.dc_context*, %struct.dc_context** %8, align 8
  store %struct.dc_context* %9, %struct.dc_context** %5, align 8
  %10 = load %struct.dc*, %struct.dc** %3, align 8
  %11 = getelementptr inbounds %struct.dc, %struct.dc* %10, i32 0, i32 0
  %12 = load %struct.dce_hwseq*, %struct.dce_hwseq** %11, align 8
  store %struct.dce_hwseq* %12, %struct.dce_hwseq** %6, align 8
  %13 = load i32, i32* @MPC_CRC_RESULT_GB, align 4
  %14 = call i64 @REG(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load i32, i32* @MPC_CRC_RESULT_GB, align 4
  %18 = call i32 @REG_READ(i32 %17)
  %19 = load i32, i32* @MPC_CRC_RESULT_C, align 4
  %20 = call i32 @REG_READ(i32 %19)
  %21 = load i32, i32* @MPC_CRC_RESULT_AR, align 4
  %22 = call i32 @REG_READ(i32 %21)
  %23 = call i32 (i8*, i32, i32, ...) @DTN_INFO(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20, i32 %22)
  br label %24

24:                                               ; preds = %16, %2
  %25 = load i32, i32* @DPP_TOP0_DPP_CRC_VAL_B_A, align 4
  %26 = call i64 @REG(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* @DPP_TOP0_DPP_CRC_VAL_B_A, align 4
  %30 = call i32 @REG_READ(i32 %29)
  %31 = load i32, i32* @DPP_TOP0_DPP_CRC_VAL_R_G, align 4
  %32 = call i32 @REG_READ(i32 %31)
  %33 = call i32 (i8*, i32, i32, ...) @DTN_INFO(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %28, %24
  ret void
}

declare dso_local i64 @REG(i32) #1

declare dso_local i32 @DTN_INFO(i8*, i32, i32, ...) #1

declare dso_local i32 @REG_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
