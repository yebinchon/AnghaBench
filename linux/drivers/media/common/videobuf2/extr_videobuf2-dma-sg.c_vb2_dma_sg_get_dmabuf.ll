; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-sg.c_vb2_dma_sg_get_dmabuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-sg.c_vb2_dma_sg_get_dmabuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.vb2_dma_sg_buf*, i32, i32* }
%struct.vb2_dma_sg_buf = type { i32, i32, i32 }
%struct.dma_buf = type { i32 }

@exp_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@vb2_dma_sg_dmabuf_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_buf* (i8*, i64)* @vb2_dma_sg_get_dmabuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_buf* @vb2_dma_sg_get_dmabuf(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.dma_buf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vb2_dma_sg_buf*, align 8
  %7 = alloca %struct.dma_buf*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.vb2_dma_sg_buf*
  store %struct.vb2_dma_sg_buf* %9, %struct.vb2_dma_sg_buf** %6, align 8
  %10 = call i32 @DEFINE_DMA_BUF_EXPORT_INFO(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 @exp_info)
  store i32* @vb2_dma_sg_dmabuf_ops, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @exp_info, i32 0, i32 3), align 8
  %11 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %6, align 8
  %12 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @exp_info, i32 0, i32 2), align 8
  %14 = load i64, i64* %5, align 8
  store i64 %14, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @exp_info, i32 0, i32 0), align 8
  %15 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %6, align 8
  store %struct.vb2_dma_sg_buf* %15, %struct.vb2_dma_sg_buf** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @exp_info, i32 0, i32 1), align 8
  %16 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %6, align 8
  %17 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store %struct.dma_buf* null, %struct.dma_buf** %3, align 8
  br label %36

25:                                               ; preds = %2
  %26 = call %struct.dma_buf* @dma_buf_export(%struct.TYPE_4__* @exp_info)
  store %struct.dma_buf* %26, %struct.dma_buf** %7, align 8
  %27 = load %struct.dma_buf*, %struct.dma_buf** %7, align 8
  %28 = call i64 @IS_ERR(%struct.dma_buf* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store %struct.dma_buf* null, %struct.dma_buf** %3, align 8
  br label %36

31:                                               ; preds = %25
  %32 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %6, align 8
  %33 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %32, i32 0, i32 0
  %34 = call i32 @refcount_inc(i32* %33)
  %35 = load %struct.dma_buf*, %struct.dma_buf** %7, align 8
  store %struct.dma_buf* %35, %struct.dma_buf** %3, align 8
  br label %36

36:                                               ; preds = %31, %30, %24
  %37 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  ret %struct.dma_buf* %37
}

declare dso_local i32 @DEFINE_DMA_BUF_EXPORT_INFO(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8) #1

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
