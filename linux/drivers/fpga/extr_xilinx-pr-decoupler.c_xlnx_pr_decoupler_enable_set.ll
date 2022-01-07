; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_xilinx-pr-decoupler.c_xlnx_pr_decoupler_enable_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_xilinx-pr-decoupler.c_xlnx_pr_decoupler_enable_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_bridge = type { %struct.xlnx_pr_decoupler_data* }
%struct.xlnx_pr_decoupler_data = type { i32 }

@CTRL_OFFSET = common dso_local global i32 0, align 4
@CTRL_CMD_COUPLE = common dso_local global i32 0, align 4
@CTRL_CMD_DECOUPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_bridge*, i32)* @xlnx_pr_decoupler_enable_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlnx_pr_decoupler_enable_set(%struct.fpga_bridge* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpga_bridge*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xlnx_pr_decoupler_data*, align 8
  store %struct.fpga_bridge* %0, %struct.fpga_bridge** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.fpga_bridge*, %struct.fpga_bridge** %4, align 8
  %9 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %8, i32 0, i32 0
  %10 = load %struct.xlnx_pr_decoupler_data*, %struct.xlnx_pr_decoupler_data** %9, align 8
  store %struct.xlnx_pr_decoupler_data* %10, %struct.xlnx_pr_decoupler_data** %7, align 8
  %11 = load %struct.xlnx_pr_decoupler_data*, %struct.xlnx_pr_decoupler_data** %7, align 8
  %12 = getelementptr inbounds %struct.xlnx_pr_decoupler_data, %struct.xlnx_pr_decoupler_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @clk_enable(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %37

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.xlnx_pr_decoupler_data*, %struct.xlnx_pr_decoupler_data** %7, align 8
  %24 = load i32, i32* @CTRL_OFFSET, align 4
  %25 = load i32, i32* @CTRL_CMD_COUPLE, align 4
  %26 = call i32 @xlnx_pr_decoupler_write(%struct.xlnx_pr_decoupler_data* %23, i32 %24, i32 %25)
  br label %32

27:                                               ; preds = %19
  %28 = load %struct.xlnx_pr_decoupler_data*, %struct.xlnx_pr_decoupler_data** %7, align 8
  %29 = load i32, i32* @CTRL_OFFSET, align 4
  %30 = load i32, i32* @CTRL_CMD_DECOUPLE, align 4
  %31 = call i32 @xlnx_pr_decoupler_write(%struct.xlnx_pr_decoupler_data* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.xlnx_pr_decoupler_data*, %struct.xlnx_pr_decoupler_data** %7, align 8
  %34 = getelementptr inbounds %struct.xlnx_pr_decoupler_data, %struct.xlnx_pr_decoupler_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @clk_disable(i32 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %17
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @xlnx_pr_decoupler_write(%struct.xlnx_pr_decoupler_data*, i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
