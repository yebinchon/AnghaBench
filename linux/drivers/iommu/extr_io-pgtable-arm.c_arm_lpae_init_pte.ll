; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c_arm_lpae_init_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c_arm_lpae_init_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_lpae_io_pgtable = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@selftest_running = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ARM_LPAE_PTE_TYPE_TABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_lpae_io_pgtable*, i64, i32, i32, i32, i32*)* @arm_lpae_init_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_lpae_init_pte(%struct.arm_lpae_io_pgtable* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.arm_lpae_io_pgtable*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store %struct.arm_lpae_io_pgtable* %0, %struct.arm_lpae_io_pgtable** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = load i32*, i32** %13, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %22 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @iopte_leaf(i32 %19, i32 %20, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %6
  %28 = load i32, i32* @selftest_running, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load i32, i32* @EEXIST, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %76

35:                                               ; preds = %6
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i64 @iopte_type(i32 %36, i32 %37)
  %39 = load i64, i64* @ARM_LPAE_PTE_TYPE_TABLE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %35
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %44 = call i64 @ARM_LPAE_BLOCK_SIZE(i32 %42, %struct.arm_lpae_io_pgtable* %43)
  store i64 %44, i64* %16, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %49 = call i32* @ARM_LPAE_LVL_IDX(i64 %46, i32 %47, %struct.arm_lpae_io_pgtable* %48)
  %50 = ptrtoint i32* %45 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %15, align 8
  %55 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %16, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load i32*, i32** %15, align 8
  %60 = call i64 @__arm_lpae_unmap(%struct.arm_lpae_io_pgtable* %55, i32* null, i64 %56, i64 %57, i32 %58, i32* %59)
  %61 = load i64, i64* %16, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %41
  %64 = call i32 @WARN_ON(i32 1)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %76

67:                                               ; preds = %41
  br label %68

68:                                               ; preds = %67, %35
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32*, i32** %13, align 8
  %75 = call i32 @__arm_lpae_init_pte(%struct.arm_lpae_io_pgtable* %70, i32 %71, i32 %72, i32 %73, i32* %74)
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %69, %63, %27
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i64 @iopte_leaf(i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @iopte_type(i32, i32) #1

declare dso_local i64 @ARM_LPAE_BLOCK_SIZE(i32, %struct.arm_lpae_io_pgtable*) #1

declare dso_local i32* @ARM_LPAE_LVL_IDX(i64, i32, %struct.arm_lpae_io_pgtable*) #1

declare dso_local i64 @__arm_lpae_unmap(%struct.arm_lpae_io_pgtable*, i32*, i64, i64, i32, i32*) #1

declare dso_local i32 @__arm_lpae_init_pte(%struct.arm_lpae_io_pgtable*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
