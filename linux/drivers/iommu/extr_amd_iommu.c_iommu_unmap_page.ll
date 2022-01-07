; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_iommu_unmap_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_iommu_unmap_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protection_domain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.protection_domain*, i64, i64)* @iommu_unmap_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iommu_unmap_page(%struct.protection_domain* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.protection_domain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.protection_domain* %0, %struct.protection_domain** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @is_power_of_2(i64 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %44, %3
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %18
  %23 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i64* @fetch_pte(%struct.protection_domain* %23, i64 %24, i64* %8)
  store i64* %25, i64** %9, align 8
  %26 = load i64*, i64** %9, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @PAGE_SIZE_PTE_COUNT(i64 %29)
  store i32 %30, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %40, %28
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i64*, i64** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %31

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %22
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %8, align 8
  %47 = sub i64 %46, 1
  %48 = xor i64 %47, -1
  %49 = and i64 %45, %48
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %49, %50
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %7, align 8
  br label %18

55:                                               ; preds = %18
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @is_power_of_2(i64 %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %58, %55
  %64 = phi i1 [ false, %55 ], [ %62, %58 ]
  %65 = zext i1 %64 to i32
  %66 = call i32 @BUG_ON(i32 %65)
  %67 = load i64, i64* %7, align 8
  ret i64 %67
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i64* @fetch_pte(%struct.protection_domain*, i64, i64*) #1

declare dso_local i32 @PAGE_SIZE_PTE_COUNT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
