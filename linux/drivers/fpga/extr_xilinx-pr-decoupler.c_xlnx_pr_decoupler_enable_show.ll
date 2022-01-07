; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_xilinx-pr-decoupler.c_xlnx_pr_decoupler_enable_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_xilinx-pr-decoupler.c_xlnx_pr_decoupler_enable_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_bridge = type { %struct.xlnx_pr_decoupler_data* }
%struct.xlnx_pr_decoupler_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_bridge*)* @xlnx_pr_decoupler_enable_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlnx_pr_decoupler_enable_show(%struct.fpga_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fpga_bridge*, align 8
  %4 = alloca %struct.xlnx_pr_decoupler_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fpga_bridge* %0, %struct.fpga_bridge** %3, align 8
  %7 = load %struct.fpga_bridge*, %struct.fpga_bridge** %3, align 8
  %8 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %7, i32 0, i32 0
  %9 = load %struct.xlnx_pr_decoupler_data*, %struct.xlnx_pr_decoupler_data** %8, align 8
  store %struct.xlnx_pr_decoupler_data* %9, %struct.xlnx_pr_decoupler_data** %4, align 8
  %10 = load %struct.xlnx_pr_decoupler_data*, %struct.xlnx_pr_decoupler_data** %4, align 8
  %11 = getelementptr inbounds %struct.xlnx_pr_decoupler_data, %struct.xlnx_pr_decoupler_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @clk_enable(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %31

18:                                               ; preds = %1
  %19 = load %struct.xlnx_pr_decoupler_data*, %struct.xlnx_pr_decoupler_data** %4, align 8
  %20 = getelementptr inbounds %struct.xlnx_pr_decoupler_data, %struct.xlnx_pr_decoupler_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @readl(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.xlnx_pr_decoupler_data*, %struct.xlnx_pr_decoupler_data** %4, align 8
  %24 = getelementptr inbounds %struct.xlnx_pr_decoupler_data, %struct.xlnx_pr_decoupler_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @clk_disable(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %18, %16
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
