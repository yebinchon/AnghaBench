; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dmar.c_dmar_fault_do_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dmar.c_dmar_fault_do_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32 }

@INTR_REMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"[INTR-REMAP] Request device [%02x:%02x.%d] fault index %llx [fault reason %02d] %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"[%s] Request device [%02x:%02x.%d] PASID %x fault addr %llx [fault reason %02d] %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"DMA Read\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"DMA Write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_iommu*, i32, i32, i32, i32, i64)* @dmar_fault_do_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_fault_do_one(%struct.intel_iommu* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.intel_iommu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.intel_iommu* %0, %struct.intel_iommu** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i8* @dmar_get_fault_reason(i32 %15, i32* %14)
  store i8* %16, i8** %13, align 8
  %17 = load i32, i32* %14, align 4
  %18 = load i32, i32* @INTR_REMAP, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %6
  %21 = load i32, i32* %11, align 4
  %22 = ashr i32 %21, 8
  %23 = load i32, i32* %11, align 4
  %24 = and i32 %23, 255
  %25 = call i32 @PCI_SLOT(i32 %24)
  %26 = load i32, i32* %11, align 4
  %27 = and i32 %26, 255
  %28 = call i32 @PCI_FUNC(i32 %27)
  %29 = load i64, i64* %12, align 8
  %30 = lshr i64 %29, 48
  %31 = load i32, i32* %9, align 4
  %32 = load i8*, i8** %13, align 8
  %33 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %28, i64 %30, i32 %31, i8* %32)
  br label %52

34:                                               ; preds = %6
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %39 = load i32, i32* %11, align 4
  %40 = ashr i32 %39, 8
  %41 = load i32, i32* %11, align 4
  %42 = and i32 %41, 255
  %43 = call i32 @PCI_SLOT(i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %44, 255
  %46 = call i32 @PCI_FUNC(i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = load i64, i64* %12, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32 %40, i32 %43, i32 %46, i32 %47, i64 %48, i32 %49, i8* %50)
  br label %52

52:                                               ; preds = %34, %20
  ret i32 0
}

declare dso_local i8* @dmar_get_fault_reason(i32, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
