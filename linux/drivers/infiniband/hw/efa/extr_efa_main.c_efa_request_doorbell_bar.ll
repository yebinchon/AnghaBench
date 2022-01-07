; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_main.c_efa_request_doorbell_bar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_main.c_efa_request_doorbell_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_dev = type { %struct.pci_dev*, i32, i32, %struct.TYPE_2__ }
%struct.pci_dev = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EFA_BASE_BAR_MASK = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@DRV_MODULE_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"pci_request_selected_regions for bar %d failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efa_dev*)* @efa_request_doorbell_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efa_request_doorbell_bar(%struct.efa_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efa_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.efa_dev* %0, %struct.efa_dev** %3, align 8
  %8 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %9 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %13 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %12, i32 0, i32 0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @BIT(i32 %15)
  %17 = load i32, i32* @EFA_BASE_BAR_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %1
  %21 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %22 = load i32, i32* @IORESOURCE_MEM, align 4
  %23 = call i32 @pci_select_bars(%struct.pci_dev* %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = and i32 %23, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @DRV_MODULE_NAME, align 4
  %30 = call i32 @pci_request_selected_regions(%struct.pci_dev* %27, i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %20
  %34 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %35 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %34, i32 0, i32 0
  %36 = load %struct.pci_dev*, %struct.pci_dev** %35, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %58

42:                                               ; preds = %20
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %45 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %44, i32 0, i32 0
  %46 = load %struct.pci_dev*, %struct.pci_dev** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @pci_resource_start(%struct.pci_dev* %46, i32 %47)
  %49 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %50 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %52 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %51, i32 0, i32 0
  %53 = load %struct.pci_dev*, %struct.pci_dev** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @pci_resource_len(%struct.pci_dev* %53, i32 %54)
  %56 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %57 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %43, %33
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pci_select_bars(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_request_selected_regions(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
