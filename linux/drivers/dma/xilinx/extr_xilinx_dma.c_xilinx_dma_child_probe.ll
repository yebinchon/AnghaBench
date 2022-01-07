; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_dma_child_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_dma_child_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilinx_dma_device = type { i32, i32, i32, i64 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"dma-channels\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"missing dma-channels property\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xilinx_dma_device*, %struct.device_node*)* @xilinx_dma_child_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinx_dma_child_probe(%struct.xilinx_dma_device* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.xilinx_dma_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xilinx_dma_device* %0, %struct.xilinx_dma_device** %3, align 8
  store %struct.device_node* %1, %struct.device_node** %4, align 8
  store i32 1, i32* %7, align 4
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = call i32 @of_property_read_u32(%struct.device_node* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %3, align 8
  %14 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %3, align 8
  %19 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_warn(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %17, %12, %2
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %35, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %3, align 8
  %29 = load %struct.device_node*, %struct.device_node** %4, align 8
  %30 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %3, align 8
  %31 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = call i32 @xilinx_dma_chan_probe(%struct.xilinx_dma_device* %28, %struct.device_node* %29, i32 %32)
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %23

38:                                               ; preds = %23
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.xilinx_dma_device*, %struct.xilinx_dma_device** %3, align 8
  %41 = getelementptr inbounds %struct.xilinx_dma_device, %struct.xilinx_dma_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, %39
  store i32 %43, i32* %41, align 8
  ret i32 0
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @xilinx_dma_chan_probe(%struct.xilinx_dma_device*, %struct.device_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
