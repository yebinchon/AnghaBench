; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c_iopte_to_paddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c_iopte_to_paddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_pgtable_cfg = type { i32 }

@ARM_V7S_TABLE_MASK = common dso_local global i32 0, align 4
@ARM_V7S_CONT_PAGES = common dso_local global i32 0, align 4
@ARM_V7S_ATTR_MTK_PA_BIT32 = common dso_local global i32 0, align 4
@ARM_V7S_ATTR_MTK_PA_BIT33 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.io_pgtable_cfg*)* @iopte_to_paddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iopte_to_paddr(i32 %0, i32 %1, %struct.io_pgtable_cfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.io_pgtable_cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.io_pgtable_cfg* %2, %struct.io_pgtable_cfg** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @ARM_V7S_PTE_IS_TABLE(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @ARM_V7S_TABLE_MASK, align 4
  store i32 %15, i32* %8, align 4
  br label %30

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @arm_v7s_pte_is_cont(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ARM_V7S_LVL_MASK(i32 %22)
  %24 = load i32, i32* @ARM_V7S_CONT_PAGES, align 4
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %8, align 4
  br label %29

26:                                               ; preds = %16
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ARM_V7S_LVL_MASK(i32 %27)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %26, %21
  br label %30

30:                                               ; preds = %29, %14
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %7, align 8
  %35 = call i32 @arm_v7s_is_mtk_enabled(%struct.io_pgtable_cfg* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %59

39:                                               ; preds = %30
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @ARM_V7S_ATTR_MTK_PA_BIT32, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = call i32 @BIT_ULL(i32 32)
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @ARM_V7S_ATTR_MTK_PA_BIT33, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = call i32 @BIT_ULL(i32 33)
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %37
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @ARM_V7S_PTE_IS_TABLE(i32, i32) #1

declare dso_local i64 @arm_v7s_pte_is_cont(i32, i32) #1

declare dso_local i32 @ARM_V7S_LVL_MASK(i32) #1

declare dso_local i32 @arm_v7s_is_mtk_enabled(%struct.io_pgtable_cfg*) #1

declare dso_local i32 @BIT_ULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
