; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c_arm_v7s_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c_arm_v7s_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_pgtable_ops = type { i32 }
%struct.arm_v7s_io_pgtable = type { i32, %struct.io_pgtable }
%struct.io_pgtable = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@IOMMU_READ = common dso_local global i32 0, align 4
@IOMMU_WRITE = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@IO_PGTABLE_QUIRK_TLBI_ON_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_pgtable_ops*, i64, i64, i64, i32)* @arm_v7s_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_v7s_map(%struct.io_pgtable_ops* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.io_pgtable_ops*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.arm_v7s_io_pgtable*, align 8
  %13 = alloca %struct.io_pgtable*, align 8
  %14 = alloca i32, align 4
  store %struct.io_pgtable_ops* %0, %struct.io_pgtable_ops** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.io_pgtable_ops*, %struct.io_pgtable_ops** %7, align 8
  %16 = call %struct.arm_v7s_io_pgtable* @io_pgtable_ops_to_data(%struct.io_pgtable_ops* %15)
  store %struct.arm_v7s_io_pgtable* %16, %struct.arm_v7s_io_pgtable** %12, align 8
  %17 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %12, align 8
  %18 = getelementptr inbounds %struct.arm_v7s_io_pgtable, %struct.arm_v7s_io_pgtable* %17, i32 0, i32 1
  store %struct.io_pgtable* %18, %struct.io_pgtable** %13, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @IOMMU_READ, align 4
  %21 = load i32, i32* @IOMMU_WRITE, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %79

26:                                               ; preds = %5
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %12, align 8
  %29 = getelementptr inbounds %struct.arm_v7s_io_pgtable, %struct.arm_v7s_io_pgtable* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.io_pgtable, %struct.io_pgtable* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = shl i64 1, %32
  %34 = icmp uge i64 %27, %33
  br i1 %34, label %44, label %35

35:                                               ; preds = %26
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %12, align 8
  %38 = getelementptr inbounds %struct.arm_v7s_io_pgtable, %struct.arm_v7s_io_pgtable* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.io_pgtable, %struct.io_pgtable* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = shl i64 1, %41
  %43 = icmp uge i64 %36, %42
  br label %44

44:                                               ; preds = %35, %26
  %45 = phi i1 [ true, %26 ], [ %43, %35 ]
  %46 = zext i1 %45 to i32
  %47 = call i64 @WARN_ON(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @ERANGE, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %79

52:                                               ; preds = %44
  %53 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %12, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %12, align 8
  %59 = getelementptr inbounds %struct.arm_v7s_io_pgtable, %struct.arm_v7s_io_pgtable* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @__arm_v7s_map(%struct.arm_v7s_io_pgtable* %53, i64 %54, i64 %55, i64 %56, i32 %57, i32 1, i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = load %struct.io_pgtable*, %struct.io_pgtable** %13, align 8
  %63 = getelementptr inbounds %struct.io_pgtable, %struct.io_pgtable* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @IO_PGTABLE_QUIRK_TLBI_ON_MAP, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %52
  %70 = load %struct.io_pgtable*, %struct.io_pgtable** %13, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %10, align 8
  %73 = call i32 @ARM_V7S_BLOCK_SIZE(i32 2)
  %74 = call i32 @io_pgtable_tlb_flush_walk(%struct.io_pgtable* %70, i64 %71, i64 %72, i32 %73)
  br label %77

75:                                               ; preds = %52
  %76 = call i32 (...) @wmb()
  br label %77

77:                                               ; preds = %75, %69
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %77, %49, %25
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local %struct.arm_v7s_io_pgtable* @io_pgtable_ops_to_data(%struct.io_pgtable_ops*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @__arm_v7s_map(%struct.arm_v7s_io_pgtable*, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @io_pgtable_tlb_flush_walk(%struct.io_pgtable*, i64, i64, i32) #1

declare dso_local i32 @ARM_V7S_BLOCK_SIZE(i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
