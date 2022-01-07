; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c___copy_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c___copy_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32, %struct.vb2_queue* }
%struct.vb2_queue = type { i64, i64 }
%struct.v4l2_buffer = type { i32, i32, i32 }
%struct.vb2_v4l2_buffer = type { i32, i32 }

@V4L2_BUF_FLAG_TIMECODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*, i8*)* @__copy_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__copy_timestamp(%struct.vb2_buffer* %0, i8* %1) #0 {
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.v4l2_buffer*, align 8
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  %7 = alloca %struct.vb2_queue*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.v4l2_buffer*
  store %struct.v4l2_buffer* %9, %struct.v4l2_buffer** %5, align 8
  %10 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %11 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %10)
  store %struct.vb2_v4l2_buffer* %11, %struct.vb2_v4l2_buffer** %6, align 8
  %12 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %13 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %12, i32 0, i32 1
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %13, align 8
  store %struct.vb2_queue* %14, %struct.vb2_queue** %7, align 8
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %16 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %2
  %20 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %21 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %25, i32 0, i32 2
  %27 = call i32 @v4l2_timeval_to_ns(i32* %26)
  %28 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %29 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @V4L2_BUF_FLAG_TIMECODE, align 4
  %35 = and i32 %33, %34
  %36 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %37 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @V4L2_BUF_FLAG_TIMECODE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %30
  %47 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %48 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %51 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %46, %30
  br label %53

53:                                               ; preds = %52, %2
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local i32 @v4l2_timeval_to_ns(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
