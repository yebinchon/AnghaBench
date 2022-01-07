; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_dqbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_dqbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64, i32, i32 }
%struct.v4l2_buffer = type { i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"file io in progress\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid buffer type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_DONE = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vb2_dqbuf(%struct.vb2_queue* %0, %struct.v4l2_buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vb2_queue*, align 8
  %6 = alloca %struct.v4l2_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %5, align 8
  store %struct.v4l2_buffer* %1, %struct.v4l2_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %10 = call i64 @vb2_fileio_is_active(%struct.vb2_queue* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %62

16:                                               ; preds = %3
  %17 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %21 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %62

28:                                               ; preds = %16
  %29 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %30 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @vb2_core_dqbuf(%struct.vb2_queue* %29, i32* null, %struct.v4l2_buffer* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %34 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %28
  %38 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @V4L2_BUF_FLAG_DONE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %46 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @V4L2_BUF_FLAG_LAST, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %53 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %52, i32 0, i32 1
  store i32 1, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %44, %37, %28
  %55 = load i32, i32* @V4L2_BUF_FLAG_DONE, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %58 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %54, %24, %12
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @vb2_fileio_is_active(%struct.vb2_queue*) #1

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @vb2_core_dqbuf(%struct.vb2_queue*, i32*, %struct.v4l2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
