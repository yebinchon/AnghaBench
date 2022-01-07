; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_iommu_load_old_irte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_iommu_load_old_irte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.irte = type { i32 }

@DMAR_IRTA_REG = common dso_local global i64 0, align 8
@INTR_REMAP_TABLE_REG_SIZE_MASK = common dso_local global i32 0, align 4
@INTR_REMAP_TABLE_REG_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VTD_PAGE_MASK = common dso_local global i32 0, align 4
@INTR_REMAP_TABLE_ENTRIES = common dso_local global i32 0, align 4
@MEMREMAP_WB = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_iommu*)* @iommu_load_old_irte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_load_old_irte(%struct.intel_iommu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_iommu*, align 8
  %4 = alloca %struct.irte*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.intel_iommu* %0, %struct.intel_iommu** %3, align 8
  %9 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %10 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DMAR_IRTA_REG, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @dmar_readq(i64 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @INTR_REMAP_TABLE_REG_SIZE_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @INTR_REMAP_TABLE_REG_SIZE, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %87

23:                                               ; preds = %1
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @VTD_PAGE_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @INTR_REMAP_TABLE_ENTRIES, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  store i64 %29, i64* %7, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* @MEMREMAP_WB, align 4
  %33 = call %struct.irte* @memremap(i32 %30, i64 %31, i32 %32)
  store %struct.irte* %33, %struct.irte** %4, align 8
  %34 = load %struct.irte*, %struct.irte** %4, align 8
  %35 = icmp ne %struct.irte* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %23
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %87

39:                                               ; preds = %23
  %40 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %41 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load %struct.irte*, %struct.irte** %4, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @memcpy(%struct.TYPE_5__* %44, %struct.irte* %45, i64 %46)
  %48 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %49 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %50 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @__iommu_flush_cache(%struct.intel_iommu* %48, %struct.TYPE_5__* %53, i64 %54)
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %81, %39
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @INTR_REMAP_TABLE_ENTRIES, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %56
  %61 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %62 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %60
  %73 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %74 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @bitmap_set(i32 %77, i32 %78, i32 1)
  br label %80

80:                                               ; preds = %72, %60
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %6, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %56

84:                                               ; preds = %56
  %85 = load %struct.irte*, %struct.irte** %4, align 8
  %86 = call i32 @memunmap(%struct.irte* %85)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %84, %36, %20
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @dmar_readq(i64) #1

declare dso_local %struct.irte* @memremap(i32, i64, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_5__*, %struct.irte*, i64) #1

declare dso_local i32 @__iommu_flush_cache(%struct.intel_iommu*, %struct.TYPE_5__*, i64) #1

declare dso_local i32 @bitmap_set(i32, i32, i32) #1

declare dso_local i32 @memunmap(%struct.irte*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
