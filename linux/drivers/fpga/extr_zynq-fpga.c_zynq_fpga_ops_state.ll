; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_zynq-fpga.c_zynq_fpga_ops_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_zynq-fpga.c_zynq_fpga_ops_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { %struct.zynq_fpga_priv* }
%struct.zynq_fpga_priv = type { i32 }

@FPGA_MGR_STATE_UNKNOWN = common dso_local global i32 0, align 4
@INT_STS_OFFSET = common dso_local global i32 0, align 4
@IXR_PCFG_DONE_MASK = common dso_local global i32 0, align 4
@FPGA_MGR_STATE_OPERATING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*)* @zynq_fpga_ops_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynq_fpga_ops_state(%struct.fpga_manager* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fpga_manager*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.zynq_fpga_priv*, align 8
  store %struct.fpga_manager* %0, %struct.fpga_manager** %3, align 8
  %7 = load %struct.fpga_manager*, %struct.fpga_manager** %3, align 8
  %8 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %7, i32 0, i32 0
  %9 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %8, align 8
  store %struct.zynq_fpga_priv* %9, %struct.zynq_fpga_priv** %6, align 8
  %10 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %6, align 8
  %11 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @clk_enable(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @FPGA_MGR_STATE_UNKNOWN, align 4
  store i32 %17, i32* %2, align 4
  br label %34

18:                                               ; preds = %1
  %19 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %6, align 8
  %20 = load i32, i32* @INT_STS_OFFSET, align 4
  %21 = call i32 @zynq_fpga_read(%struct.zynq_fpga_priv* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %6, align 8
  %23 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_disable(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @IXR_PCFG_DONE_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i32, i32* @FPGA_MGR_STATE_OPERATING, align 4
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %18
  %33 = load i32, i32* @FPGA_MGR_STATE_UNKNOWN, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %30, %16
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @zynq_fpga_read(%struct.zynq_fpga_priv*, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
