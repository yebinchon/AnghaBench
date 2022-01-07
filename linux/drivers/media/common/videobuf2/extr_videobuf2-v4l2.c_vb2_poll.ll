; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { i32 }
%struct.video_device = type { i32 }

@V4L2_FL_USES_V4L2_FH = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vb2_poll(%struct.vb2_queue* %0, %struct.file* %1, i32* %2) #0 {
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.video_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_fh*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.video_device* @video_devdata(%struct.file* %10)
  store %struct.video_device* %11, %struct.video_device** %7, align 8
  %12 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @vb2_core_poll(%struct.vb2_queue* %12, %struct.file* %13, i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @V4L2_FL_USES_V4L2_FH, align 4
  %17 = load %struct.video_device*, %struct.video_device** %7, align 8
  %18 = getelementptr inbounds %struct.video_device, %struct.video_device* %17, i32 0, i32 0
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %3
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load %struct.v4l2_fh*, %struct.v4l2_fh** %23, align 8
  store %struct.v4l2_fh* %24, %struct.v4l2_fh** %9, align 8
  %25 = load %struct.file*, %struct.file** %5, align 8
  %26 = load %struct.v4l2_fh*, %struct.v4l2_fh** %9, align 8
  %27 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %26, i32 0, i32 0
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @poll_wait(%struct.file* %25, i32* %27, i32* %28)
  %30 = load %struct.v4l2_fh*, %struct.v4l2_fh** %9, align 8
  %31 = call i64 @v4l2_event_pending(%struct.v4l2_fh* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load i32, i32* @EPOLLPRI, align 4
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %33, %21
  br label %38

38:                                               ; preds = %37, %3
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @vb2_core_poll(%struct.vb2_queue*, %struct.file*, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @v4l2_event_pending(%struct.v4l2_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
