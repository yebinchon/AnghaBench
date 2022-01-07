; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-pm8xxx-xoadc.c_pm8xxx_xoadc_parse_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-pm8xxx-xoadc.c_pm8xxx_xoadc_parse_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i8* }
%struct.xoadc_channel = type { i64, i64, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iio_chan_spec = type { i32, i64, i32, i32, i32, i64 }
%struct.pm8xxx_chan_info = type { i8*, i32, i32, i32, %struct.xoadc_channel* }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"invalid pre scale/mux number %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"invalid amux channel number %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"could not locate channel %02x/%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VADC_CALIB_ABSOLUTE = common dso_local global i32 0, align 4
@VADC_DEF_DECIMATION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"qcom,ratiometric\00", align 1
@VADC_CALIB_RATIOMETRIC = common dso_local global i32 0, align 4
@XOADC_RSV_MAX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"%s too large RSV value %d\0A\00", align 1
@AMUX_RSV3 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"%s invalid RSV value %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"qcom,decimation\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"%s invalid decimation %d\0A\00", align 1
@IIO_CHAN_INFO_RAW = common dso_local global i32 0, align 4
@IIO_CHAN_INFO_PROCESSED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [111 x i8] c"channel [PRESCALE/MUX: %02x AMUX: %02x] \22%s\22 ref voltage: %d, decimation %d prescale %d/%d, scale function %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_node*, %struct.xoadc_channel*, %struct.iio_chan_spec*, %struct.pm8xxx_chan_info*)* @pm8xxx_xoadc_parse_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_xoadc_parse_channel(%struct.device* %0, %struct.device_node* %1, %struct.xoadc_channel* %2, %struct.iio_chan_spec* %3, %struct.pm8xxx_chan_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.xoadc_channel*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca %struct.pm8xxx_chan_info*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.xoadc_channel*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.device_node* %1, %struct.device_node** %8, align 8
  store %struct.xoadc_channel* %2, %struct.xoadc_channel** %9, align 8
  store %struct.iio_chan_spec* %3, %struct.iio_chan_spec** %10, align 8
  store %struct.pm8xxx_chan_info* %4, %struct.pm8xxx_chan_info** %11, align 8
  %20 = load %struct.device_node*, %struct.device_node** %8, align 8
  %21 = getelementptr inbounds %struct.device_node, %struct.device_node* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %12, align 8
  %23 = load %struct.device_node*, %struct.device_node** %8, align 8
  %24 = call i32 @of_property_read_u32_index(%struct.device_node* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0, i64* %14)
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %18, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %5
  %28 = load %struct.device*, %struct.device** %7, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = call i32 (%struct.device*, i8*, i8*, ...) @dev_err(%struct.device* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* %18, align 4
  store i32 %31, i32* %6, align 4
  br label %204

32:                                               ; preds = %5
  %33 = load %struct.device_node*, %struct.device_node** %8, align 8
  %34 = call i32 @of_property_read_u32_index(%struct.device_node* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1, i64* %15)
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %18, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.device*, %struct.device** %7, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = call i32 (%struct.device*, i8*, i8*, ...) @dev_err(%struct.device* %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* %18, align 4
  store i32 %41, i32* %6, align 4
  br label %204

42:                                               ; preds = %32
  store i32 0, i32* %19, align 4
  %43 = load %struct.xoadc_channel*, %struct.xoadc_channel** %9, align 8
  %44 = getelementptr inbounds %struct.xoadc_channel, %struct.xoadc_channel* %43, i64 0
  store %struct.xoadc_channel* %44, %struct.xoadc_channel** %13, align 8
  br label %45

45:                                               ; preds = %68, %42
  %46 = load %struct.xoadc_channel*, %struct.xoadc_channel** %13, align 8
  %47 = icmp ne %struct.xoadc_channel* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.xoadc_channel*, %struct.xoadc_channel** %13, align 8
  %50 = getelementptr inbounds %struct.xoadc_channel, %struct.xoadc_channel* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %48, %45
  %54 = phi i1 [ false, %45 ], [ %52, %48 ]
  br i1 %54, label %55, label %73

55:                                               ; preds = %53
  %56 = load %struct.xoadc_channel*, %struct.xoadc_channel** %13, align 8
  %57 = getelementptr inbounds %struct.xoadc_channel, %struct.xoadc_channel* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %14, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.xoadc_channel*, %struct.xoadc_channel** %13, align 8
  %63 = getelementptr inbounds %struct.xoadc_channel, %struct.xoadc_channel* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %15, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %73

68:                                               ; preds = %61, %55
  %69 = load %struct.xoadc_channel*, %struct.xoadc_channel** %13, align 8
  %70 = getelementptr inbounds %struct.xoadc_channel, %struct.xoadc_channel* %69, i32 1
  store %struct.xoadc_channel* %70, %struct.xoadc_channel** %13, align 8
  %71 = load i32, i32* %19, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %19, align 4
  br label %45

73:                                               ; preds = %67, %53
  %74 = load %struct.xoadc_channel*, %struct.xoadc_channel** %13, align 8
  %75 = getelementptr inbounds %struct.xoadc_channel, %struct.xoadc_channel* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %73
  %79 = load %struct.device*, %struct.device** %7, align 8
  %80 = load i64, i64* %14, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = load i64, i64* %15, align 8
  %83 = call i32 (%struct.device*, i8*, i8*, ...) @dev_err(%struct.device* %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %81, i64 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %204

86:                                               ; preds = %73
  %87 = load i8*, i8** %12, align 8
  %88 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %11, align 8
  %89 = getelementptr inbounds %struct.pm8xxx_chan_info, %struct.pm8xxx_chan_info* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load %struct.xoadc_channel*, %struct.xoadc_channel** %13, align 8
  %91 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %11, align 8
  %92 = getelementptr inbounds %struct.pm8xxx_chan_info, %struct.pm8xxx_chan_info* %91, i32 0, i32 4
  store %struct.xoadc_channel* %90, %struct.xoadc_channel** %92, align 8
  %93 = load i32, i32* @VADC_CALIB_ABSOLUTE, align 4
  %94 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %11, align 8
  %95 = getelementptr inbounds %struct.pm8xxx_chan_info, %struct.pm8xxx_chan_info* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @VADC_DEF_DECIMATION, align 4
  %97 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %11, align 8
  %98 = getelementptr inbounds %struct.pm8xxx_chan_info, %struct.pm8xxx_chan_info* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  %99 = load %struct.device_node*, %struct.device_node** %8, align 8
  %100 = call i32 @of_property_read_u32(%struct.device_node* %99, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64* %16)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %128, label %102

102:                                              ; preds = %86
  %103 = load i32, i32* @VADC_CALIB_RATIOMETRIC, align 4
  %104 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %11, align 8
  %105 = getelementptr inbounds %struct.pm8xxx_chan_info, %struct.pm8xxx_chan_info* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  %106 = load i64, i64* %16, align 8
  %107 = load i64, i64* @XOADC_RSV_MAX, align 8
  %108 = icmp sgt i64 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %102
  %110 = load %struct.device*, %struct.device** %7, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = load i64, i64* %16, align 8
  %113 = call i32 (%struct.device*, i8*, i8*, ...) @dev_err(%struct.device* %110, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %111, i64 %112)
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %6, align 4
  br label %204

116:                                              ; preds = %102
  %117 = load i64, i64* %16, align 8
  %118 = load i64, i64* @AMUX_RSV3, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load %struct.device*, %struct.device** %7, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = load i64, i64* %16, align 8
  %124 = call i32 (%struct.device*, i8*, i8*, ...) @dev_err(%struct.device* %121, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %122, i64 %123)
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %6, align 4
  br label %204

127:                                              ; preds = %116
  br label %128

128:                                              ; preds = %127, %86
  %129 = load %struct.device_node*, %struct.device_node** %8, align 8
  %130 = call i32 @of_property_read_u32(%struct.device_node* %129, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i64* %17)
  store i32 %130, i32* %18, align 4
  %131 = load i32, i32* %18, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %148, label %133

133:                                              ; preds = %128
  %134 = load i64, i64* %17, align 8
  %135 = call i32 @qcom_vadc_decimation_from_dt(i64 %134)
  store i32 %135, i32* %18, align 4
  %136 = load i32, i32* %18, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load %struct.device*, %struct.device** %7, align 8
  %140 = load i8*, i8** %12, align 8
  %141 = load i64, i64* %17, align 8
  %142 = call i32 (%struct.device*, i8*, i8*, ...) @dev_err(%struct.device* %139, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %140, i64 %141)
  %143 = load i32, i32* %18, align 4
  store i32 %143, i32* %6, align 4
  br label %204

144:                                              ; preds = %133
  %145 = load i32, i32* %18, align 4
  %146 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %11, align 8
  %147 = getelementptr inbounds %struct.pm8xxx_chan_info, %struct.pm8xxx_chan_info* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %144, %128
  %149 = load i32, i32* %19, align 4
  %150 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %151 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.xoadc_channel*, %struct.xoadc_channel** %13, align 8
  %153 = getelementptr inbounds %struct.xoadc_channel, %struct.xoadc_channel* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %156 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %155, i32 0, i32 1
  store i64 %154, i64* %156, align 8
  %157 = load %struct.xoadc_channel*, %struct.xoadc_channel** %13, align 8
  %158 = getelementptr inbounds %struct.xoadc_channel, %struct.xoadc_channel* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %161 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %160, i32 0, i32 5
  store i64 %159, i64* %161, align 8
  %162 = load %struct.xoadc_channel*, %struct.xoadc_channel** %13, align 8
  %163 = getelementptr inbounds %struct.xoadc_channel, %struct.xoadc_channel* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %166 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %165, i32 0, i32 4
  store i32 %164, i32* %166, align 8
  %167 = load i32, i32* @IIO_CHAN_INFO_RAW, align 4
  %168 = call i32 @BIT(i32 %167)
  %169 = load i32, i32* @IIO_CHAN_INFO_PROCESSED, align 4
  %170 = call i32 @BIT(i32 %169)
  %171 = or i32 %168, %170
  %172 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %173 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  %174 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %175 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %174, i32 0, i32 3
  store i32 1, i32* %175, align 4
  %176 = load %struct.device*, %struct.device** %7, align 8
  %177 = load %struct.xoadc_channel*, %struct.xoadc_channel** %13, align 8
  %178 = getelementptr inbounds %struct.xoadc_channel, %struct.xoadc_channel* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.xoadc_channel*, %struct.xoadc_channel** %13, align 8
  %181 = getelementptr inbounds %struct.xoadc_channel, %struct.xoadc_channel* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %11, align 8
  %184 = getelementptr inbounds %struct.pm8xxx_chan_info, %struct.pm8xxx_chan_info* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %11, align 8
  %187 = getelementptr inbounds %struct.pm8xxx_chan_info, %struct.pm8xxx_chan_info* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %11, align 8
  %190 = getelementptr inbounds %struct.pm8xxx_chan_info, %struct.pm8xxx_chan_info* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.xoadc_channel*, %struct.xoadc_channel** %13, align 8
  %193 = getelementptr inbounds %struct.xoadc_channel, %struct.xoadc_channel* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.xoadc_channel*, %struct.xoadc_channel** %13, align 8
  %197 = getelementptr inbounds %struct.xoadc_channel, %struct.xoadc_channel* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.xoadc_channel*, %struct.xoadc_channel** %13, align 8
  %201 = getelementptr inbounds %struct.xoadc_channel, %struct.xoadc_channel* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @dev_dbg(%struct.device* %176, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.9, i64 0, i64 0), i64 %179, i64 %182, i8* %185, i32 %188, i32 %191, i32 %195, i32 %199, i32 %202)
  store i32 0, i32* %6, align 4
  br label %204

204:                                              ; preds = %148, %138, %120, %109, %78, %37, %27
  %205 = load i32, i32* %6, align 4
  ret i32 %205
}

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, ...) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @qcom_vadc_decimation_from_dt(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i64, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
