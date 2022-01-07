; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832_sdr.c_rtl2832_sdr_enum_freq_bands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832_sdr.c_rtl2832_sdr_enum_freq_bands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_frequency_band = type { i32, i64, i32 }
%struct.file = type { i32 }
%struct.rtl2832_sdr_dev = type { i32, %struct.platform_device* }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"tuner=%d type=%d index=%d\0A\00", align 1
@bands_adc = common dso_local global %struct.v4l2_frequency_band* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@enum_freq_bands = common dso_local global i32 0, align 4
@bands_fm = common dso_local global %struct.v4l2_frequency_band* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency_band*)* @rtl2832_sdr_enum_freq_bands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2832_sdr_enum_freq_bands(%struct.file* %0, i8* %1, %struct.v4l2_frequency_band* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency_band*, align 8
  %8 = alloca %struct.rtl2832_sdr_dev*, align 8
  %9 = alloca %struct.platform_device*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency_band* %2, %struct.v4l2_frequency_band** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.rtl2832_sdr_dev* @video_drvdata(%struct.file* %11)
  store %struct.rtl2832_sdr_dev* %12, %struct.rtl2832_sdr_dev** %8, align 8
  %13 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %8, align 8
  %14 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %13, i32 0, i32 1
  %15 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  store %struct.platform_device* %15, %struct.platform_device** %9, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @dev_dbg(i32* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i64 %26)
  %28 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %3
  %33 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** @bands_adc, align 8
  %37 = call i64 @ARRAY_SIZE(%struct.v4l2_frequency_band* %36)
  %38 = icmp uge i64 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %103

42:                                               ; preds = %32
  %43 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %44 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** @bands_adc, align 8
  %45 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %44, i64 %47
  %49 = bitcast %struct.v4l2_frequency_band* %43 to i8*
  %50 = bitcast %struct.v4l2_frequency_band* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 24, i1 false)
  store i32 0, i32* %10, align 4
  br label %101

51:                                               ; preds = %3
  %52 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %8, align 8
  %58 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @tuner, align 4
  %61 = load i32, i32* @enum_freq_bands, align 4
  %62 = call i64 @V4L2_SUBDEV_HAS_OP(i32 %59, i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %8, align 8
  %66 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @tuner, align 4
  %69 = load i32, i32* @enum_freq_bands, align 4
  %70 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %71 = call i32 @v4l2_subdev_call(i32 %67, i32 %68, i32 %69, %struct.v4l2_frequency_band* %70)
  store i32 %71, i32* %10, align 4
  br label %100

72:                                               ; preds = %56, %51
  %73 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %96

77:                                               ; preds = %72
  %78 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** @bands_fm, align 8
  %82 = call i64 @ARRAY_SIZE(%struct.v4l2_frequency_band* %81)
  %83 = icmp uge i64 %80, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %103

87:                                               ; preds = %77
  %88 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %89 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** @bands_fm, align 8
  %90 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %7, align 8
  %91 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %89, i64 %92
  %94 = bitcast %struct.v4l2_frequency_band* %88 to i8*
  %95 = bitcast %struct.v4l2_frequency_band* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 8 %95, i64 24, i1 false)
  store i32 0, i32* %10, align 4
  br label %99

96:                                               ; preds = %72
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %96, %87
  br label %100

100:                                              ; preds = %99, %64
  br label %101

101:                                              ; preds = %100, %42
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %84, %39
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.rtl2832_sdr_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i64) #1

declare dso_local i64 @ARRAY_SIZE(%struct.v4l2_frequency_band*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @V4L2_SUBDEV_HAS_OP(i32, i32, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, %struct.v4l2_frequency_band*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
