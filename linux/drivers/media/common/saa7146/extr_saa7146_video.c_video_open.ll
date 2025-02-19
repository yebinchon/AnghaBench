; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_video_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_video_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.file = type { %struct.saa7146_fh* }
%struct.saa7146_fh = type { i32 }

@video_qops = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*, %struct.file*)* @video_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_open(%struct.saa7146_dev* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.saa7146_fh*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.saa7146_fh*, %struct.saa7146_fh** %7, align 8
  store %struct.saa7146_fh* %8, %struct.saa7146_fh** %5, align 8
  %9 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %10 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %9, i32 0, i32 0
  %11 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %12 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %16 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %15, i32 0, i32 1
  %17 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %18 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %21 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %20, i32 0, i32 0
  %22 = call i32 @videobuf_queue_sg_init(i32* %10, i32* @video_qops, i32* %14, i32* %16, i32 %17, i32 %18, i32 4, %struct.file* %19, i32* %21)
  ret i32 0
}

declare dso_local i32 @videobuf_queue_sg_init(i32*, i32*, i32*, i32*, i32, i32, i32, %struct.file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
