; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sur40.c_sur40_vidioc_enum_frameintervals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sur40.c_sur40_vidioc_enum_frameintervals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frmivalenum = type { i64, i64, i64, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sur40_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@V4L2_TCH_FMT_TU08 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_GREY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FRMIVAL_TYPE_DISCRETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frmivalenum*)* @sur40_vidioc_enum_frameintervals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sur40_vidioc_enum_frameintervals(%struct.file* %0, i8* %1, %struct.v4l2_frmivalenum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frmivalenum*, align 8
  %8 = alloca %struct.sur40_state*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frmivalenum* %2, %struct.v4l2_frmivalenum** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.sur40_state* @video_drvdata(%struct.file* %9)
  store %struct.sur40_state* %10, %struct.sur40_state** %8, align 8
  %11 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %3
  %16 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @V4L2_TCH_FMT_TU08, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_PIX_FMT_GREY, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %45, label %27

27:                                               ; preds = %21, %15
  %28 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.sur40_state*, %struct.sur40_state** %8, align 8
  %32 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %30, %34
  br i1 %35, label %45, label %36

36:                                               ; preds = %27
  %37 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.sur40_state*, %struct.sur40_state** %8, align 8
  %41 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %39, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %36, %27, %21, %3
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %58

48:                                               ; preds = %36
  %49 = load i32, i32* @V4L2_FRMIVAL_TYPE_DISCRETE, align 4
  %50 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 60, i32* %54, align 8
  %55 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %48, %45
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.sur40_state* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
