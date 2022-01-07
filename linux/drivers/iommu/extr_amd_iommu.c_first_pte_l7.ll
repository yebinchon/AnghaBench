; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_first_pte_l7.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_first_pte_l7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64*, i64*)* @first_pte_l7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @first_pte_l7(i32* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @PTE_PAGE_SIZE(i32 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i64 @PAGE_SIZE_PTE_COUNT(i64 %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = shl i64 %16, 3
  %18 = sub i64 %17, 1
  %19 = xor i64 %18, -1
  store i64 %19, i64* %7, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = ptrtoint i32* %20 to i64
  %22 = load i64, i64* %7, align 8
  %23 = and i64 %21, %22
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %10, align 8
  %25 = load i64*, i64** %5, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i64, i64* %8, align 8
  %29 = load i64*, i64** %5, align 8
  store i64 %28, i64* %29, align 8
  br label %30

30:                                               ; preds = %27, %3
  %31 = load i64*, i64** %6, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i64, i64* %9, align 8
  %35 = load i64*, i64** %6, align 8
  store i64 %34, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32*, i32** %10, align 8
  ret i32* %37
}

declare dso_local i64 @PTE_PAGE_SIZE(i32) #1

declare dso_local i64 @PAGE_SIZE_PTE_COUNT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
