; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-contig.c_vb2_dc_get_dmabuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-contig.c_vb2_dc_get_dmabuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.vb2_dc_buf*, i32, i32* }
%struct.vb2_dc_buf = type { i32, i64, i32 }
%struct.dma_buf = type { i32 }

@exp_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@vb2_dc_dmabuf_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_buf* (i8*, i64)* @vb2_dc_get_dmabuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_buf* @vb2_dc_get_dmabuf(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.dma_buf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vb2_dc_buf*, align 8
  %7 = alloca %struct.dma_buf*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.vb2_dc_buf*
  store %struct.vb2_dc_buf* %9, %struct.vb2_dc_buf** %6, align 8
  %10 = call i32 @DEFINE_DMA_BUF_EXPORT_INFO(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 @exp_info)
  store i32* @vb2_dc_dmabuf_ops, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @exp_info, i32 0, i32 3), align 8
  %11 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %6, align 8
  %12 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @exp_info, i32 0, i32 2), align 8
  %14 = load i64, i64* %5, align 8
  store i64 %14, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @exp_info, i32 0, i32 0), align 8
  %15 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %6, align 8
  store %struct.vb2_dc_buf* %15, %struct.vb2_dc_buf** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @exp_info, i32 0, i32 1), align 8
  %16 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %6, align 8
  %17 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %6, align 8
  %22 = call i64 @vb2_dc_get_base_sgt(%struct.vb2_dc_buf* %21)
  %23 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %6, align 8
  %24 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %20, %2
  %26 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %6, align 8
  %27 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store %struct.dma_buf* null, %struct.dma_buf** %3, align 8
  br label %46

35:                                               ; preds = %25
  %36 = call %struct.dma_buf* @dma_buf_export(%struct.TYPE_4__* @exp_info)
  store %struct.dma_buf* %36, %struct.dma_buf** %7, align 8
  %37 = load %struct.dma_buf*, %struct.dma_buf** %7, align 8
  %38 = call i64 @IS_ERR(%struct.dma_buf* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store %struct.dma_buf* null, %struct.dma_buf** %3, align 8
  br label %46

41:                                               ; preds = %35
  %42 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %6, align 8
  %43 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %42, i32 0, i32 0
  %44 = call i32 @refcount_inc(i32* %43)
  %45 = load %struct.dma_buf*, %struct.dma_buf** %7, align 8
  store %struct.dma_buf* %45, %struct.dma_buf** %3, align 8
  br label %46

46:                                               ; preds = %41, %40, %34
  %47 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  ret %struct.dma_buf* %47
}

declare dso_local i32 @DEFINE_DMA_BUF_EXPORT_INFO(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8) #1

declare dso_local i64 @vb2_dc_get_base_sgt(%struct.vb2_dc_buf*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.dma_buf* @dma_buf_export(%struct.TYPE_4__*) #1

declare dso_local i64 @IS_ERR(%struct.dma_buf*) #1

declare dso_local i32 @refcount_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
