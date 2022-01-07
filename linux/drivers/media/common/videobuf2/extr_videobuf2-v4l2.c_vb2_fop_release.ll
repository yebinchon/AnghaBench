; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_fop_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_fop_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.video_device = type { %struct.mutex*, %struct.TYPE_2__* }
%struct.mutex = type { i32 }
%struct.TYPE_2__ = type { %struct.mutex* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vb2_fop_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.video_device*, align 8
  %4 = alloca %struct.mutex*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.video_device* @video_devdata(%struct.file* %5)
  store %struct.video_device* %6, %struct.video_device** %3, align 8
  %7 = load %struct.video_device*, %struct.video_device** %3, align 8
  %8 = getelementptr inbounds %struct.video_device, %struct.video_device* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.mutex*, %struct.mutex** %10, align 8
  %12 = icmp ne %struct.mutex* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.video_device*, %struct.video_device** %3, align 8
  %15 = getelementptr inbounds %struct.video_device, %struct.video_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.mutex*, %struct.mutex** %17, align 8
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.video_device*, %struct.video_device** %3, align 8
  %21 = getelementptr inbounds %struct.video_device, %struct.video_device* %20, i32 0, i32 0
  %22 = load %struct.mutex*, %struct.mutex** %21, align 8
  br label %23

23:                                               ; preds = %19, %13
  %24 = phi %struct.mutex* [ %18, %13 ], [ %22, %19 ]
  store %struct.mutex* %24, %struct.mutex** %4, align 8
  %25 = load %struct.file*, %struct.file** %2, align 8
  %26 = load %struct.mutex*, %struct.mutex** %4, align 8
  %27 = call i32 @_vb2_fop_release(%struct.file* %25, %struct.mutex* %26)
  ret i32 %27
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @_vb2_fop_release(%struct.file*, %struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
