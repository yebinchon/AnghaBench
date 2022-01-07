; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c___verify_planes_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c___verify_planes_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i64 }
%struct.v4l2_buffer = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [58 x i8] c"multi-planar buffer passed but planes array not provided\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VB2_MAX_PLANES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"incorrect planes array length, expected %d, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*, %struct.v4l2_buffer*)* @__verify_planes_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__verify_planes_array(%struct.vb2_buffer* %0, %struct.v4l2_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_buffer*, align 8
  %5 = alloca %struct.v4l2_buffer*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %4, align 8
  store %struct.v4l2_buffer* %1, %struct.v4l2_buffer** %5, align 8
  %6 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @V4L2_TYPE_IS_MULTIPLANAR(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

12:                                               ; preds = %2
  %13 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %47

22:                                               ; preds = %12
  %23 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %22
  %31 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VB2_MAX_PLANES, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %30, %22
  %37 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %38 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %39, i64 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %36, %18, %11
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @V4L2_TYPE_IS_MULTIPLANAR(i32) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
