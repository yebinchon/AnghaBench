; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832_sdr.c_rtl2832_sdr_s_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832_sdr.c_rtl2832_sdr_s_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i32 }
%struct.rtl2832_sdr_dev = type { i32, %struct.platform_device* }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@tuner = common dso_local global i32 0, align 4
@s_tuner = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @rtl2832_sdr_s_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2832_sdr_s_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_tuner*, align 8
  %7 = alloca %struct.rtl2832_sdr_dev*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = call %struct.rtl2832_sdr_dev* @video_drvdata(%struct.file* %10)
  store %struct.rtl2832_sdr_dev* %11, %struct.rtl2832_sdr_dev** %7, align 8
  %12 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %7, align 8
  %13 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %12, i32 0, i32 1
  %14 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  store %struct.platform_device* %14, %struct.platform_device** %8, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %55

23:                                               ; preds = %3
  %24 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %7, align 8
  %30 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @tuner, align 4
  %33 = load i32, i32* @s_tuner, align 4
  %34 = call i64 @V4L2_SUBDEV_HAS_OP(i32 %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %7, align 8
  %38 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @tuner, align 4
  %41 = load i32, i32* @s_tuner, align 4
  %42 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %6, align 8
  %43 = call i32 @v4l2_subdev_call(i32 %39, i32 %40, i32 %41, %struct.v4l2_tuner* %42)
  store i32 %43, i32* %9, align 4
  br label %54

44:                                               ; preds = %28, %23
  %45 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %6, align 8
  %46 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %9, align 4
  br label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %50, %49
  br label %54

54:                                               ; preds = %53, %36
  br label %55

55:                                               ; preds = %54, %22
  %56 = load i32, i32* %9, align 4
  ret i32 %56
}

declare dso_local %struct.rtl2832_sdr_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @V4L2_SUBDEV_HAS_OP(i32, i32, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, %struct.v4l2_tuner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
