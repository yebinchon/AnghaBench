; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_s390-iommu.c_s390_iommu_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_s390-iommu.c_s390_iommu_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.s390_domain = type { i32 }

@ZPCI_PTE_VALID = common dso_local global i32 0, align 4
@IOMMU_READ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IOMMU_WRITE = common dso_local global i32 0, align 4
@ZPCI_TABLE_PROTECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_domain*, i64, i64, i64, i32)* @s390_iommu_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_iommu_map(%struct.iommu_domain* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iommu_domain*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.s390_domain*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %16 = call %struct.s390_domain* @to_s390_domain(%struct.iommu_domain* %15)
  store %struct.s390_domain* %16, %struct.s390_domain** %12, align 8
  %17 = load i32, i32* @ZPCI_PTE_VALID, align 4
  store i32 %17, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @IOMMU_READ, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %42

25:                                               ; preds = %5
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @IOMMU_WRITE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ZPCI_TABLE_PROTECTED, align 4
  %32 = load i32, i32* %13, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load %struct.s390_domain*, %struct.s390_domain** %12, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @s390_iommu_update_trans(%struct.s390_domain* %35, i64 %36, i64 %37, i64 %38, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %34, %22
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local %struct.s390_domain* @to_s390_domain(%struct.iommu_domain*) #1

declare dso_local i32 @s390_iommu_update_trans(%struct.s390_domain*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
