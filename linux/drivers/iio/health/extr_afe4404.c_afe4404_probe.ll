; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/health/extr_afe4404.c_afe4404_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/health/extr_afe4404.c_afe4404_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, i32 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { i32, i32, i32*, i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.afe4404_data = type { i64, i32, %struct.TYPE_10__*, i32*, i32, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@afe4404_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unable to allocate register map\0A\00", align 1
@F_MAX_FIELDS = common dso_local global i32 0, align 4
@afe4404_reg_fields = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to allocate regmap fields\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"tx_sup\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Unable to get regulator\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Unable to enable regulator\0A\00", align 1
@AFE440X_CONTROL0 = common dso_local global i32 0, align 4
@AFE440X_CONTROL0_SW_RESET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Unable to reset device\0A\00", align 1
@afe4404_reg_sequences = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Unable to set register defaults\0A\00", align 1
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@afe4404_channels = common dso_local global i32 0, align 4
@AFE4404_DRIVER_NAME = common dso_local global i32 0, align 4
@afe4404_iio_info = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Unable to allocate IIO trigger\0A\00", align 1
@afe4404_trigger_ops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"Unable to register IIO trigger\0A\00", align 1
@iio_trigger_generic_data_rdy_poll = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"Unable to request IRQ\0A\00", align 1
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@afe4404_trigger_handler = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"Unable to setup buffer\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Unable to register IIO device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @afe4404_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afe4404_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.afe4404_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %11, i32 48)
  store %struct.iio_dev* %12, %struct.iio_dev** %6, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %307

18:                                               ; preds = %2
  %19 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %20 = call %struct.afe4404_data* @iio_priv(%struct.iio_dev* %19)
  store %struct.afe4404_data* %20, %struct.afe4404_data** %7, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %23 = call i32 @i2c_set_clientdata(%struct.i2c_client* %21, %struct.iio_dev* %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 1
  %26 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %27 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %26, i32 0, i32 3
  store i32* %25, i32** %27, align 8
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %32 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %33, i32* @afe4404_regmap_config)
  %35 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %36 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %38 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %18
  %43 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %44 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %48 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @PTR_ERR(i32 %49)
  store i32 %50, i32* %3, align 4
  br label %307

51:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %98, %51
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @F_MAX_FIELDS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %101

56:                                               ; preds = %52
  %57 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %58 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %61 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** @afe4404_reg_fields, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @devm_regmap_field_alloc(i32* %59, i32 %62, i32 %67)
  %69 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %70 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %68, i32* %74, align 4
  %75 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %76 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @IS_ERR(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %56
  %85 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %86 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %89 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %90 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %89, i32 0, i32 5
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @PTR_ERR(i32 %95)
  store i32 %96, i32* %3, align 4
  br label %307

97:                                               ; preds = %56
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %52

101:                                              ; preds = %52
  %102 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %103 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @devm_regulator_get(i32* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %106 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %107 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  %108 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %109 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @IS_ERR(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %101
  %114 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %115 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @dev_err(i32* %116, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %118 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %119 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @PTR_ERR(i32 %120)
  store i32 %121, i32* %3, align 4
  br label %307

122:                                              ; preds = %101
  %123 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %124 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @regulator_enable(i32 %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %122
  %130 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %131 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @dev_err(i32* %132, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %3, align 4
  br label %307

135:                                              ; preds = %122
  %136 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %137 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @AFE440X_CONTROL0, align 4
  %140 = load i32, i32* @AFE440X_CONTROL0_SW_RESET, align 4
  %141 = call i32 @regmap_write(i32 %138, i32 %139, i32 %140)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %135
  %145 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %146 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @dev_err(i32* %147, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %301

149:                                              ; preds = %135
  %150 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %151 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @afe4404_reg_sequences, align 4
  %154 = load i32, i32* @afe4404_reg_sequences, align 4
  %155 = call i32 @ARRAY_SIZE(i32 %154)
  %156 = call i32 @regmap_multi_reg_write(i32 %152, i32 %153, i32 %155)
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %149
  %160 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %161 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @dev_err(i32* %162, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %301

164:                                              ; preds = %149
  %165 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %166 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %167 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %166, i32 0, i32 6
  store i32 %165, i32* %167, align 8
  %168 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %169 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %172 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  store i32* %170, i32** %173, align 8
  %174 = load i32, i32* @afe4404_channels, align 4
  %175 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %176 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %175, i32 0, i32 4
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* @afe4404_channels, align 4
  %178 = call i32 @ARRAY_SIZE(i32 %177)
  %179 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %180 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 8
  %181 = load i32, i32* @AFE4404_DRIVER_NAME, align 4
  %182 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %183 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  %184 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %185 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %184, i32 0, i32 2
  store i32* @afe4404_iio_info, i32** %185, align 8
  %186 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %187 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp sgt i64 %188, 0
  br i1 %189, label %190, label %265

190:                                              ; preds = %164
  %191 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %192 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %191, i32 0, i32 3
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %195 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %198 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call %struct.TYPE_10__* @devm_iio_trigger_alloc(i32* %193, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %196, i32 %199)
  %201 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %202 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %201, i32 0, i32 2
  store %struct.TYPE_10__* %200, %struct.TYPE_10__** %202, align 8
  %203 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %204 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %203, i32 0, i32 2
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %204, align 8
  %206 = icmp ne %struct.TYPE_10__* %205, null
  br i1 %206, label %214, label %207

207:                                              ; preds = %190
  %208 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %209 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %208, i32 0, i32 3
  %210 = load i32*, i32** %209, align 8
  %211 = call i32 @dev_err(i32* %210, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %212 = load i32, i32* @ENOMEM, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %9, align 4
  br label %301

214:                                              ; preds = %190
  %215 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %216 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %215, i32 0, i32 2
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %216, align 8
  %218 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %219 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_10__* %217, %struct.iio_dev* %218)
  %220 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %221 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %220, i32 0, i32 2
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 1
  store i32* @afe4404_trigger_ops, i32** %223, align 8
  %224 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %225 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %224, i32 0, i32 3
  %226 = load i32*, i32** %225, align 8
  %227 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %228 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %227, i32 0, i32 2
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  store i32* %226, i32** %231, align 8
  %232 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %233 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %232, i32 0, i32 2
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %233, align 8
  %235 = call i32 @iio_trigger_register(%struct.TYPE_10__* %234)
  store i32 %235, i32* %9, align 4
  %236 = load i32, i32* %9, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %214
  %239 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %240 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %239, i32 0, i32 3
  %241 = load i32*, i32** %240, align 8
  %242 = call i32 @dev_err(i32* %241, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %301

243:                                              ; preds = %214
  %244 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %245 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %244, i32 0, i32 3
  %246 = load i32*, i32** %245, align 8
  %247 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %248 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i32, i32* @iio_trigger_generic_data_rdy_poll, align 4
  %251 = load i32, i32* @IRQF_ONESHOT, align 4
  %252 = load i32, i32* @AFE4404_DRIVER_NAME, align 4
  %253 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %254 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %253, i32 0, i32 2
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %254, align 8
  %256 = call i32 @devm_request_threaded_irq(i32* %246, i64 %249, i32 %250, i32* null, i32 %251, i32 %252, %struct.TYPE_10__* %255)
  store i32 %256, i32* %9, align 4
  %257 = load i32, i32* %9, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %243
  %260 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %261 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %260, i32 0, i32 3
  %262 = load i32*, i32** %261, align 8
  %263 = call i32 @dev_err(i32* %262, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %301

264:                                              ; preds = %243
  br label %265

265:                                              ; preds = %264, %164
  %266 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %267 = load i32, i32* @afe4404_trigger_handler, align 4
  %268 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %266, i32* @iio_pollfunc_store_time, i32 %267, i32* null)
  store i32 %268, i32* %9, align 4
  %269 = load i32, i32* %9, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %265
  %272 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %273 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %272, i32 0, i32 3
  %274 = load i32*, i32** %273, align 8
  %275 = call i32 @dev_err(i32* %274, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  br label %290

276:                                              ; preds = %265
  %277 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %278 = call i32 @iio_device_register(%struct.iio_dev* %277)
  store i32 %278, i32* %9, align 4
  %279 = load i32, i32* %9, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %276
  %282 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %283 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %282, i32 0, i32 3
  %284 = load i32*, i32** %283, align 8
  %285 = call i32 @dev_err(i32* %284, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  br label %287

286:                                              ; preds = %276
  store i32 0, i32* %3, align 4
  br label %307

287:                                              ; preds = %281
  %288 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %289 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %288)
  br label %290

290:                                              ; preds = %287, %271
  %291 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %292 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = icmp sgt i64 %293, 0
  br i1 %294, label %295, label %300

295:                                              ; preds = %290
  %296 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %297 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %296, i32 0, i32 2
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %297, align 8
  %299 = call i32 @iio_trigger_unregister(%struct.TYPE_10__* %298)
  br label %300

300:                                              ; preds = %295, %290
  br label %301

301:                                              ; preds = %300, %259, %238, %207, %159, %144
  %302 = load %struct.afe4404_data*, %struct.afe4404_data** %7, align 8
  %303 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @regulator_disable(i32 %304)
  %306 = load i32, i32* %9, align 4
  store i32 %306, i32* %3, align 4
  br label %307

307:                                              ; preds = %301, %286, %129, %113, %84, %42, %15
  %308 = load i32, i32* %3, align 4
  ret i32 %308
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.afe4404_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_regmap_field_alloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regulator_get(i32*, i8*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_multi_reg_write(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.TYPE_10__* @devm_iio_trigger_alloc(i32*, i8*, i32, i32) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.TYPE_10__*, %struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_register(%struct.TYPE_10__*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32, i32*, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_unregister(%struct.TYPE_10__*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
