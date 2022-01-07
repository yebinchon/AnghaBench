; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_ioctl_reqbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_ioctl_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32* }
%struct.v4l2_requestbuffers = type { i32, i32, i32, i32 }
%struct.video_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vb2_ioctl_reqbufs(%struct.file* %0, i8* %1, %struct.v4l2_requestbuffers* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_requestbuffers*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_requestbuffers* %2, %struct.v4l2_requestbuffers** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.video_device* @video_devdata(%struct.file* %10)
  store %struct.video_device* %11, %struct.video_device** %8, align 8
  %12 = load %struct.video_device*, %struct.video_device** %8, align 8
  %13 = getelementptr inbounds %struct.video_device, %struct.video_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @vb2_verify_memory_type(%struct.TYPE_4__* %14, i32 %17, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.video_device*, %struct.video_device** %8, align 8
  %23 = getelementptr inbounds %struct.video_device, %struct.video_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %25, i32 0, i32 2
  %27 = call i32 @fill_buf_caps(%struct.TYPE_4__* %24, i32* %26)
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %70

32:                                               ; preds = %3
  %33 = load %struct.video_device*, %struct.video_device** %8, align 8
  %34 = load %struct.file*, %struct.file** %5, align 8
  %35 = call i64 @vb2_queue_is_busy(%struct.video_device* %33, %struct.file* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %70

40:                                               ; preds = %32
  %41 = load %struct.video_device*, %struct.video_device** %8, align 8
  %42 = getelementptr inbounds %struct.video_device, %struct.video_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %47, i32 0, i32 0
  %49 = call i32 @vb2_core_reqbufs(%struct.TYPE_4__* %43, i32 %46, i32* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %40
  %53 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.file*, %struct.file** %5, align 8
  %59 = getelementptr inbounds %struct.file, %struct.file* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  br label %62

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %57
  %63 = phi i32* [ %60, %57 ], [ null, %61 ]
  %64 = load %struct.video_device*, %struct.video_device** %8, align 8
  %65 = getelementptr inbounds %struct.video_device, %struct.video_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32* %63, i32** %67, align 8
  br label %68

68:                                               ; preds = %62, %40
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %37, %30
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @vb2_verify_memory_type(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @fill_buf_caps(%struct.TYPE_4__*, i32*) #1

declare dso_local i64 @vb2_queue_is_busy(%struct.video_device*, %struct.file*) #1

declare dso_local i32 @vb2_core_reqbufs(%struct.TYPE_4__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
