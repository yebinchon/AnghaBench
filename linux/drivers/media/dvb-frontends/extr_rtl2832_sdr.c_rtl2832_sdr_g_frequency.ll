; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832_sdr.c_rtl2832_sdr_g_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832_sdr.c_rtl2832_sdr_g_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i32, i8*, i32 }
%struct.rtl2832_sdr_dev = type { i32, i32, i32, %struct.platform_device* }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"tuner=%d type=%d\0A\00", align 1
@V4L2_TUNER_ADC = common dso_local global i8* null, align 8
@tuner = common dso_local global i32 0, align 4
@g_frequency = common dso_local global i32 0, align 4
@V4L2_TUNER_RF = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @rtl2832_sdr_g_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2832_sdr_g_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_frequency*, align 8
  %7 = alloca %struct.rtl2832_sdr_dev*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = call %struct.rtl2832_sdr_dev* @video_drvdata(%struct.file* %10)
  store %struct.rtl2832_sdr_dev* %11, %struct.rtl2832_sdr_dev** %7, align 8
  %12 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %7, align 8
  %13 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %12, i32 0, i32 3
  %14 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  store %struct.platform_device* %14, %struct.platform_device** %8, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %22)
  %24 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %3
  %29 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %7, align 8
  %30 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** @V4L2_TUNER_ADC, align 8
  %35 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %36 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  store i32 0, i32* %9, align 4
  br label %80

37:                                               ; preds = %3
  %38 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %61

42:                                               ; preds = %37
  %43 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %7, align 8
  %44 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @tuner, align 4
  %47 = load i32, i32* @g_frequency, align 4
  %48 = call i64 @V4L2_SUBDEV_HAS_OP(i32 %45, i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %42
  %51 = load i8*, i8** @V4L2_TUNER_RF, align 8
  %52 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %53 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %7, align 8
  %55 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @tuner, align 4
  %58 = load i32, i32* @g_frequency, align 4
  %59 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %60 = call i32 @v4l2_subdev_call(i32 %56, i32 %57, i32 %58, %struct.v4l2_frequency* %59)
  store i32 %60, i32* %9, align 4
  br label %79

61:                                               ; preds = %42, %37
  %62 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %63 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %7, align 8
  %68 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %71 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i8*, i8** @V4L2_TUNER_RF, align 8
  %73 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %74 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  store i32 0, i32* %9, align 4
  br label %78

75:                                               ; preds = %61
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %75, %66
  br label %79

79:                                               ; preds = %78, %50
  br label %80

80:                                               ; preds = %79, %28
  %81 = load i32, i32* %9, align 4
  ret i32 %81
}

declare dso_local %struct.rtl2832_sdr_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i8*) #1

declare dso_local i64 @V4L2_SUBDEV_HAS_OP(i32, i32, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, %struct.v4l2_frequency*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
