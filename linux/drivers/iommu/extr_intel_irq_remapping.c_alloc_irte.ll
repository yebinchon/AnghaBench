; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_alloc_irte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_alloc_irte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32, i32, %struct.ir_table* }
%struct.ir_table = type { i32 }
%struct.irq_2_iommu = type { i32, i32, i32, i64, %struct.intel_iommu* }

@.str = private unnamed_addr constant [70 x i8] c"Requested mask %x exceeds the max invalidation handle mask value %Lx\0A\00", align 1
@irq_2_ir_lock = common dso_local global i32 0, align 4
@INTR_REMAP_TABLE_ENTRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"IR%d: can't allocate an IRTE\0A\00", align 1
@IRQ_REMAPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_iommu*, %struct.irq_2_iommu*, i32)* @alloc_irte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_irte(%struct.intel_iommu* %0, %struct.irq_2_iommu* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_iommu*, align 8
  %6 = alloca %struct.irq_2_iommu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ir_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.intel_iommu* %0, %struct.intel_iommu** %5, align 8
  store %struct.irq_2_iommu* %1, %struct.irq_2_iommu** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %13 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %12, i32 0, i32 2
  %14 = load %struct.ir_table*, %struct.ir_table** %13, align 8
  store %struct.ir_table* %14, %struct.ir_table** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %6, align 8
  %19 = icmp ne %struct.irq_2_iommu* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %3
  store i32 -1, i32* %4, align 4
  br label %78

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @__roundup_pow_of_two(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ilog2(i32 %27)
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %32 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ecap_max_handle_mask(i32 %33)
  %35 = icmp ugt i32 %30, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %39 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ecap_max_handle_mask(i32 %40)
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %41)
  store i32 -1, i32* %4, align 4
  br label %78

43:                                               ; preds = %29
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @raw_spin_lock_irqsave(i32* @irq_2_ir_lock, i64 %44)
  %46 = load %struct.ir_table*, %struct.ir_table** %8, align 8
  %47 = getelementptr inbounds %struct.ir_table, %struct.ir_table* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @INTR_REMAP_TABLE_ENTRIES, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @bitmap_find_free_region(i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %43
  %55 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %56 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %74

59:                                               ; preds = %43
  %60 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %61 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %6, align 8
  %62 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %61, i32 0, i32 4
  store %struct.intel_iommu* %60, %struct.intel_iommu** %62, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %6, align 8
  %65 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %6, align 8
  %67 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %6, align 8
  %70 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @IRQ_REMAPPING, align 4
  %72 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %6, align 8
  %73 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %59, %54
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @raw_spin_unlock_irqrestore(i32* @irq_2_ir_lock, i64 %75)
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %74, %36, %20
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @__roundup_pow_of_two(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @ecap_max_handle_mask(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bitmap_find_free_region(i32, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
