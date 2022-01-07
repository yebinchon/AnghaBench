; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_fop_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_fop_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.video_device = type { %struct.vb2_queue*, %struct.mutex* }
%struct.vb2_queue = type { i32, i8*, %struct.mutex* }
%struct.mutex = type { i32 }

@EPOLLERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vb2_fop_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca %struct.mutex*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = call %struct.video_device* @video_devdata(%struct.file* %11)
  store %struct.video_device* %12, %struct.video_device** %6, align 8
  %13 = load %struct.video_device*, %struct.video_device** %6, align 8
  %14 = getelementptr inbounds %struct.video_device, %struct.video_device* %13, i32 0, i32 0
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %14, align 8
  store %struct.vb2_queue* %15, %struct.vb2_queue** %7, align 8
  %16 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %17 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %16, i32 0, i32 2
  %18 = load %struct.mutex*, %struct.mutex** %17, align 8
  %19 = icmp ne %struct.mutex* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %22 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %21, i32 0, i32 2
  %23 = load %struct.mutex*, %struct.mutex** %22, align 8
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.video_device*, %struct.video_device** %6, align 8
  %26 = getelementptr inbounds %struct.video_device, %struct.video_device* %25, i32 0, i32 1
  %27 = load %struct.mutex*, %struct.mutex** %26, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi %struct.mutex* [ %23, %20 ], [ %27, %24 ]
  store %struct.mutex* %29, %struct.mutex** %8, align 8
  %30 = load %struct.mutex*, %struct.mutex** %8, align 8
  %31 = icmp ne %struct.mutex* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON(i32 %33)
  %35 = load %struct.mutex*, %struct.mutex** %8, align 8
  %36 = icmp ne %struct.mutex* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load %struct.mutex*, %struct.mutex** %8, align 8
  %39 = call i64 @mutex_lock_interruptible(%struct.mutex* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @EPOLLERR, align 4
  store i32 %42, i32* %3, align 4
  br label %74

43:                                               ; preds = %37, %28
  %44 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %45 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %10, align 8
  %47 = load %struct.video_device*, %struct.video_device** %6, align 8
  %48 = getelementptr inbounds %struct.video_device, %struct.video_device* %47, i32 0, i32 0
  %49 = load %struct.vb2_queue*, %struct.vb2_queue** %48, align 8
  %50 = load %struct.file*, %struct.file** %4, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @vb2_poll(%struct.vb2_queue* %49, %struct.file* %50, i32* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i8*, i8** %10, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %66, label %55

55:                                               ; preds = %43
  %56 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %57 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.file*, %struct.file** %4, align 8
  %62 = getelementptr inbounds %struct.file, %struct.file* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %65 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %60, %55, %43
  %67 = load %struct.mutex*, %struct.mutex** %8, align 8
  %68 = icmp ne %struct.mutex* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.mutex*, %struct.mutex** %8, align 8
  %71 = call i32 @mutex_unlock(%struct.mutex* %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %41
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @mutex_lock_interruptible(%struct.mutex*) #1

declare dso_local i32 @vb2_poll(%struct.vb2_queue*, %struct.file*, i32*) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
