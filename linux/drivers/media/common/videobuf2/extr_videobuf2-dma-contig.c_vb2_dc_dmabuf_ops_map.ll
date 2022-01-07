; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-contig.c_vb2_dc_dmabuf_ops_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-contig.c_vb2_dc_dmabuf_ops_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32, i32, i32 }
%struct.dma_buf_attachment = type { i32, %struct.TYPE_2__*, %struct.vb2_dc_attachment* }
%struct.TYPE_2__ = type { %struct.mutex }
%struct.mutex = type { i32 }
%struct.vb2_dc_attachment = type { i32, %struct.sg_table }

@DMA_NONE = common dso_local global i64 0, align 8
@DMA_ATTR_SKIP_CPU_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to map scatterlist\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sg_table* (%struct.dma_buf_attachment*, i32)* @vb2_dc_dmabuf_ops_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sg_table* @vb2_dc_dmabuf_ops_map(%struct.dma_buf_attachment* %0, i32 %1) #0 {
  %3 = alloca %struct.sg_table*, align 8
  %4 = alloca %struct.dma_buf_attachment*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vb2_dc_attachment*, align 8
  %7 = alloca %struct.mutex*, align 8
  %8 = alloca %struct.sg_table*, align 8
  store %struct.dma_buf_attachment* %0, %struct.dma_buf_attachment** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %10 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %9, i32 0, i32 2
  %11 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %10, align 8
  store %struct.vb2_dc_attachment* %11, %struct.vb2_dc_attachment** %6, align 8
  %12 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %13 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.mutex* %15, %struct.mutex** %7, align 8
  %16 = load %struct.mutex*, %struct.mutex** %7, align 8
  %17 = call i32 @mutex_lock(%struct.mutex* %16)
  %18 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %6, align 8
  %19 = getelementptr inbounds %struct.vb2_dc_attachment, %struct.vb2_dc_attachment* %18, i32 0, i32 1
  store %struct.sg_table* %19, %struct.sg_table** %8, align 8
  %20 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %6, align 8
  %21 = getelementptr inbounds %struct.vb2_dc_attachment, %struct.vb2_dc_attachment* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.mutex*, %struct.mutex** %7, align 8
  %27 = call i32 @mutex_unlock(%struct.mutex* %26)
  %28 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  store %struct.sg_table* %28, %struct.sg_table** %3, align 8
  br label %89

29:                                               ; preds = %2
  %30 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %6, align 8
  %31 = getelementptr inbounds %struct.vb2_dc_attachment, %struct.vb2_dc_attachment* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @DMA_NONE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %29
  %37 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %38 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %41 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %44 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %6, align 8
  %47 = getelementptr inbounds %struct.vb2_dc_attachment, %struct.vb2_dc_attachment* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = load i32, i32* @DMA_ATTR_SKIP_CPU_SYNC, align 4
  %51 = call i32 @dma_unmap_sg_attrs(i32 %39, i32 %42, i32 %45, i64 %49, i32 %50)
  %52 = load i64, i64* @DMA_NONE, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %6, align 8
  %55 = getelementptr inbounds %struct.vb2_dc_attachment, %struct.vb2_dc_attachment* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %36, %29
  %57 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %58 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %61 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %64 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @DMA_ATTR_SKIP_CPU_SYNC, align 4
  %68 = call i32 @dma_map_sg_attrs(i32 %59, i32 %62, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %70 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %72 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %56
  %76 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %77 = load %struct.mutex*, %struct.mutex** %7, align 8
  %78 = call i32 @mutex_unlock(%struct.mutex* %77)
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  %81 = call %struct.sg_table* @ERR_PTR(i32 %80)
  store %struct.sg_table* %81, %struct.sg_table** %3, align 8
  br label %89

82:                                               ; preds = %56
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %6, align 8
  %85 = getelementptr inbounds %struct.vb2_dc_attachment, %struct.vb2_dc_attachment* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.mutex*, %struct.mutex** %7, align 8
  %87 = call i32 @mutex_unlock(%struct.mutex* %86)
  %88 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  store %struct.sg_table* %88, %struct.sg_table** %3, align 8
  br label %89

89:                                               ; preds = %82, %75, %25
  %90 = load %struct.sg_table*, %struct.sg_table** %3, align 8
  ret %struct.sg_table* %90
}

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

declare dso_local i32 @dma_unmap_sg_attrs(i32, i32, i32, i64, i32) #1

declare dso_local i32 @dma_map_sg_attrs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.sg_table* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
