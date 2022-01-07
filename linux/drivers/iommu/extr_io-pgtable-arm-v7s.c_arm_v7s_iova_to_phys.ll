; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c_arm_v7s_iova_to_phys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c_arm_v7s_iova_to_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_pgtable_ops = type { i32 }
%struct.arm_v7s_io_pgtable = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@ARM_V7S_CONT_PAGES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.io_pgtable_ops*, i64)* @arm_v7s_iova_to_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @arm_v7s_iova_to_phys(%struct.io_pgtable_ops* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.io_pgtable_ops*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.arm_v7s_io_pgtable*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.io_pgtable_ops* %0, %struct.io_pgtable_ops** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.io_pgtable_ops*, %struct.io_pgtable_ops** %4, align 8
  %12 = call %struct.arm_v7s_io_pgtable* @io_pgtable_ops_to_data(%struct.io_pgtable_ops* %11)
  store %struct.arm_v7s_io_pgtable* %12, %struct.arm_v7s_io_pgtable** %6, align 8
  %13 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %6, align 8
  %14 = getelementptr inbounds %struct.arm_v7s_io_pgtable, %struct.arm_v7s_io_pgtable* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %31, %2
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %9, align 4
  %20 = call i32 @ARM_V7S_LVL_IDX(i64 %17, i32 %19)
  %21 = load i32*, i32** %7, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @READ_ONCE(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %6, align 8
  %30 = call i32* @iopte_deref(i32 %27, i32 %28, %struct.arm_v7s_io_pgtable* %29)
  store i32* %30, i32** %7, align 8
  br label %31

31:                                               ; preds = %16
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @ARM_V7S_PTE_IS_TABLE(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %16, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @ARM_V7S_PTE_IS_VALID(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i64 0, i64* %3, align 8
  br label %64

41:                                               ; preds = %36
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @ARM_V7S_LVL_MASK(i32 %42)
  store i64 %43, i64* %10, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @arm_v7s_pte_is_cont(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i64, i64* @ARM_V7S_CONT_PAGES, align 8
  %50 = load i64, i64* %10, align 8
  %51 = mul i64 %50, %49
  store i64 %51, i64* %10, align 8
  br label %52

52:                                               ; preds = %48, %41
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %6, align 8
  %56 = getelementptr inbounds %struct.arm_v7s_io_pgtable, %struct.arm_v7s_io_pgtable* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i64 @iopte_to_paddr(i32 %53, i32 %54, i32* %57)
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %10, align 8
  %61 = xor i64 %60, -1
  %62 = and i64 %59, %61
  %63 = or i64 %58, %62
  store i64 %63, i64* %3, align 8
  br label %64

64:                                               ; preds = %52, %40
  %65 = load i64, i64* %3, align 8
  ret i64 %65
}

declare dso_local %struct.arm_v7s_io_pgtable* @io_pgtable_ops_to_data(%struct.io_pgtable_ops*) #1

declare dso_local i32 @ARM_V7S_LVL_IDX(i64, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32* @iopte_deref(i32, i32, %struct.arm_v7s_io_pgtable*) #1

declare dso_local i64 @ARM_V7S_PTE_IS_TABLE(i32, i32) #1

declare dso_local i32 @ARM_V7S_PTE_IS_VALID(i32) #1

declare dso_local i64 @ARM_V7S_LVL_MASK(i32) #1

declare dso_local i64 @arm_v7s_pte_is_cont(i32, i32) #1

declare dso_local i64 @iopte_to_paddr(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
