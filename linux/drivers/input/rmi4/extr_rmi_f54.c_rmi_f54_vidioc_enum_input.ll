; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f54.c_rmi_f54_vidioc_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f54.c_rmi_f54_vidioc_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i32, i32, i32 }
%struct.f54_data = type { i32 }

@F54_REPORT_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_TOUCH = common dso_local global i32 0, align 4
@rmi_f54_report_type_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @rmi_f54_vidioc_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f54_vidioc_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.f54_data*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.f54_data* @video_drvdata(%struct.file* %10)
  store %struct.f54_data* %11, %struct.f54_data** %8, align 8
  %12 = load %struct.f54_data*, %struct.f54_data** %8, align 8
  %13 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @rmi_f54_get_reptype(%struct.f54_data* %12, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @F54_REPORT_NONE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %36

23:                                               ; preds = %3
  %24 = load i32, i32* @V4L2_INPUT_TYPE_TOUCH, align 4
  %25 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** @rmi_f54_report_type_names, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @strlcpy(i32 %29, i32 %34, i32 4)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %23, %20
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.f54_data* @video_drvdata(%struct.file*) #1

declare dso_local i32 @rmi_f54_get_reptype(%struct.f54_data*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
