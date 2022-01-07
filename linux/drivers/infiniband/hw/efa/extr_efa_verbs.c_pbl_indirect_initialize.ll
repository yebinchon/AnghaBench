; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_pbl_indirect_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_pbl_indirect_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_dev = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.pbl_context = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.scatterlist*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.scatterlist = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@EFA_CHUNK_PAYLOAD_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"chunk_list creation failed[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"pbl indirect - size[%u], chunks[%u]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efa_dev*, %struct.pbl_context*)* @pbl_indirect_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pbl_indirect_initialize(%struct.efa_dev* %0, %struct.pbl_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efa_dev*, align 8
  %5 = alloca %struct.pbl_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.efa_dev* %0, %struct.efa_dev** %4, align 8
  store %struct.pbl_context* %1, %struct.pbl_context** %5, align 8
  %10 = load %struct.pbl_context*, %struct.pbl_context** %5, align 8
  %11 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i64, i64* @PAGE_SIZE, align 8
  %14 = call i32 @DIV_ROUND_UP(i32 %12, i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i64, i64* @EFA_CHUNK_PAYLOAD_SIZE, align 8
  %16 = load i64, i64* @PAGE_SIZE, align 8
  %17 = icmp sgt i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUILD_BUG_ON(i32 %18)
  %20 = load %struct.pbl_context*, %struct.pbl_context** %5, align 8
  %21 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.scatterlist* @efa_vmalloc_buf_to_sg(i32 %22, i32 %23)
  store %struct.scatterlist* %24, %struct.scatterlist** %7, align 8
  %25 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %26 = icmp ne %struct.scatterlist* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %96

30:                                               ; preds = %2
  %31 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %32 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @DMA_TO_DEVICE, align 4
  %38 = call i32 @dma_map_sg(i32* %34, %struct.scatterlist* %35, i32 %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %92

44:                                               ; preds = %30
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.pbl_context*, %struct.pbl_context** %5, align 8
  %47 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  store i32 %45, i32* %49, align 8
  %50 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %51 = load %struct.pbl_context*, %struct.pbl_context** %5, align 8
  %52 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store %struct.scatterlist* %50, %struct.scatterlist** %54, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.pbl_context*, %struct.pbl_context** %5, align 8
  %57 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 8
  %60 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %61 = load %struct.pbl_context*, %struct.pbl_context** %5, align 8
  %62 = call i32 @pbl_chunk_list_create(%struct.efa_dev* %60, %struct.pbl_context* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %44
  %66 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %67 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %66, i32 0, i32 1
  %68 = load i32, i32* %9, align 4
  %69 = call i32 (i32*, i8*, i32, ...) @ibdev_dbg(i32* %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %83

70:                                               ; preds = %44
  %71 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %72 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %71, i32 0, i32 1
  %73 = load %struct.pbl_context*, %struct.pbl_context** %5, align 8
  %74 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.pbl_context*, %struct.pbl_context** %5, align 8
  %77 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32*, i8*, i32, ...) @ibdev_dbg(i32* %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %81)
  store i32 0, i32* %3, align 4
  br label %96

83:                                               ; preds = %65
  %84 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %85 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @DMA_TO_DEVICE, align 4
  %91 = call i32 @dma_unmap_sg(i32* %87, %struct.scatterlist* %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %83, %41
  %93 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %94 = call i32 @kfree(%struct.scatterlist* %93)
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %70, %27
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @DIV_ROUND_UP(i32, i64) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.scatterlist* @efa_vmalloc_buf_to_sg(i32, i32) #1

declare dso_local i32 @dma_map_sg(i32*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @pbl_chunk_list_create(%struct.efa_dev*, %struct.pbl_context*) #1

declare dso_local i32 @ibdev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @dma_unmap_sg(i32*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @kfree(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
