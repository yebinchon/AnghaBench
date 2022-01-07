; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_pdev_iommuv2_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_pdev_iommuv2_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@AMD_PRI_DEV_ERRATUM_LIMIT_REQ_ONE = common dso_local global i32 0, align 4
@AMD_PRI_DEV_ERRATUM_ENABLE_RESET = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @pdev_iommuv2_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdev_iommuv2_enable(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 32, i32* %5, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = load i32, i32* @AMD_PRI_DEV_ERRATUM_LIMIT_REQ_ONE, align 4
  %9 = call i32 @pdev_pri_erratum(%struct.pci_dev* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %12

12:                                               ; preds = %11, %1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = load i32, i32* @AMD_PRI_DEV_ERRATUM_ENABLE_RESET, align 4
  %15 = call i32 @pdev_pri_erratum(%struct.pci_dev* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = call i32 @pci_enable_pasid(%struct.pci_dev* %16, i32 0)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %52

21:                                               ; preds = %12
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = call i32 @pci_reset_pri(%struct.pci_dev* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %52

27:                                               ; preds = %21
  %28 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @pci_enable_pri(%struct.pci_dev* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %52

34:                                               ; preds = %27
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %39 = call i32 @pri_reset_while_enabled(%struct.pci_dev* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %52

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %34
  %45 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %46 = load i32, i32* @PAGE_SHIFT, align 4
  %47 = call i32 @pci_enable_ats(%struct.pci_dev* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %52

51:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %58

52:                                               ; preds = %50, %42, %33, %26, %20
  %53 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %54 = call i32 @pci_disable_pri(%struct.pci_dev* %53)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %56 = call i32 @pci_disable_pasid(%struct.pci_dev* %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %52, %51
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @pdev_pri_erratum(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_enable_pasid(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_reset_pri(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_pri(%struct.pci_dev*, i32) #1

declare dso_local i32 @pri_reset_while_enabled(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_ats(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_pri(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_pasid(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
