; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_main.c_efa_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_main.c_efa_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_com_dev = type { i32 }
%struct.pci_dev = type { i32 }

@EFA_REGS_RESET_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"pci_set_dma_mask failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"err_pci_set_consistent_dma_mask failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efa_com_dev*, %struct.pci_dev*)* @efa_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efa_device_init(%struct.efa_com_dev* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efa_com_dev*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.efa_com_dev* %0, %struct.efa_com_dev** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %8 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %9 = load i32, i32* @EFA_REGS_RESET_NORMAL, align 4
  %10 = call i32 @efa_com_dev_reset(%struct.efa_com_dev* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %57

15:                                               ; preds = %2
  %16 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %17 = call i32 @efa_com_validate_version(%struct.efa_com_dev* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %57

22:                                               ; preds = %15
  %23 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %24 = call i32 @efa_com_get_dma_width(%struct.efa_com_dev* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %57

30:                                               ; preds = %22
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @DMA_BIT_MASK(i32 %32)
  %34 = call i32 @pci_set_dma_mask(%struct.pci_dev* %31, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %57

43:                                               ; preds = %30
  %44 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @DMA_BIT_MASK(i32 %45)
  %47 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %44, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %50, %37, %27, %20, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @efa_com_dev_reset(%struct.efa_com_dev*, i32) #1

declare dso_local i32 @efa_com_validate_version(%struct.efa_com_dev*) #1

declare dso_local i32 @efa_com_get_dma_width(%struct.efa_com_dev*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
