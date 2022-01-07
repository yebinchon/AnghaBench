; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pcie.c_hfi1_pcie_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pcie.c_hfi1_pcie_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"pci enable failed: error %d\0A\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"pci_request_regions fails: err %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Unable to set DMA mask: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Unable to set DMA consistent mask: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_pcie_init(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  %6 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %7 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %6, i32 0, i32 0
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %10 = call i32 @pci_enable_device(%struct.pci_dev* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 0, %15
  %17 = call i32 @dd_dev_err(%struct.hfi1_devdata* %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %70

19:                                               ; preds = %1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = load i32, i32* @DRIVER_NAME, align 4
  %22 = call i32 @pci_request_regions(%struct.pci_dev* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 0, %27
  %29 = call i32 @dd_dev_err(%struct.hfi1_devdata* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %66

30:                                               ; preds = %19
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = call i32 @DMA_BIT_MASK(i32 64)
  %33 = call i32 @pci_set_dma_mask(%struct.pci_dev* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %30
  %37 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %38 = call i32 @DMA_BIT_MASK(i32 32)
  %39 = call i32 @pci_set_dma_mask(%struct.pci_dev* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @dd_dev_err(%struct.hfi1_devdata* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %66

46:                                               ; preds = %36
  %47 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %48 = call i32 @DMA_BIT_MASK(i32 32)
  %49 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %47, i32 %48)
  store i32 %49, i32* %4, align 4
  br label %54

50:                                               ; preds = %30
  %51 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %52 = call i32 @DMA_BIT_MASK(i32 64)
  %53 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %51, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @dd_dev_err(%struct.hfi1_devdata* %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  br label %66

61:                                               ; preds = %54
  %62 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %63 = call i32 @pci_set_master(%struct.pci_dev* %62)
  %64 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %65 = call i32 @pci_enable_pcie_error_reporting(%struct.pci_dev* %64)
  store i32 0, i32* %2, align 4
  br label %70

66:                                               ; preds = %57, %42, %25
  %67 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %68 = call i32 @hfi1_pcie_cleanup(%struct.pci_dev* %67)
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %66, %61, %13
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @hfi1_pcie_cleanup(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
