; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c_arm_lpae_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c_arm_lpae_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_pgtable_ops = type { i32 }
%struct.arm_lpae_io_pgtable = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@IOMMU_READ = common dso_local global i32 0, align 4
@IOMMU_WRITE = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_pgtable_ops*, i64, i64, i64, i32)* @arm_lpae_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_lpae_map(%struct.io_pgtable_ops* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.io_pgtable_ops*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.arm_lpae_io_pgtable*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.io_pgtable_ops* %0, %struct.io_pgtable_ops** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.io_pgtable_ops*, %struct.io_pgtable_ops** %7, align 8
  %18 = call %struct.arm_lpae_io_pgtable* @io_pgtable_ops_to_data(%struct.io_pgtable_ops* %17)
  store %struct.arm_lpae_io_pgtable* %18, %struct.arm_lpae_io_pgtable** %12, align 8
  %19 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %12, align 8
  %20 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %13, align 8
  %22 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %12, align 8
  %23 = call i32 @ARM_LPAE_START_LVL(%struct.arm_lpae_io_pgtable* %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @IOMMU_READ, align 4
  %26 = load i32, i32* @IOMMU_WRITE, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %71

31:                                               ; preds = %5
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %12, align 8
  %34 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = shl i64 1, %37
  %39 = icmp uge i64 %32, %38
  br i1 %39, label %49, label %40

40:                                               ; preds = %31
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %12, align 8
  %43 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = shl i64 1, %46
  %48 = icmp uge i64 %41, %47
  br label %49

49:                                               ; preds = %40, %31
  %50 = phi i1 [ true, %31 ], [ %48, %40 ]
  %51 = zext i1 %50 to i32
  %52 = call i64 @WARN_ON(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @ERANGE, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %71

57:                                               ; preds = %49
  %58 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %12, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @arm_lpae_prot_to_pte(%struct.arm_lpae_io_pgtable* %58, i32 %59)
  store i32 %60, i32* %16, align 4
  %61 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %12, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @__arm_lpae_map(%struct.arm_lpae_io_pgtable* %61, i64 %62, i64 %63, i64 %64, i32 %65, i32 %66, i32* %67)
  store i32 %68, i32* %14, align 4
  %69 = call i32 (...) @wmb()
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %57, %54, %30
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.arm_lpae_io_pgtable* @io_pgtable_ops_to_data(%struct.io_pgtable_ops*) #1

declare dso_local i32 @ARM_LPAE_START_LVL(%struct.arm_lpae_io_pgtable*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @arm_lpae_prot_to_pte(%struct.arm_lpae_io_pgtable*, i32) #1

declare dso_local i32 @__arm_lpae_map(%struct.arm_lpae_io_pgtable*, i64, i64, i64, i32, i32, i32*) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
