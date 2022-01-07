; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c_arm_v7s_cont_to_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c_arm_v7s_cont_to_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_V7S_CONT_SECTION = common dso_local global i32 0, align 4
@ARM_V7S_CONT_PAGE_XN_SHIFT = common dso_local global i32 0, align 4
@ARM_V7S_CONT_PAGE_TEX_MASK = common dso_local global i32 0, align 4
@ARM_V7S_CONT_PAGE_TEX_SHIFT = common dso_local global i32 0, align 4
@ARM_V7S_PTE_TYPE_CONT_PAGE = common dso_local global i32 0, align 4
@ARM_V7S_PTE_TYPE_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @arm_v7s_cont_to_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_v7s_cont_to_pte(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* @ARM_V7S_CONT_SECTION, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  br label %46

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %45

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @ARM_V7S_CONT_PAGE_XN_SHIFT, align 4
  %20 = call i32 @BIT(i32 %19)
  %21 = and i32 %18, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @ARM_V7S_CONT_PAGE_TEX_MASK, align 4
  %24 = load i32, i32* @ARM_V7S_CONT_PAGE_TEX_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = and i32 %22, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @ARM_V7S_PTE_TYPE_CONT_PAGE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %3, align 4
  %33 = xor i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @ARM_V7S_CONT_PAGE_XN_SHIFT, align 4
  %36 = ashr i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @ARM_V7S_CONT_PAGE_TEX_SHIFT, align 4
  %39 = ashr i32 %37, %38
  %40 = or i32 %36, %39
  %41 = load i32, i32* @ARM_V7S_PTE_TYPE_PAGE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %17, %14
  br label %46

46:                                               ; preds = %45, %9
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
