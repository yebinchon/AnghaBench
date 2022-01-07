; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832_sdr.c_rtl2832_sdr_set_tuner_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832_sdr.c_rtl2832_sdr_set_tuner_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl2832_sdr_dev = type { i64, i32, i32, i64, i32, %struct.platform_device* }
%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.rtl2832_sdr_platform_data* }
%struct.rtl2832_sdr_platform_data = type { %struct.dvb_frontend* }
%struct.dvb_frontend = type { %struct.TYPE_5__, %struct.dtv_frontend_properties }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend*)* }
%struct.dtv_frontend_properties = type { i64, i64, i32 }
%struct.v4l2_ctrl = type { i32 }

@V4L2_CID_RF_TUNER_BANDWIDTH_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_RF_TUNER_BANDWIDTH = common dso_local global i32 0, align 4
@SYS_DVBT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"frequency=%u bandwidth=%d\0A\00", align 1
@POWER_ON = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@s_frequency = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl2832_sdr_dev*)* @rtl2832_sdr_set_tuner_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2832_sdr_set_tuner_freq(%struct.rtl2832_sdr_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl2832_sdr_dev*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.rtl2832_sdr_platform_data*, align 8
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca %struct.dtv_frontend_properties*, align 8
  %8 = alloca %struct.v4l2_ctrl*, align 8
  %9 = alloca %struct.v4l2_ctrl*, align 8
  store %struct.rtl2832_sdr_dev* %0, %struct.rtl2832_sdr_dev** %3, align 8
  %10 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %11 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %10, i32 0, i32 5
  %12 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  store %struct.platform_device* %12, %struct.platform_device** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.rtl2832_sdr_platform_data*, %struct.rtl2832_sdr_platform_data** %15, align 8
  store %struct.rtl2832_sdr_platform_data* %16, %struct.rtl2832_sdr_platform_data** %5, align 8
  %17 = load %struct.rtl2832_sdr_platform_data*, %struct.rtl2832_sdr_platform_data** %5, align 8
  %18 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, %struct.rtl2832_sdr_platform_data* %17, i32 0, i32 0
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %18, align 8
  store %struct.dvb_frontend* %19, %struct.dvb_frontend** %6, align 8
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 1
  store %struct.dtv_frontend_properties* %21, %struct.dtv_frontend_properties** %7, align 8
  %22 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %23 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %104

27:                                               ; preds = %1
  %28 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %29 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %28, i32 0, i32 4
  %30 = load i32, i32* @V4L2_CID_RF_TUNER_BANDWIDTH_AUTO, align 4
  %31 = call %struct.v4l2_ctrl* @v4l2_ctrl_find(i32* %29, i32 %30)
  store %struct.v4l2_ctrl* %31, %struct.v4l2_ctrl** %8, align 8
  %32 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %33 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %32, i32 0, i32 4
  %34 = load i32, i32* @V4L2_CID_RF_TUNER_BANDWIDTH, align 4
  %35 = call %struct.v4l2_ctrl* @v4l2_ctrl_find(i32* %33, i32 %34)
  store %struct.v4l2_ctrl* %35, %struct.v4l2_ctrl** %9, align 8
  %36 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %8, align 8
  %37 = call i64 @v4l2_ctrl_g_ctrl(%struct.v4l2_ctrl* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %27
  %40 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %41 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %44 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %46 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %47 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @v4l2_ctrl_s_ctrl(%struct.v4l2_ctrl* %45, i64 %48)
  br label %55

50:                                               ; preds = %27
  %51 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %52 = call i64 @v4l2_ctrl_g_ctrl(%struct.v4l2_ctrl* %51)
  %53 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %54 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %50, %39
  %56 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %57 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %60 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* @SYS_DVBT, align 4
  %62 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %63 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %67 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %70 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @dev_dbg(%struct.TYPE_6__* %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %68, i64 %71)
  %73 = load i32, i32* @POWER_ON, align 4
  %74 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %75 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %74, i32 0, i32 2
  %76 = call i32 @test_bit(i32 %73, i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %104

79:                                               ; preds = %55
  %80 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %3, align 8
  %81 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @tuner, align 4
  %84 = load i32, i32* @s_frequency, align 4
  %85 = call i32 @V4L2_SUBDEV_HAS_OP(i32 %82, i32 %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %103, label %87

87:                                               ; preds = %79
  %88 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %89 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %91, align 8
  %93 = icmp ne i32 (%struct.dvb_frontend*)* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %96 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %98, align 8
  %100 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %101 = call i32 %99(%struct.dvb_frontend* %100)
  br label %102

102:                                              ; preds = %94, %87
  br label %103

103:                                              ; preds = %102, %79
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %78, %26
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_find(i32*, i32) #1

declare dso_local i64 @v4l2_ctrl_g_ctrl(%struct.v4l2_ctrl*) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl(%struct.v4l2_ctrl*, i64) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_6__*, i8*, i64, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @V4L2_SUBDEV_HAS_OP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
