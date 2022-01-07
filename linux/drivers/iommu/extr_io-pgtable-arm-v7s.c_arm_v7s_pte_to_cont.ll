; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c_arm_v7s_pte_to_cont.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c_arm_v7s_pte_to_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_V7S_CONT_SECTION = common dso_local global i32 0, align 4
@ARM_V7S_CONT_PAGE_TEX_MASK = common dso_local global i32 0, align 4
@ARM_V7S_PTE_TYPE_PAGE = common dso_local global i32 0, align 4
@ARM_V7S_CONT_PAGE_XN_SHIFT = common dso_local global i32 0, align 4
@ARM_V7S_CONT_PAGE_TEX_SHIFT = common dso_local global i32 0, align 4
@ARM_V7S_PTE_TYPE_CONT_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @arm_v7s_pte_to_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_v7s_pte_to_cont(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* @ARM_V7S_CONT_SECTION, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  br label %43

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %42

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ARM_V7S_ATTR_XN(i32 %18)
  %20 = and i32 %17, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @ARM_V7S_CONT_PAGE_TEX_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @ARM_V7S_PTE_TYPE_PAGE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %3, align 4
  %30 = xor i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @ARM_V7S_CONT_PAGE_XN_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @ARM_V7S_CONT_PAGE_TEX_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = or i32 %33, %36
  %38 = load i32, i32* @ARM_V7S_PTE_TYPE_CONT_PAGE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %16, %13
  br label %43

43:                                               ; preds = %42, %9
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @ARM_V7S_ATTR_XN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
