; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_acpi-dma.c_acpi_dma_request_slave_chan_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_acpi-dma.c_acpi_dma_request_slave_chan_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"dma-names\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Looking for DMA channel \22%s\22 at index %d...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_chan* @acpi_dma_request_slave_chan_by_name(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @device_property_match_string(%struct.device* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %27

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 1, i32* %6, align 4
  br label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.dma_chan* @ERR_PTR(i32 %24)
  store %struct.dma_chan* %25, %struct.dma_chan** %3, align 8
  br label %36

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %16
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @dev_dbg(%struct.device* %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %30, i32 %31)
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.dma_chan* @acpi_dma_request_slave_chan_by_index(%struct.device* %33, i32 %34)
  store %struct.dma_chan* %35, %struct.dma_chan** %3, align 8
  br label %36

36:                                               ; preds = %28, %22
  %37 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  ret %struct.dma_chan* %37
}

declare dso_local i32 @device_property_match_string(%struct.device*, i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.dma_chan* @ERR_PTR(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i32) #1

declare dso_local %struct.dma_chan* @acpi_dma_request_slave_chan_by_index(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
