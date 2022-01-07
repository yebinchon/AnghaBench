; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-bridge.c_fpga_bridge_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-bridge.c_fpga_bridge_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_bridge = type { i32, %struct.device }
%struct.device = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"fpga bridge [%s] registered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpga_bridge_register(%struct.fpga_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fpga_bridge*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.fpga_bridge* %0, %struct.fpga_bridge** %3, align 8
  %6 = load %struct.fpga_bridge*, %struct.fpga_bridge** %3, align 8
  %7 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %6, i32 0, i32 1
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call i32 @device_add(%struct.device* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %27

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 @of_platform_populate(i32 %17, i32* null, i32* null, %struct.device* %18)
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fpga_bridge*, %struct.fpga_bridge** %3, align 8
  %24 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_info(i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %14, %12
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @device_add(%struct.device*) #1

declare dso_local i32 @of_platform_populate(i32, i32*, i32*, %struct.device*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
