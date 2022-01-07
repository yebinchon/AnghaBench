; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c___arm_lpae_init_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c___arm_lpae_init_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_lpae_io_pgtable = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IO_PGTABLE_QUIRK_ARM_NS = common dso_local global i32 0, align 4
@ARM_LPAE_PTE_NS = common dso_local global i32 0, align 4
@ARM_MALI_LPAE = common dso_local global i64 0, align 8
@ARM_LPAE_MAX_LEVELS = common dso_local global i32 0, align 4
@ARM_LPAE_PTE_TYPE_PAGE = common dso_local global i32 0, align 4
@ARM_LPAE_PTE_TYPE_BLOCK = common dso_local global i32 0, align 4
@ARM_LPAE_PTE_AF = common dso_local global i32 0, align 4
@ARM_LPAE_PTE_SH_IS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arm_lpae_io_pgtable*, i32, i32, i32, i32*)* @__arm_lpae_init_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__arm_lpae_init_pte(%struct.arm_lpae_io_pgtable* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.arm_lpae_io_pgtable*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.arm_lpae_io_pgtable* %0, %struct.arm_lpae_io_pgtable** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load i32, i32* %8, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %6, align 8
  %14 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IO_PGTABLE_QUIRK_ARM_NS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load i32, i32* @ARM_LPAE_PTE_NS, align 4
  %23 = load i32, i32* %11, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %21, %5
  %26 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %6, align 8
  %27 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ARM_MALI_LPAE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @ARM_LPAE_MAX_LEVELS, align 4
  %35 = sub nsw i32 %34, 1
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @ARM_LPAE_PTE_TYPE_PAGE, align 4
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  br label %45

41:                                               ; preds = %32, %25
  %42 = load i32, i32* @ARM_LPAE_PTE_TYPE_BLOCK, align 4
  %43 = load i32, i32* %11, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %6, align 8
  %47 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ARM_MALI_LPAE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* @ARM_LPAE_PTE_AF, align 4
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %52, %45
  %57 = load i32, i32* @ARM_LPAE_PTE_SH_IS, align 4
  %58 = load i32, i32* %11, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %6, align 8
  %62 = call i32 @paddr_to_iopte(i32 %60, %struct.arm_lpae_io_pgtable* %61)
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %11, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %6, align 8
  %68 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = call i32 @__arm_lpae_set_pte(i32* %65, i32 %66, %struct.TYPE_4__* %69)
  ret void
}

declare dso_local i32 @paddr_to_iopte(i32, %struct.arm_lpae_io_pgtable*) #1

declare dso_local i32 @__arm_lpae_set_pte(i32*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
