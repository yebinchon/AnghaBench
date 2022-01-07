; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tmp007.c_tmp007_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tmp007.c_tmp007_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i64, i32 }
%struct.i2c_device_id = type { i32 }
%struct.tmp007_data = type { i32, i32, %struct.i2c_client*, i32 }
%struct.iio_dev = type { i8*, i32, i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"TMP007 not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"tmp007\00", align 1
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@tmp007_info = common dso_local global i32 0, align 4
@tmp007_channels = common dso_local global i32 0, align 4
@TMP007_CONFIG = common dso_local global i32 0, align 4
@TMP007_CONFIG_CONV_EN = common dso_local global i32 0, align 4
@TMP007_CONFIG_ALERT_EN = common dso_local global i32 0, align 4
@TMP007_CONFIG_TC_EN = common dso_local global i32 0, align 4
@TMP007_STATUS_MASK = common dso_local global i32 0, align 4
@TMP007_STATUS_OHF = common dso_local global i32 0, align 4
@TMP007_STATUS_OLF = common dso_local global i32 0, align 4
@TMP007_STATUS_LHF = common dso_local global i32 0, align 4
@TMP007_STATUS_LLF = common dso_local global i32 0, align 4
@tmp007_interrupt_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"irq request error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tmp007_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp007_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tmp007_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %13 = call i32 @i2c_check_functionality(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %173

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = call i32 @tmp007_identify(%struct.i2c_client* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = call i32 (i32*, i8*, ...) @dev_err(i32* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %173

28:                                               ; preds = %18
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %30, i32 24)
  store %struct.iio_dev* %31, %struct.iio_dev** %7, align 8
  %32 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %33 = icmp ne %struct.iio_dev* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %173

37:                                               ; preds = %28
  %38 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %39 = call %struct.tmp007_data* @iio_priv(%struct.iio_dev* %38)
  store %struct.tmp007_data* %39, %struct.tmp007_data** %6, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %42 = call i32 @i2c_set_clientdata(%struct.i2c_client* %40, %struct.iio_dev* %41)
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = load %struct.tmp007_data*, %struct.tmp007_data** %6, align 8
  %45 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %44, i32 0, i32 2
  store %struct.i2c_client* %43, %struct.i2c_client** %45, align 8
  %46 = load %struct.tmp007_data*, %struct.tmp007_data** %6, align 8
  %47 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %46, i32 0, i32 3
  %48 = call i32 @mutex_init(i32* %47)
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32* %50, i32** %53, align 8
  %54 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %55, align 8
  %56 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %57 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 3
  store i32* @tmp007_info, i32** %60, align 8
  %61 = load i32, i32* @tmp007_channels, align 4
  %62 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @tmp007_channels, align 4
  %65 = call i32 @ARRAY_SIZE(i32 %64)
  %66 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %67 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.tmp007_data*, %struct.tmp007_data** %6, align 8
  %69 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %68, i32 0, i32 2
  %70 = load %struct.i2c_client*, %struct.i2c_client** %69, align 8
  %71 = load i32, i32* @TMP007_CONFIG, align 4
  %72 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %37
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %173

77:                                               ; preds = %37
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.tmp007_data*, %struct.tmp007_data** %6, align 8
  %80 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @TMP007_CONFIG_CONV_EN, align 4
  %82 = load i32, i32* @TMP007_CONFIG_ALERT_EN, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @TMP007_CONFIG_TC_EN, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.tmp007_data*, %struct.tmp007_data** %6, align 8
  %87 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.tmp007_data*, %struct.tmp007_data** %6, align 8
  %91 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %90, i32 0, i32 2
  %92 = load %struct.i2c_client*, %struct.i2c_client** %91, align 8
  %93 = load i32, i32* @TMP007_CONFIG, align 4
  %94 = load %struct.tmp007_data*, %struct.tmp007_data** %6, align 8
  %95 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @i2c_smbus_write_word_swapped(%struct.i2c_client* %92, i32 %93, i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %77
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %3, align 4
  br label %173

102:                                              ; preds = %77
  %103 = load %struct.tmp007_data*, %struct.tmp007_data** %6, align 8
  %104 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %103, i32 0, i32 2
  %105 = load %struct.i2c_client*, %struct.i2c_client** %104, align 8
  %106 = load i32, i32* @TMP007_STATUS_MASK, align 4
  %107 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %105, i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  br label %169

111:                                              ; preds = %102
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.tmp007_data*, %struct.tmp007_data** %6, align 8
  %114 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @TMP007_STATUS_OHF, align 4
  %116 = load i32, i32* @TMP007_STATUS_OLF, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @TMP007_STATUS_LHF, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @TMP007_STATUS_LLF, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.tmp007_data*, %struct.tmp007_data** %6, align 8
  %123 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load %struct.tmp007_data*, %struct.tmp007_data** %6, align 8
  %127 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %126, i32 0, i32 2
  %128 = load %struct.i2c_client*, %struct.i2c_client** %127, align 8
  %129 = load i32, i32* @TMP007_STATUS_MASK, align 4
  %130 = load %struct.tmp007_data*, %struct.tmp007_data** %6, align 8
  %131 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @i2c_smbus_write_word_swapped(%struct.i2c_client* %128, i32 %129, i32 %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %111
  br label %169

137:                                              ; preds = %111
  %138 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %139 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %166

142:                                              ; preds = %137
  %143 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %144 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %143, i32 0, i32 0
  %145 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %146 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* @tmp007_interrupt_handler, align 4
  %149 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %150 = load i32, i32* @IRQF_ONESHOT, align 4
  %151 = or i32 %149, %150
  %152 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %153 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %156 = call i32 @devm_request_threaded_irq(i32* %144, i64 %147, i32* null, i32 %148, i32 %151, i32 %154, %struct.iio_dev* %155)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %142
  %160 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %161 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %160, i32 0, i32 0
  %162 = load i32, i32* %8, align 4
  %163 = sub nsw i32 0, %162
  %164 = call i32 (i32*, i8*, ...) @dev_err(i32* %161, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  br label %169

165:                                              ; preds = %142
  br label %166

166:                                              ; preds = %165, %137
  %167 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %168 = call i32 @iio_device_register(%struct.iio_dev* %167)
  store i32 %168, i32* %3, align 4
  br label %173

169:                                              ; preds = %159, %136, %110
  %170 = load %struct.tmp007_data*, %struct.tmp007_data** %6, align 8
  %171 = call i32 @tmp007_powerdown(%struct.tmp007_data* %170)
  %172 = load i32, i32* %8, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %169, %166, %100, %75, %34, %22, %15
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @tmp007_identify(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.tmp007_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32*, i32, i32, i32, %struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @tmp007_powerdown(%struct.tmp007_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
