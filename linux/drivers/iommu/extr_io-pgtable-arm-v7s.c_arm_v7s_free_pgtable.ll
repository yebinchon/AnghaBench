; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c_arm_v7s_free_pgtable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c_arm_v7s_free_pgtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_pgtable = type { i32 }
%struct.arm_v7s_io_pgtable = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_pgtable*)* @arm_v7s_free_pgtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_v7s_free_pgtable(%struct.io_pgtable* %0) #0 {
  %2 = alloca %struct.io_pgtable*, align 8
  %3 = alloca %struct.arm_v7s_io_pgtable*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.io_pgtable* %0, %struct.io_pgtable** %2, align 8
  %6 = load %struct.io_pgtable*, %struct.io_pgtable** %2, align 8
  %7 = call %struct.arm_v7s_io_pgtable* @io_pgtable_to_data(%struct.io_pgtable* %6)
  store %struct.arm_v7s_io_pgtable* %7, %struct.arm_v7s_io_pgtable** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %30, %1
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @ARM_V7S_PTES_PER_LVL(i32 1)
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  %13 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %3, align 8
  %14 = getelementptr inbounds %struct.arm_v7s_io_pgtable, %struct.arm_v7s_io_pgtable* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @ARM_V7S_PTE_IS_TABLE(i32 %20, i32 1)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %12
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %3, align 8
  %26 = call i32* @iopte_deref(i32 %24, i32 1, %struct.arm_v7s_io_pgtable* %25)
  %27 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %3, align 8
  %28 = call i32 @__arm_v7s_free_table(i32* %26, i32 2, %struct.arm_v7s_io_pgtable* %27)
  br label %29

29:                                               ; preds = %23, %12
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %8

33:                                               ; preds = %8
  %34 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %3, align 8
  %35 = getelementptr inbounds %struct.arm_v7s_io_pgtable, %struct.arm_v7s_io_pgtable* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %3, align 8
  %38 = call i32 @__arm_v7s_free_table(i32* %36, i32 1, %struct.arm_v7s_io_pgtable* %37)
  %39 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %3, align 8
  %40 = getelementptr inbounds %struct.arm_v7s_io_pgtable, %struct.arm_v7s_io_pgtable* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @kmem_cache_destroy(i32 %41)
  %43 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %3, align 8
  %44 = call i32 @kfree(%struct.arm_v7s_io_pgtable* %43)
  ret void
}

declare dso_local %struct.arm_v7s_io_pgtable* @io_pgtable_to_data(%struct.io_pgtable*) #1

declare dso_local i32 @ARM_V7S_PTES_PER_LVL(i32) #1

declare dso_local i64 @ARM_V7S_PTE_IS_TABLE(i32, i32) #1

declare dso_local i32 @__arm_v7s_free_table(i32*, i32, %struct.arm_v7s_io_pgtable*) #1

declare dso_local i32* @iopte_deref(i32, i32, %struct.arm_v7s_io_pgtable*) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

declare dso_local i32 @kfree(%struct.arm_v7s_io_pgtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
