; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c_arm_v7s_split_cont.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c_arm_v7s_split_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_v7s_io_pgtable = type { %struct.io_pgtable }
%struct.io_pgtable = type { i32 }

@ARM_V7S_CONT_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.arm_v7s_io_pgtable*, i64, i32, i32, i64*)* @arm_v7s_split_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @arm_v7s_split_cont(%struct.arm_v7s_io_pgtable* %0, i64 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.arm_v7s_io_pgtable*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.io_pgtable*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.arm_v7s_io_pgtable* %0, %struct.arm_v7s_io_pgtable** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %16 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %7, align 8
  %17 = getelementptr inbounds %struct.arm_v7s_io_pgtable, %struct.arm_v7s_io_pgtable* %16, i32 0, i32 0
  store %struct.io_pgtable* %17, %struct.io_pgtable** %12, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @ARM_V7S_BLOCK_SIZE(i32 %18)
  store i64 %19, i64* %14, align 8
  %20 = load i64*, i64** %11, align 8
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @arm_v7s_pte_is_cont(i64 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %5
  %27 = load i64, i64* %13, align 8
  store i64 %27, i64* %6, align 8
  br label %74

28:                                               ; preds = %5
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @ARM_V7S_CONT_PAGES, align 4
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %29, %31
  %33 = load i64*, i64** %11, align 8
  %34 = sext i32 %32 to i64
  %35 = sub i64 0, %34
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store i64* %36, i64** %11, align 8
  %37 = load i64, i64* %13, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i64 @arm_v7s_cont_to_pte(i64 %37, i32 %38)
  store i64 %39, i64* %13, align 8
  store i32 0, i32* %15, align 4
  br label %40

40:                                               ; preds = %55, %28
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* @ARM_V7S_CONT_PAGES, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load i64, i64* %13, align 8
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %14, align 8
  %49 = mul i64 %47, %48
  %50 = add i64 %45, %49
  %51 = load i64*, i64** %11, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 %50, i64* %54, align 8
  br label %55

55:                                               ; preds = %44
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %15, align 4
  br label %40

58:                                               ; preds = %40
  %59 = load i64*, i64** %11, align 8
  %60 = load i32, i32* @ARM_V7S_CONT_PAGES, align 4
  %61 = load %struct.io_pgtable*, %struct.io_pgtable** %12, align 8
  %62 = getelementptr inbounds %struct.io_pgtable, %struct.io_pgtable* %61, i32 0, i32 0
  %63 = call i32 @__arm_v7s_pte_sync(i64* %59, i32 %60, i32* %62)
  %64 = load i32, i32* @ARM_V7S_CONT_PAGES, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %14, align 8
  %67 = mul i64 %66, %65
  store i64 %67, i64* %14, align 8
  %68 = load %struct.io_pgtable*, %struct.io_pgtable** %12, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* %14, align 8
  %72 = call i32 @io_pgtable_tlb_flush_leaf(%struct.io_pgtable* %68, i64 %69, i64 %70, i64 %71)
  %73 = load i64, i64* %13, align 8
  store i64 %73, i64* %6, align 8
  br label %74

74:                                               ; preds = %58, %26
  %75 = load i64, i64* %6, align 8
  ret i64 %75
}

declare dso_local i64 @ARM_V7S_BLOCK_SIZE(i32) #1

declare dso_local i32 @arm_v7s_pte_is_cont(i64, i32) #1

declare dso_local i64 @arm_v7s_cont_to_pte(i64, i32) #1

declare dso_local i32 @__arm_v7s_pte_sync(i64*, i32, i32*) #1

declare dso_local i32 @io_pgtable_tlb_flush_leaf(%struct.io_pgtable*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
