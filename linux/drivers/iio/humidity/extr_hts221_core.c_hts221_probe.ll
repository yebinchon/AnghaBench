; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hts221_core.c_hts221_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hts221_core.c_hts221_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.iio_dev = type { i32*, i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.device* }
%struct.hts221_hw = type { i8*, i32, %struct.device*, %struct.regmap* }

@ENOMEM = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@hts221_scan_masks = common dso_local global i32 0, align 4
@hts221_channels = common dso_local global i32 0, align 4
@HTS221_DEV_NAME = common dso_local global i32 0, align 4
@hts221_info = common dso_local global i32 0, align 4
@HTS221_REG_CNTRL1_ADDR = common dso_local global i32 0, align 4
@HTS221_BDU_MASK = common dso_local global i32 0, align 4
@hts221_odr_table = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"failed to get rh calibration data\0A\00", align 1
@hts221_avg_list = common dso_local global %struct.TYPE_6__* null, align 8
@HTS221_SENSOR_H = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to set rh oversampling ratio\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"failed to get temperature calibration data\0A\00", align 1
@HTS221_SENSOR_T = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"failed to set temperature oversampling ratio\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hts221_probe(%struct.device* %0, i32 %1, i8* %2, %struct.regmap* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.hts221_hw*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.regmap* %3, %struct.regmap** %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %14, i32 32)
  store %struct.iio_dev* %15, %struct.iio_dev** %10, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %17 = icmp ne %struct.iio_dev* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %182

21:                                               ; preds = %4
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %24 = bitcast %struct.iio_dev* %23 to i8*
  %25 = call i32 @dev_set_drvdata(%struct.device* %22, i8* %24)
  %26 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %27 = call %struct.hts221_hw* @iio_priv(%struct.iio_dev* %26)
  store %struct.hts221_hw* %27, %struct.hts221_hw** %11, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.hts221_hw*, %struct.hts221_hw** %11, align 8
  %30 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load %struct.hts221_hw*, %struct.hts221_hw** %11, align 8
  %33 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %32, i32 0, i32 2
  store %struct.device* %31, %struct.device** %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.hts221_hw*, %struct.hts221_hw** %11, align 8
  %36 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.regmap*, %struct.regmap** %9, align 8
  %38 = load %struct.hts221_hw*, %struct.hts221_hw** %11, align 8
  %39 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %38, i32 0, i32 3
  store %struct.regmap* %37, %struct.regmap** %39, align 8
  %40 = load %struct.hts221_hw*, %struct.hts221_hw** %11, align 8
  %41 = call i32 @hts221_check_whoami(%struct.hts221_hw* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %21
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %5, align 4
  br label %182

46:                                               ; preds = %21
  %47 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %48 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %49 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  %50 = load %struct.hts221_hw*, %struct.hts221_hw** %11, align 8
  %51 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %50, i32 0, i32 2
  %52 = load %struct.device*, %struct.device** %51, align 8
  %53 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store %struct.device* %52, %struct.device** %55, align 8
  %56 = load i32, i32* @hts221_scan_masks, align 4
  %57 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @hts221_channels, align 4
  %60 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @hts221_channels, align 4
  %63 = call i32 @ARRAY_SIZE(i32 %62)
  %64 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %65 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @HTS221_DEV_NAME, align 4
  %67 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 0
  store i32* @hts221_info, i32** %70, align 8
  %71 = load %struct.hts221_hw*, %struct.hts221_hw** %11, align 8
  %72 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %71, i32 0, i32 3
  %73 = load %struct.regmap*, %struct.regmap** %72, align 8
  %74 = load i32, i32* @HTS221_REG_CNTRL1_ADDR, align 4
  %75 = load i32, i32* @HTS221_BDU_MASK, align 4
  %76 = load i32, i32* @HTS221_BDU_MASK, align 4
  %77 = call i32 @FIELD_PREP(i32 %76, i32 1)
  %78 = call i32 @regmap_update_bits(%struct.regmap* %73, i32 %74, i32 %75, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %46
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %5, align 4
  br label %182

83:                                               ; preds = %46
  %84 = load %struct.hts221_hw*, %struct.hts221_hw** %11, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hts221_odr_table, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @hts221_update_odr(%struct.hts221_hw* %84, i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %5, align 4
  br label %182

94:                                               ; preds = %83
  %95 = load %struct.hts221_hw*, %struct.hts221_hw** %11, align 8
  %96 = call i32 @hts221_parse_rh_caldata(%struct.hts221_hw* %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.hts221_hw*, %struct.hts221_hw** %11, align 8
  %101 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %100, i32 0, i32 2
  %102 = load %struct.device*, %struct.device** %101, align 8
  %103 = call i32 @dev_err(%struct.device* %102, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %5, align 4
  br label %182

105:                                              ; preds = %94
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hts221_avg_list, align 8
  %107 = load i64, i64* @HTS221_SENSOR_H, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 3
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %13, align 4
  %113 = load %struct.hts221_hw*, %struct.hts221_hw** %11, align 8
  %114 = load i64, i64* @HTS221_SENSOR_H, align 8
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @hts221_update_avg(%struct.hts221_hw* %113, i64 %114, i32 %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %105
  %120 = load %struct.hts221_hw*, %struct.hts221_hw** %11, align 8
  %121 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %120, i32 0, i32 2
  %122 = load %struct.device*, %struct.device** %121, align 8
  %123 = call i32 @dev_err(%struct.device* %122, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %124 = load i32, i32* %12, align 4
  store i32 %124, i32* %5, align 4
  br label %182

125:                                              ; preds = %105
  %126 = load %struct.hts221_hw*, %struct.hts221_hw** %11, align 8
  %127 = call i32 @hts221_parse_temp_caldata(%struct.hts221_hw* %126)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.hts221_hw*, %struct.hts221_hw** %11, align 8
  %132 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %131, i32 0, i32 2
  %133 = load %struct.device*, %struct.device** %132, align 8
  %134 = call i32 @dev_err(%struct.device* %133, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %135 = load i32, i32* %12, align 4
  store i32 %135, i32* %5, align 4
  br label %182

136:                                              ; preds = %125
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hts221_avg_list, align 8
  %138 = load i64, i64* @HTS221_SENSOR_T, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 3
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %13, align 4
  %144 = load %struct.hts221_hw*, %struct.hts221_hw** %11, align 8
  %145 = load i64, i64* @HTS221_SENSOR_T, align 8
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @hts221_update_avg(%struct.hts221_hw* %144, i64 %145, i32 %146)
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %136
  %151 = load %struct.hts221_hw*, %struct.hts221_hw** %11, align 8
  %152 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %151, i32 0, i32 2
  %153 = load %struct.device*, %struct.device** %152, align 8
  %154 = call i32 @dev_err(%struct.device* %153, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %155 = load i32, i32* %12, align 4
  store i32 %155, i32* %5, align 4
  br label %182

156:                                              ; preds = %136
  %157 = load %struct.hts221_hw*, %struct.hts221_hw** %11, align 8
  %158 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %176

161:                                              ; preds = %156
  %162 = load %struct.hts221_hw*, %struct.hts221_hw** %11, align 8
  %163 = call i32 @hts221_allocate_buffers(%struct.hts221_hw* %162)
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %12, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %161
  %167 = load i32, i32* %12, align 4
  store i32 %167, i32* %5, align 4
  br label %182

168:                                              ; preds = %161
  %169 = load %struct.hts221_hw*, %struct.hts221_hw** %11, align 8
  %170 = call i32 @hts221_allocate_trigger(%struct.hts221_hw* %169)
  store i32 %170, i32* %12, align 4
  %171 = load i32, i32* %12, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = load i32, i32* %12, align 4
  store i32 %174, i32* %5, align 4
  br label %182

175:                                              ; preds = %168
  br label %176

176:                                              ; preds = %175, %156
  %177 = load %struct.hts221_hw*, %struct.hts221_hw** %11, align 8
  %178 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %177, i32 0, i32 2
  %179 = load %struct.device*, %struct.device** %178, align 8
  %180 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %181 = call i32 @devm_iio_device_register(%struct.device* %179, %struct.iio_dev* %180)
  store i32 %181, i32* %5, align 4
  br label %182

182:                                              ; preds = %176, %173, %166, %150, %130, %119, %99, %92, %81, %44, %18
  %183 = load i32, i32* %5, align 4
  ret i32 %183
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, i8*) #1

declare dso_local %struct.hts221_hw* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @hts221_check_whoami(%struct.hts221_hw*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @hts221_update_odr(%struct.hts221_hw*, i32) #1

declare dso_local i32 @hts221_parse_rh_caldata(%struct.hts221_hw*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @hts221_update_avg(%struct.hts221_hw*, i64, i32) #1

declare dso_local i32 @hts221_parse_temp_caldata(%struct.hts221_hw*) #1

declare dso_local i32 @hts221_allocate_buffers(%struct.hts221_hw*) #1

declare dso_local i32 @hts221_allocate_trigger(%struct.hts221_hw*) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
