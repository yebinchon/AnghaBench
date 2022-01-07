; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga.c_socfpga_fpga_ops_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga.c_socfpga_fpga_ops_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { %struct.socfpga_fpga_priv* }
%struct.socfpga_fpga_priv = type { i32 }

@socfpga_state_to_framework_state = common dso_local global i32* null, align 8
@FPGA_MGR_STATE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*)* @socfpga_fpga_ops_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socfpga_fpga_ops_state(%struct.fpga_manager* %0) #0 {
  %2 = alloca %struct.fpga_manager*, align 8
  %3 = alloca %struct.socfpga_fpga_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.fpga_manager* %0, %struct.fpga_manager** %2, align 8
  %6 = load %struct.fpga_manager*, %struct.fpga_manager** %2, align 8
  %7 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %6, i32 0, i32 0
  %8 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %7, align 8
  store %struct.socfpga_fpga_priv* %8, %struct.socfpga_fpga_priv** %3, align 8
  %9 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %3, align 8
  %10 = call i64 @socfpga_fpga_state_get(%struct.socfpga_fpga_priv* %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i32*, i32** @socfpga_state_to_framework_state, align 8
  %13 = call i64 @ARRAY_SIZE(i32* %12)
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32*, i32** @socfpga_state_to_framework_state, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  br label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @FPGA_MGR_STATE_UNKNOWN, align 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %20, %15
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i64 @socfpga_fpga_state_get(%struct.socfpga_fpga_priv*) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
