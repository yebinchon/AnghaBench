; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-sg.c_vb2_dma_sg_dmabuf_ops_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-sg.c_vb2_dma_sg_dmabuf_ops_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { %struct.vb2_dma_sg_buf* }
%struct.vb2_dma_sg_buf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.scatterlist*, i32 }
%struct.scatterlist = type { i32, i32 }
%struct.dma_buf_attachment = type { %struct.vb2_dma_sg_attachment* }
%struct.vb2_dma_sg_attachment = type { i32, %struct.sg_table }
%struct.sg_table = type { i32, %struct.scatterlist* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_buf*, %struct.dma_buf_attachment*)* @vb2_dma_sg_dmabuf_ops_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vb2_dma_sg_dmabuf_ops_attach(%struct.dma_buf* %0, %struct.dma_buf_attachment* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_buf*, align 8
  %5 = alloca %struct.dma_buf_attachment*, align 8
  %6 = alloca %struct.vb2_dma_sg_attachment*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca %struct.sg_table*, align 8
  %11 = alloca %struct.vb2_dma_sg_buf*, align 8
  %12 = alloca i32, align 4
  store %struct.dma_buf* %0, %struct.dma_buf** %4, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %5, align 8
  %13 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %14 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %13, i32 0, i32 0
  %15 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %14, align 8
  store %struct.vb2_dma_sg_buf* %15, %struct.vb2_dma_sg_buf** %11, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.vb2_dma_sg_attachment* @kzalloc(i32 24, i32 %16)
  store %struct.vb2_dma_sg_attachment* %17, %struct.vb2_dma_sg_attachment** %6, align 8
  %18 = load %struct.vb2_dma_sg_attachment*, %struct.vb2_dma_sg_attachment** %6, align 8
  %19 = icmp ne %struct.vb2_dma_sg_attachment* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %81

23:                                               ; preds = %2
  %24 = load %struct.vb2_dma_sg_attachment*, %struct.vb2_dma_sg_attachment** %6, align 8
  %25 = getelementptr inbounds %struct.vb2_dma_sg_attachment, %struct.vb2_dma_sg_attachment* %24, i32 0, i32 1
  store %struct.sg_table* %25, %struct.sg_table** %10, align 8
  %26 = load %struct.sg_table*, %struct.sg_table** %10, align 8
  %27 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %11, align 8
  %28 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32 @sg_alloc_table(%struct.sg_table* %26, i32 %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %23
  %37 = load %struct.vb2_dma_sg_attachment*, %struct.vb2_dma_sg_attachment** %6, align 8
  %38 = call i32 @kfree(%struct.vb2_dma_sg_attachment* %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %81

41:                                               ; preds = %23
  %42 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %11, align 8
  %43 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.scatterlist*, %struct.scatterlist** %45, align 8
  store %struct.scatterlist* %46, %struct.scatterlist** %8, align 8
  %47 = load %struct.sg_table*, %struct.sg_table** %10, align 8
  %48 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %47, i32 0, i32 1
  %49 = load %struct.scatterlist*, %struct.scatterlist** %48, align 8
  store %struct.scatterlist* %49, %struct.scatterlist** %9, align 8
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %71, %41
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.sg_table*, %struct.sg_table** %10, align 8
  %53 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %50
  %57 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %58 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %59 = call i32 @sg_page(%struct.scatterlist* %58)
  %60 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %61 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %64 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @sg_set_page(%struct.scatterlist* %57, i32 %59, i32 %62, i32 %65)
  %67 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %68 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %67)
  store %struct.scatterlist* %68, %struct.scatterlist** %8, align 8
  %69 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %70 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %69)
  store %struct.scatterlist* %70, %struct.scatterlist** %9, align 8
  br label %71

71:                                               ; preds = %56
  %72 = load i32, i32* %7, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %50

74:                                               ; preds = %50
  %75 = load i32, i32* @DMA_NONE, align 4
  %76 = load %struct.vb2_dma_sg_attachment*, %struct.vb2_dma_sg_attachment** %6, align 8
  %77 = getelementptr inbounds %struct.vb2_dma_sg_attachment, %struct.vb2_dma_sg_attachment* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.vb2_dma_sg_attachment*, %struct.vb2_dma_sg_attachment** %6, align 8
  %79 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %5, align 8
  %80 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %79, i32 0, i32 0
  store %struct.vb2_dma_sg_attachment* %78, %struct.vb2_dma_sg_attachment** %80, align 8
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %74, %36, %20
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.vb2_dma_sg_attachment* @kzalloc(i32, i32) #1

declare dso_local i32 @sg_alloc_table(%struct.sg_table*, i32, i32) #1

declare dso_local i32 @kfree(%struct.vb2_dma_sg_attachment*) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
