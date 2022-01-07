; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-bridge.c_fpga_bridge_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-bridge.c_fpga_bridge_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_bridge = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.fpga_bridge*, i32)* }

@.str = private unnamed_addr constant [9 x i8] c"disable\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpga_bridge_disable(%struct.fpga_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fpga_bridge*, align 8
  store %struct.fpga_bridge* %0, %struct.fpga_bridge** %3, align 8
  %4 = load %struct.fpga_bridge*, %struct.fpga_bridge** %3, align 8
  %5 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %4, i32 0, i32 1
  %6 = call i32 @dev_dbg(i32* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.fpga_bridge*, %struct.fpga_bridge** %3, align 8
  %8 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.fpga_bridge*, %struct.fpga_bridge** %3, align 8
  %13 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.fpga_bridge*, i32)*, i32 (%struct.fpga_bridge*, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.fpga_bridge*, i32)* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load %struct.fpga_bridge*, %struct.fpga_bridge** %3, align 8
  %20 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.fpga_bridge*, i32)*, i32 (%struct.fpga_bridge*, i32)** %22, align 8
  %24 = load %struct.fpga_bridge*, %struct.fpga_bridge** %3, align 8
  %25 = call i32 %23(%struct.fpga_bridge* %24, i32 0)
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %11, %1
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %18
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
