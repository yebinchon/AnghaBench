; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_fops.c_saa7146_dma_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_fops.c_saa7146_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i32 }
%struct.videobuf_queue = type { i32 }
%struct.saa7146_buf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.videobuf_dmabuf = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"dev:%p, buf:%p\0A\00", align 1
@VIDEOBUF_NEEDS_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7146_dma_free(%struct.saa7146_dev* %0, %struct.videobuf_queue* %1, %struct.saa7146_buf* %2) #0 {
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.videobuf_queue*, align 8
  %6 = alloca %struct.saa7146_buf*, align 8
  %7 = alloca %struct.videobuf_dmabuf*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store %struct.videobuf_queue* %1, %struct.videobuf_queue** %5, align 8
  store %struct.saa7146_buf* %2, %struct.saa7146_buf** %6, align 8
  %8 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %9 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %8, i32 0, i32 0
  %10 = call %struct.videobuf_dmabuf* @videobuf_to_dma(%struct.TYPE_3__* %9)
  store %struct.videobuf_dmabuf* %10, %struct.videobuf_dmabuf** %7, align 8
  %11 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %12 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %13 = call i32 @DEB_EE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %11, %struct.saa7146_buf* %12)
  %14 = call i32 (...) @in_interrupt()
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %17 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %18 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %17, i32 0, i32 0
  %19 = call i32 @videobuf_waiton(%struct.videobuf_queue* %16, %struct.TYPE_3__* %18, i32 0, i32 0)
  %20 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %21 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %7, align 8
  %24 = call i32 @videobuf_dma_unmap(i32 %22, %struct.videobuf_dmabuf* %23)
  %25 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %7, align 8
  %26 = call i32 @videobuf_dma_free(%struct.videobuf_dmabuf* %25)
  %27 = load i32, i32* @VIDEOBUF_NEEDS_INIT, align 4
  %28 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %29 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  ret void
}

declare dso_local %struct.videobuf_dmabuf* @videobuf_to_dma(%struct.TYPE_3__*) #1

declare dso_local i32 @DEB_EE(i8*, %struct.saa7146_dev*, %struct.saa7146_buf*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @videobuf_waiton(%struct.videobuf_queue*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @videobuf_dma_unmap(i32, %struct.videobuf_dmabuf*) #1

declare dso_local i32 @videobuf_dma_free(%struct.videobuf_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
