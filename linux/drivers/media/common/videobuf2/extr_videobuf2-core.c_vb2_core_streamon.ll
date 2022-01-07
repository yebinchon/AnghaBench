; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_core_streamon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_core_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"invalid stream type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"already streaming\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"no buffers have been allocated\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"need at least %u allocated buffers\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"successful\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vb2_core_streamon(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %9 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %7, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %74

16:                                               ; preds = %2
  %17 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %18 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 (i32, i8*, ...) @dprintk(i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %74

23:                                               ; preds = %16
  %24 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %25 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %74

32:                                               ; preds = %23
  %33 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %34 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %37 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %42 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %74

47:                                               ; preds = %32
  %48 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %49 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %52 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %50, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %47
  %56 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %57 = call i32 @v4l_vb2q_enable_media_source(%struct.vb2_queue* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %74

62:                                               ; preds = %55
  %63 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %64 = call i32 @vb2_start_streaming(%struct.vb2_queue* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %74

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %47
  %71 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %72 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  %73 = call i32 (i32, i8*, ...) @dprintk(i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %67, %60, %40, %28, %21, %12
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @v4l_vb2q_enable_media_source(%struct.vb2_queue*) #1

declare dso_local i32 @vb2_start_streaming(%struct.vb2_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
