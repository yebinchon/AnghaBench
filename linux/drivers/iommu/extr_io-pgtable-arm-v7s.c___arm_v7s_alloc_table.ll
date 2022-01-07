; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c___arm_v7s_alloc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c___arm_v7s_alloc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_v7s_io_pgtable = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.io_pgtable_cfg }
%struct.io_pgtable_cfg = type { i32, %struct.device* }
%struct.device = type { i32 }

@__GFP_ZERO = common dso_local global i32 0, align 4
@ARM_V7S_TABLE_GFP_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Page table does not fit in PTE: %pa\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Cannot accommodate DMA translation for IOMMU page tables\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, %struct.arm_v7s_io_pgtable*)* @__arm_v7s_alloc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__arm_v7s_alloc_table(i32 %0, i32 %1, %struct.arm_v7s_io_pgtable* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.arm_v7s_io_pgtable*, align 8
  %8 = alloca %struct.io_pgtable_cfg*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.arm_v7s_io_pgtable* %2, %struct.arm_v7s_io_pgtable** %7, align 8
  %14 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %7, align 8
  %15 = getelementptr inbounds %struct.arm_v7s_io_pgtable, %struct.arm_v7s_io_pgtable* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.io_pgtable_cfg* %16, %struct.io_pgtable_cfg** %8, align 8
  %17 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %8, align 8
  %18 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %17, i32 0, i32 1
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %9, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @ARM_V7S_TABLE_SIZE(i32 %20)
  store i64 %21, i64* %12, align 8
  store i8* null, i8** %13, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load i32, i32* @__GFP_ZERO, align 4
  %26 = load i32, i32* @ARM_V7S_TABLE_GFP_DMA, align 4
  %27 = or i32 %25, %26
  %28 = load i64, i64* %12, align 8
  %29 = call i32 @get_order(i64 %28)
  %30 = call i64 @__get_free_pages(i32 %27, i32 %29)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %13, align 8
  br label %42

32:                                               ; preds = %3
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %7, align 8
  %37 = getelementptr inbounds %struct.arm_v7s_io_pgtable, %struct.arm_v7s_io_pgtable* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i8* @kmem_cache_zalloc(i32 %38, i32 %39)
  store i8* %40, i8** %13, align 8
  br label %41

41:                                               ; preds = %35, %32
  br label %42

42:                                               ; preds = %41, %24
  %43 = load i8*, i8** %13, align 8
  %44 = call i64 @virt_to_phys(i8* %43)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.device*, %struct.device** %9, align 8
  %50 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64* %10)
  br label %92

51:                                               ; preds = %42
  %52 = load i8*, i8** %13, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %76

54:                                               ; preds = %51
  %55 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %8, align 8
  %56 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %54
  %60 = load %struct.device*, %struct.device** %9, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i32, i32* @DMA_TO_DEVICE, align 4
  %64 = call i64 @dma_map_single(%struct.device* %60, i8* %61, i64 %62, i32 %63)
  store i64 %64, i64* %11, align 8
  %65 = load %struct.device*, %struct.device** %9, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call i64 @dma_mapping_error(%struct.device* %65, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %92

70:                                               ; preds = %59
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %10, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %84

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75, %54, %51
  %77 = load i32, i32* %5, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i8*, i8** %13, align 8
  %81 = call i32 @kmemleak_ignore(i8* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i8*, i8** %13, align 8
  store i8* %83, i8** %4, align 8
  br label %108

84:                                               ; preds = %74
  %85 = load %struct.device*, %struct.device** %9, align 8
  %86 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %85, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.device*, %struct.device** %9, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load i32, i32* @DMA_TO_DEVICE, align 4
  %91 = call i32 @dma_unmap_single(%struct.device* %87, i64 %88, i64 %89, i32 %90)
  br label %92

92:                                               ; preds = %84, %69, %48
  %93 = load i32, i32* %5, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load i8*, i8** %13, align 8
  %97 = ptrtoint i8* %96 to i64
  %98 = load i64, i64* %12, align 8
  %99 = call i32 @get_order(i64 %98)
  %100 = call i32 @free_pages(i64 %97, i32 %99)
  br label %107

101:                                              ; preds = %92
  %102 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %7, align 8
  %103 = getelementptr inbounds %struct.arm_v7s_io_pgtable, %struct.arm_v7s_io_pgtable* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = call i32 @kmem_cache_free(i32 %104, i8* %105)
  br label %107

107:                                              ; preds = %101, %95
  store i8* null, i8** %4, align 8
  br label %108

108:                                              ; preds = %107, %82
  %109 = load i8*, i8** %4, align 8
  ret i8* %109
}

declare dso_local i64 @ARM_V7S_TABLE_SIZE(i32) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i8* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i64 @virt_to_phys(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @dma_map_single(%struct.device*, i8*, i64, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i64) #1

declare dso_local i32 @kmemleak_ignore(i8*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i64, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @kmem_cache_free(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
