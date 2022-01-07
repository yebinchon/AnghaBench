; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga-a10.c_socfpga_a10_fpga_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga-a10.c_socfpga_a10_fpga_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { %struct.a10_fpga_priv* }
%struct.a10_fpga_priv = type { i32 }

@A10_FPGAMGR_IMGCFG_STAT_F2S_USERMODE = common dso_local global i32 0, align 4
@FPGA_MGR_STATE_OPERATING = common dso_local global i32 0, align 4
@A10_FPGAMGR_IMGCFG_STAT_F2S_PR_READY = common dso_local global i32 0, align 4
@FPGA_MGR_STATE_WRITE = common dso_local global i32 0, align 4
@A10_FPGAMGR_IMGCFG_STAT_F2S_CRC_ERROR = common dso_local global i32 0, align 4
@FPGA_MGR_STATE_WRITE_COMPLETE_ERR = common dso_local global i32 0, align 4
@A10_FPGAMGR_IMGCFG_STAT_F2S_NSTATUS_PIN = common dso_local global i32 0, align 4
@FPGA_MGR_STATE_RESET = common dso_local global i32 0, align 4
@FPGA_MGR_STATE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*)* @socfpga_a10_fpga_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socfpga_a10_fpga_state(%struct.fpga_manager* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fpga_manager*, align 8
  %4 = alloca %struct.a10_fpga_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.fpga_manager* %0, %struct.fpga_manager** %3, align 8
  %6 = load %struct.fpga_manager*, %struct.fpga_manager** %3, align 8
  %7 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %6, i32 0, i32 0
  %8 = load %struct.a10_fpga_priv*, %struct.a10_fpga_priv** %7, align 8
  store %struct.a10_fpga_priv* %8, %struct.a10_fpga_priv** %4, align 8
  %9 = load %struct.a10_fpga_priv*, %struct.a10_fpga_priv** %4, align 8
  %10 = call i32 @socfpga_a10_fpga_read_stat(%struct.a10_fpga_priv* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @A10_FPGAMGR_IMGCFG_STAT_F2S_USERMODE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @FPGA_MGR_STATE_OPERATING, align 4
  store i32 %16, i32* %2, align 4
  br label %40

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @A10_FPGAMGR_IMGCFG_STAT_F2S_PR_READY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @FPGA_MGR_STATE_WRITE, align 4
  store i32 %23, i32* %2, align 4
  br label %40

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @A10_FPGAMGR_IMGCFG_STAT_F2S_CRC_ERROR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @FPGA_MGR_STATE_WRITE_COMPLETE_ERR, align 4
  store i32 %30, i32* %2, align 4
  br label %40

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @A10_FPGAMGR_IMGCFG_STAT_F2S_NSTATUS_PIN, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @FPGA_MGR_STATE_RESET, align 4
  store i32 %37, i32* %2, align 4
  br label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @FPGA_MGR_STATE_UNKNOWN, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %36, %29, %22, %15
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @socfpga_a10_fpga_read_stat(%struct.a10_fpga_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
