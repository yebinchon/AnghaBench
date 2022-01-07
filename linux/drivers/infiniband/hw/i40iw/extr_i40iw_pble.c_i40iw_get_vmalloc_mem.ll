; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_pble.c_i40iw_get_vmalloc_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_pble.c_i40iw_get_vmalloc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_hw = type { i64 }
%struct.i40iw_chunk = type { i32, i32, i32, i32*, i64 }
%struct.pci_dev = type { i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@I40IW_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@I40IW_VMALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_hw*, %struct.i40iw_chunk*, i32)* @i40iw_get_vmalloc_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_get_vmalloc_mem(%struct.i40iw_hw* %0, %struct.i40iw_chunk* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_hw*, align 8
  %6 = alloca %struct.i40iw_chunk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i40iw_hw* %0, %struct.i40iw_hw** %5, align 8
  store %struct.i40iw_chunk* %1, %struct.i40iw_chunk** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.i40iw_hw*, %struct.i40iw_hw** %5, align 8
  %14 = getelementptr inbounds %struct.i40iw_hw, %struct.i40iw_hw* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.pci_dev*
  store %struct.pci_dev* %16, %struct.pci_dev** %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = shl i32 %17, 3
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32* @kzalloc(i32 %18, i32 %19)
  %21 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %6, align 8
  %22 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %21, i32 0, i32 3
  store i32* %20, i32** %22, align 8
  %23 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %6, align 8
  %24 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  store i32 %28, i32* %4, align 4
  br label %117

29:                                               ; preds = %3
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i64 @vmalloc(i32 %33)
  %35 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %6, align 8
  %36 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %35, i32 0, i32 4
  store i64 %34, i64* %36, align 8
  %37 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %6, align 8
  %38 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %29
  %42 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %6, align 8
  %43 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @kfree(i32* %44)
  %46 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %6, align 8
  %47 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %46, i32 0, i32 3
  store i32* null, i32** %47, align 8
  %48 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  store i32 %48, i32* %4, align 4
  br label %117

49:                                               ; preds = %29
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %6, align 8
  %52 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %6, align 8
  %54 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %10, align 8
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %98, %49
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %101

61:                                               ; preds = %57
  %62 = load i32*, i32** %10, align 8
  %63 = bitcast i32* %62 to i8*
  %64 = call %struct.page* @vmalloc_to_page(i8* %63)
  store %struct.page* %64, %struct.page** %9, align 8
  %65 = load %struct.page*, %struct.page** %9, align 8
  %66 = icmp ne %struct.page* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  br label %101

68:                                               ; preds = %61
  %69 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 0
  %71 = load %struct.page*, %struct.page** %9, align 8
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %74 = call i32 @dma_map_page(i32* %70, %struct.page* %71, i32 0, i32 %72, i32 %73)
  %75 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %6, align 8
  %76 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %74, i32* %80, align 4
  %81 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 0
  %83 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %6, align 8
  %84 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @dma_mapping_error(i32* %82, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %68
  br label %101

93:                                               ; preds = %68
  %94 = load i32, i32* @PAGE_SIZE, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %10, align 8
  br label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  br label %57

101:                                              ; preds = %92, %67, %57
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %6, align 8
  %104 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @I40IW_VMALLOC, align 4
  %106 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %6, align 8
  %107 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %101
  store i32 0, i32* %4, align 4
  br label %117

112:                                              ; preds = %101
  %113 = load %struct.i40iw_hw*, %struct.i40iw_hw** %5, align 8
  %114 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %6, align 8
  %115 = call i32 @i40iw_free_vmalloc_mem(%struct.i40iw_hw* %113, %struct.i40iw_chunk* %114)
  %116 = load i32, i32* @I40IW_ERR_NO_MEMORY, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %112, %111, %41, %27
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i64 @vmalloc(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local %struct.page* @vmalloc_to_page(i8*) #1

declare dso_local i32 @dma_map_page(i32*, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @i40iw_free_vmalloc_mem(%struct.i40iw_hw*, %struct.i40iw_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
