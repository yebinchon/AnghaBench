; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c_iopte_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c_iopte_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_LPAE_MAX_LEVELS = common dso_local global i32 0, align 4
@ARM_MALI_LPAE = common dso_local global i32 0, align 4
@ARM_LPAE_PTE_TYPE_PAGE = common dso_local global i64 0, align 8
@ARM_LPAE_PTE_TYPE_BLOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @iopte_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iopte_leaf(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @ARM_LPAE_MAX_LEVELS, align 4
  %10 = sub nsw i32 %9, 1
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @ARM_MALI_LPAE, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @iopte_type(i32 %17, i32 %18)
  %20 = load i64, i64* @ARM_LPAE_PTE_TYPE_PAGE, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %4, align 4
  br label %30

23:                                               ; preds = %12, %3
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @iopte_type(i32 %24, i32 %25)
  %27 = load i64, i64* @ARM_LPAE_PTE_TYPE_BLOCK, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %23, %16
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i64 @iopte_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
