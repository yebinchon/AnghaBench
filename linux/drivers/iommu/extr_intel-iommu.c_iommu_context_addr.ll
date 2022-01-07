; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_iommu_context_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_iommu_context_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context_entry = type { i32 }
%struct.intel_iommu = type { i32, %struct.root_entry* }
%struct.root_entry = type { i32, i32 }

@VTD_PAGE_MASK = common dso_local global i32 0, align 4
@CONTEXT_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.context_entry* @iommu_context_addr(%struct.intel_iommu* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.context_entry*, align 8
  %6 = alloca %struct.intel_iommu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.root_entry*, align 8
  %11 = alloca %struct.context_entry*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.intel_iommu* %0, %struct.intel_iommu** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %15 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %14, i32 0, i32 1
  %16 = load %struct.root_entry*, %struct.root_entry** %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds %struct.root_entry, %struct.root_entry* %16, i64 %17
  store %struct.root_entry* %18, %struct.root_entry** %10, align 8
  %19 = load %struct.root_entry*, %struct.root_entry** %10, align 8
  %20 = getelementptr inbounds %struct.root_entry, %struct.root_entry* %19, i32 0, i32 0
  store i32* %20, i32** %12, align 8
  %21 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %22 = call i64 @sm_supported(%struct.intel_iommu* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %4
  %25 = load i64, i64* %8, align 8
  %26 = icmp uge i64 %25, 128
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i64, i64* %8, align 8
  %29 = sub i64 %28, 128
  store i64 %29, i64* %8, align 8
  %30 = load %struct.root_entry*, %struct.root_entry** %10, align 8
  %31 = getelementptr inbounds %struct.root_entry, %struct.root_entry* %30, i32 0, i32 1
  store i32* %31, i32** %12, align 8
  br label %32

32:                                               ; preds = %27, %24
  %33 = load i64, i64* %8, align 8
  %34 = mul i64 %33, 2
  store i64 %34, i64* %8, align 8
  br label %35

35:                                               ; preds = %32, %4
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @VTD_PAGE_MASK, align 4
  %44 = and i32 %42, %43
  %45 = call %struct.context_entry* @phys_to_virt(i32 %44)
  store %struct.context_entry* %45, %struct.context_entry** %11, align 8
  br label %75

46:                                               ; preds = %35
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store %struct.context_entry* null, %struct.context_entry** %5, align 8
  br label %79

50:                                               ; preds = %46
  %51 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %52 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.context_entry* @alloc_pgtable_page(i32 %53)
  store %struct.context_entry* %54, %struct.context_entry** %11, align 8
  %55 = load %struct.context_entry*, %struct.context_entry** %11, align 8
  %56 = icmp ne %struct.context_entry* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  store %struct.context_entry* null, %struct.context_entry** %5, align 8
  br label %79

58:                                               ; preds = %50
  %59 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %60 = load %struct.context_entry*, %struct.context_entry** %11, align 8
  %61 = bitcast %struct.context_entry* %60 to i8*
  %62 = bitcast i8* %61 to i32*
  %63 = load i32, i32* @CONTEXT_SIZE, align 4
  %64 = call i32 @__iommu_flush_cache(%struct.intel_iommu* %59, i32* %62, i32 %63)
  %65 = load %struct.context_entry*, %struct.context_entry** %11, align 8
  %66 = bitcast %struct.context_entry* %65 to i8*
  %67 = call i64 @virt_to_phys(i8* %66)
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* %13, align 8
  %69 = or i64 %68, 1
  %70 = trunc i64 %69 to i32
  %71 = load i32*, i32** %12, align 8
  store i32 %70, i32* %71, align 4
  %72 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @__iommu_flush_cache(%struct.intel_iommu* %72, i32* %73, i32 4)
  br label %75

75:                                               ; preds = %58, %40
  %76 = load %struct.context_entry*, %struct.context_entry** %11, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds %struct.context_entry, %struct.context_entry* %76, i64 %77
  store %struct.context_entry* %78, %struct.context_entry** %5, align 8
  br label %79

79:                                               ; preds = %75, %57, %49
  %80 = load %struct.context_entry*, %struct.context_entry** %5, align 8
  ret %struct.context_entry* %80
}

declare dso_local i64 @sm_supported(%struct.intel_iommu*) #1

declare dso_local %struct.context_entry* @phys_to_virt(i32) #1

declare dso_local %struct.context_entry* @alloc_pgtable_page(i32) #1

declare dso_local i32 @__iommu_flush_cache(%struct.intel_iommu*, i32*, i32) #1

declare dso_local i64 @virt_to_phys(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
