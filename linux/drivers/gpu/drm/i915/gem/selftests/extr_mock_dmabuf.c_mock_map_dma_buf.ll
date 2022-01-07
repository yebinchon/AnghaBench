; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_mock_dmabuf.c_mock_map_dma_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_mock_dmabuf.c_mock_map_dma_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.dma_buf_attachment = type { i32, i32 }
%struct.mock_dmabuf = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sg_table* (%struct.dma_buf_attachment*, i32)* @mock_map_dma_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sg_table* @mock_map_dma_buf(%struct.dma_buf_attachment* %0, i32 %1) #0 {
  %3 = alloca %struct.sg_table*, align 8
  %4 = alloca %struct.dma_buf_attachment*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mock_dmabuf*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dma_buf_attachment* %0, %struct.dma_buf_attachment** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %12 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.mock_dmabuf* @to_mock(i32 %13)
  store %struct.mock_dmabuf* %14, %struct.mock_dmabuf** %6, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.sg_table* @kmalloc(i32 16, i32 %15)
  store %struct.sg_table* %16, %struct.sg_table** %7, align 8
  %17 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %18 = icmp ne %struct.sg_table* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.sg_table* @ERR_PTR(i32 %21)
  store %struct.sg_table* %22, %struct.sg_table** %3, align 8
  br label %85

23:                                               ; preds = %2
  %24 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %25 = load %struct.mock_dmabuf*, %struct.mock_dmabuf** %6, align 8
  %26 = getelementptr inbounds %struct.mock_dmabuf, %struct.mock_dmabuf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32 @sg_alloc_table(%struct.sg_table* %24, i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %80

33:                                               ; preds = %23
  %34 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %35 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %34, i32 0, i32 1
  %36 = load %struct.scatterlist*, %struct.scatterlist** %35, align 8
  store %struct.scatterlist* %36, %struct.scatterlist** %8, align 8
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %56, %33
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.mock_dmabuf*, %struct.mock_dmabuf** %6, align 8
  %40 = getelementptr inbounds %struct.mock_dmabuf, %struct.mock_dmabuf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %37
  %44 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %45 = load %struct.mock_dmabuf*, %struct.mock_dmabuf** %6, align 8
  %46 = getelementptr inbounds %struct.mock_dmabuf, %struct.mock_dmabuf* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = call i32 @sg_set_page(%struct.scatterlist* %44, i32 %51, i32 %52, i32 0)
  %54 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %55 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %54)
  store %struct.scatterlist* %55, %struct.scatterlist** %8, align 8
  br label %56

56:                                               ; preds = %43
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %37

59:                                               ; preds = %37
  %60 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %61 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %64 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %63, i32 0, i32 1
  %65 = load %struct.scatterlist*, %struct.scatterlist** %64, align 8
  %66 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %67 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @dma_map_sg(i32 %62, %struct.scatterlist* %65, i32 %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %59
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %10, align 4
  br label %77

75:                                               ; preds = %59
  %76 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  store %struct.sg_table* %76, %struct.sg_table** %3, align 8
  br label %85

77:                                               ; preds = %72
  %78 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %79 = call i32 @sg_free_table(%struct.sg_table* %78)
  br label %80

80:                                               ; preds = %77, %32
  %81 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %82 = call i32 @kfree(%struct.sg_table* %81)
  %83 = load i32, i32* %10, align 4
  %84 = call %struct.sg_table* @ERR_PTR(i32 %83)
  store %struct.sg_table* %84, %struct.sg_table** %3, align 8
  br label %85

85:                                               ; preds = %80, %75, %19
  %86 = load %struct.sg_table*, %struct.sg_table** %3, align 8
  ret %struct.sg_table* %86
}

declare dso_local %struct.mock_dmabuf* @to_mock(i32) #1

declare dso_local %struct.sg_table* @kmalloc(i32, i32) #1

declare dso_local %struct.sg_table* @ERR_PTR(i32) #1

declare dso_local i32 @sg_alloc_table(%struct.sg_table*, i32, i32) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i32, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @sg_free_table(%struct.sg_table*) #1

declare dso_local i32 @kfree(%struct.sg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
