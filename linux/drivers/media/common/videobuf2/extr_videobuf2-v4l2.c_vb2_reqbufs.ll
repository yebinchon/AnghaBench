; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_reqbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.v4l2_requestbuffers = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vb2_reqbufs(%struct.vb2_queue* %0, %struct.v4l2_requestbuffers* %1) #0 {
  %3 = alloca %struct.vb2_queue*, align 8
  %4 = alloca %struct.v4l2_requestbuffers*, align 8
  %5 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %3, align 8
  store %struct.v4l2_requestbuffers* %1, %struct.v4l2_requestbuffers** %4, align 8
  %6 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %7 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %4, align 8
  %8 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %4, align 8
  %11 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @vb2_verify_memory_type(%struct.vb2_queue* %6, i32 %9, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %15 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %15, i32 0, i32 2
  %17 = call i32 @fill_buf_caps(%struct.vb2_queue* %14, i32* %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  br label %30

22:                                               ; preds = %2
  %23 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %24 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %4, align 8
  %25 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %4, align 8
  %28 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %27, i32 0, i32 0
  %29 = call i32 @vb2_core_reqbufs(%struct.vb2_queue* %23, i32 %26, i32* %28)
  br label %30

30:                                               ; preds = %22, %20
  %31 = phi i32 [ %21, %20 ], [ %29, %22 ]
  ret i32 %31
}

declare dso_local i32 @vb2_verify_memory_type(%struct.vb2_queue*, i32, i32) #1

declare dso_local i32 @fill_buf_caps(%struct.vb2_queue*, i32*) #1

declare dso_local i32 @vb2_core_reqbufs(%struct.vb2_queue*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
