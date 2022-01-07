; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-pm8xxx-xoadc.c_pm8xxx_calibrate_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-pm8xxx-xoadc.c_pm8xxx_calibrate_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8xxx_xoadc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64, i8* }
%struct.pm8xxx_chan_info = type { i32 }

@VADC_ABSOLUTE_RANGE_UV = common dso_local global i8* null, align 8
@VADC_CALIB_ABSOLUTE = common dso_local global i64 0, align 8
@VADC_RATIOMETRIC_RANGE = common dso_local global i8* null, align 8
@VADC_CALIB_RATIOMETRIC = common dso_local global i64 0, align 8
@PM8XXX_CHANNEL_125V = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"could not read 1.25V reference channel\0A\00", align 1
@PM8XXX_CHANNEL_INTERNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"could not read 0.625V reference channel\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"read same ADC code for 1.25V and 0.625V\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"absolute calibration dx = %d uV, dy = %d units\0A\00", align 1
@PM8XXX_CHANNEL_MUXOFF = common dso_local global i32 0, align 4
@AMUX_RSV5 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"could not read MUXOFF reference channel\0A\00", align 1
@AMUX_RSV4 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"ratiometric calibration dx = %d, dy = %d units\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8xxx_xoadc*)* @pm8xxx_calibrate_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_calibrate_device(%struct.pm8xxx_xoadc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm8xxx_xoadc*, align 8
  %4 = alloca %struct.pm8xxx_chan_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pm8xxx_xoadc* %0, %struct.pm8xxx_xoadc** %3, align 8
  %10 = load i8*, i8** @VADC_ABSOLUTE_RANGE_UV, align 8
  %11 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %3, align 8
  %12 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i64, i64* @VADC_CALIB_ABSOLUTE, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i8* %10, i8** %16, align 8
  %17 = load i8*, i8** @VADC_RATIOMETRIC_RANGE, align 8
  %18 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %3, align 8
  %19 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* @VADC_CALIB_RATIOMETRIC, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i8* %17, i8** %23, align 8
  %24 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %3, align 8
  %25 = load i32, i32* @PM8XXX_CHANNEL_125V, align 4
  %26 = call %struct.pm8xxx_chan_info* @pm8xxx_get_channel(%struct.pm8xxx_xoadc* %24, i32 %25)
  store %struct.pm8xxx_chan_info* %26, %struct.pm8xxx_chan_info** %4, align 8
  %27 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %4, align 8
  %28 = icmp ne %struct.pm8xxx_chan_info* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %172

32:                                               ; preds = %1
  %33 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %3, align 8
  %34 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %4, align 8
  %35 = call i32 @pm8xxx_read_channel(%struct.pm8xxx_xoadc* %33, %struct.pm8xxx_chan_info* %34, i64* %5)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %3, align 8
  %40 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %172

45:                                               ; preds = %32
  %46 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %3, align 8
  %47 = load i32, i32* @PM8XXX_CHANNEL_INTERNAL, align 4
  %48 = call %struct.pm8xxx_chan_info* @pm8xxx_get_channel(%struct.pm8xxx_xoadc* %46, i32 %47)
  store %struct.pm8xxx_chan_info* %48, %struct.pm8xxx_chan_info** %4, align 8
  %49 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %4, align 8
  %50 = icmp ne %struct.pm8xxx_chan_info* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %172

54:                                               ; preds = %45
  %55 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %3, align 8
  %56 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %4, align 8
  %57 = call i32 @pm8xxx_read_channel(%struct.pm8xxx_xoadc* %55, %struct.pm8xxx_chan_info* %56, i64* %6)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %3, align 8
  %62 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %172

67:                                               ; preds = %54
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %3, align 8
  %73 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %172

78:                                               ; preds = %67
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* %6, align 8
  %81 = sub nsw i64 %79, %80
  %82 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %3, align 8
  %83 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i64, i64* @VADC_CALIB_ABSOLUTE, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i64 %81, i64* %87, align 8
  %88 = load i64, i64* %6, align 8
  %89 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %3, align 8
  %90 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i64, i64* @VADC_CALIB_ABSOLUTE, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i64 %88, i64* %94, align 8
  %95 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %3, align 8
  %96 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i8*, i8** @VADC_ABSOLUTE_RANGE_UV, align 8
  %99 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %3, align 8
  %100 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i64, i64* @VADC_CALIB_ABSOLUTE, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @dev_info(i32 %97, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %98, i64 %105)
  %107 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %3, align 8
  %108 = load i32, i32* @PM8XXX_CHANNEL_MUXOFF, align 4
  %109 = call %struct.pm8xxx_chan_info* @pm8xxx_get_channel(%struct.pm8xxx_xoadc* %107, i32 %108)
  store %struct.pm8xxx_chan_info* %109, %struct.pm8xxx_chan_info** %4, align 8
  %110 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %4, align 8
  %111 = icmp ne %struct.pm8xxx_chan_info* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %78
  %113 = load i32, i32* @ENODEV, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %172

115:                                              ; preds = %78
  %116 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %3, align 8
  %117 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %4, align 8
  %118 = load i32, i32* @AMUX_RSV5, align 4
  %119 = call i32 @pm8xxx_read_channel_rsv(%struct.pm8xxx_xoadc* %116, %struct.pm8xxx_chan_info* %117, i32 %118, i64* %7, i32 1)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %115
  %123 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %3, align 8
  %124 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @dev_err(i32 %125, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %127 = load i32, i32* @ENODEV, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %172

129:                                              ; preds = %115
  %130 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %3, align 8
  %131 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %4, align 8
  %132 = load i32, i32* @AMUX_RSV4, align 4
  %133 = call i32 @pm8xxx_read_channel_rsv(%struct.pm8xxx_xoadc* %130, %struct.pm8xxx_chan_info* %131, i32 %132, i64* %8, i32 1)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %129
  %137 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %3, align 8
  %138 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @dev_err(i32 %139, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %141 = load i32, i32* @ENODEV, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %172

143:                                              ; preds = %129
  %144 = load i64, i64* %7, align 8
  %145 = load i64, i64* %8, align 8
  %146 = sub nsw i64 %144, %145
  %147 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %3, align 8
  %148 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %147, i32 0, i32 0
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = load i64, i64* @VADC_CALIB_RATIOMETRIC, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  store i64 %146, i64* %152, align 8
  %153 = load i64, i64* %8, align 8
  %154 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %3, align 8
  %155 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %154, i32 0, i32 0
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = load i64, i64* @VADC_CALIB_RATIOMETRIC, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  store i64 %153, i64* %159, align 8
  %160 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %3, align 8
  %161 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i8*, i8** @VADC_RATIOMETRIC_RANGE, align 8
  %164 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %3, align 8
  %165 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %164, i32 0, i32 0
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = load i64, i64* @VADC_CALIB_RATIOMETRIC, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @dev_info(i32 %162, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i8* %163, i64 %170)
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %143, %136, %122, %112, %71, %60, %51, %38, %29
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.pm8xxx_chan_info* @pm8xxx_get_channel(%struct.pm8xxx_xoadc*, i32) #1

declare dso_local i32 @pm8xxx_read_channel(%struct.pm8xxx_xoadc*, %struct.pm8xxx_chan_info*, i64*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i8*, i64) #1

declare dso_local i32 @pm8xxx_read_channel_rsv(%struct.pm8xxx_xoadc*, %struct.pm8xxx_chan_info*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
