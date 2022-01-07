; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_core_prepare_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_core_prepare_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { %struct.vb2_buffer** }
%struct.vb2_buffer = type { i64, i64, i64 }

@VB2_BUF_STATE_DEQUEUED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"invalid buffer state %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"buffer already prepared\0A\00", align 1
@fill_user_buffer = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"prepare of buffer %d succeeded\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vb2_core_prepare_buf(%struct.vb2_queue* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vb2_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.vb2_buffer*, align 8
  %9 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %11 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %10, i32 0, i32 0
  %12 = load %struct.vb2_buffer**, %struct.vb2_buffer*** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.vb2_buffer*, %struct.vb2_buffer** %12, i64 %14
  %16 = load %struct.vb2_buffer*, %struct.vb2_buffer** %15, align 8
  store %struct.vb2_buffer* %16, %struct.vb2_buffer** %8, align 8
  %17 = load %struct.vb2_buffer*, %struct.vb2_buffer** %8, align 8
  %18 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VB2_BUF_STATE_DEQUEUED, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.vb2_buffer*, %struct.vb2_buffer** %8, align 8
  %24 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %55

29:                                               ; preds = %3
  %30 = load %struct.vb2_buffer*, %struct.vb2_buffer** %8, align 8
  %31 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %55

38:                                               ; preds = %29
  %39 = load %struct.vb2_buffer*, %struct.vb2_buffer** %8, align 8
  %40 = call i32 @__buf_prepare(%struct.vb2_buffer* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %55

45:                                               ; preds = %38
  %46 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %47 = load i32, i32* @fill_user_buffer, align 4
  %48 = load %struct.vb2_buffer*, %struct.vb2_buffer** %8, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @call_void_bufop(%struct.vb2_queue* %46, i32 %47, %struct.vb2_buffer* %48, i8* %49)
  %51 = load %struct.vb2_buffer*, %struct.vb2_buffer** %8, align 8
  %52 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i32, i8*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %45, %43, %34, %22
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @__buf_prepare(%struct.vb2_buffer*) #1

declare dso_local i32 @call_void_bufop(%struct.vb2_queue*, i32, %struct.vb2_buffer*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
