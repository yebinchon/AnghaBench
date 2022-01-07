; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_querybuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_querybuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64, i64, %struct.vb2_buffer** }
%struct.vb2_buffer = type { i32 }
%struct.v4l2_buffer = type { i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"wrong buffer type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"buffer index out of range\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vb2_querybuf(%struct.vb2_queue* %0, %struct.v4l2_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca %struct.v4l2_buffer*, align 8
  %6 = alloca %struct.vb2_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store %struct.v4l2_buffer* %1, %struct.v4l2_buffer** %5, align 8
  %8 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %12 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %54

19:                                               ; preds = %2
  %20 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %24 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp uge i64 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %54

31:                                               ; preds = %19
  %32 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %33 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %32, i32 0, i32 2
  %34 = load %struct.vb2_buffer**, %struct.vb2_buffer*** %33, align 8
  %35 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %36 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.vb2_buffer*, %struct.vb2_buffer** %34, i64 %37
  %39 = load %struct.vb2_buffer*, %struct.vb2_buffer** %38, align 8
  store %struct.vb2_buffer* %39, %struct.vb2_buffer** %6, align 8
  %40 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %41 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %42 = call i32 @__verify_planes_array(%struct.vb2_buffer* %40, %struct.v4l2_buffer* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %31
  %46 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %47 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %48 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %51 = call i32 @vb2_core_querybuf(%struct.vb2_queue* %46, i64 %49, %struct.v4l2_buffer* %50)
  br label %52

52:                                               ; preds = %45, %31
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %27, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @__verify_planes_array(%struct.vb2_buffer*, %struct.v4l2_buffer*) #1

declare dso_local i32 @vb2_core_querybuf(%struct.vb2_queue*, i64, %struct.v4l2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
