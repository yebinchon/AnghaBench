; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/health/extr_afe4403.c_afe4403_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/health/extr_afe4403.c_afe4403_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i64, i32 }
%struct.iio_dev = type { i32, i32, i32*, i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.afe4403_data = type { i64, i32, %struct.TYPE_10__*, i32*, i32, i32*, %struct.spi_device* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@afe4403_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unable to allocate register map\0A\00", align 1
@F_MAX_FIELDS = common dso_local global i32 0, align 4
@afe4403_reg_fields = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to allocate regmap fields\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"tx_sup\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Unable to get regulator\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Unable to enable regulator\0A\00", align 1
@AFE440X_CONTROL0 = common dso_local global i32 0, align 4
@AFE440X_CONTROL0_SW_RESET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Unable to reset device\0A\00", align 1
@afe4403_reg_sequences = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Unable to set register defaults\0A\00", align 1
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@afe4403_channels = common dso_local global i32 0, align 4
@AFE4403_DRIVER_NAME = common dso_local global i32 0, align 4
@afe4403_iio_info = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Unable to allocate IIO trigger\0A\00", align 1
@afe4403_trigger_ops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"Unable to register IIO trigger\0A\00", align 1
@iio_trigger_generic_data_rdy_poll = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"Unable to request IRQ\0A\00", align 1
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@afe4403_trigger_handler = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"Unable to setup buffer\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Unable to register IIO device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @afe4403_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afe4403_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.afe4403_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 1
  %10 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %9, i32 56)
  store %struct.iio_dev* %10, %struct.iio_dev** %4, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %12 = icmp ne %struct.iio_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %308

16:                                               ; preds = %1
  %17 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %18 = call %struct.afe4403_data* @iio_priv(%struct.iio_dev* %17)
  store %struct.afe4403_data* %18, %struct.afe4403_data** %5, align 8
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %21 = call i32 @spi_set_drvdata(%struct.spi_device* %19, %struct.iio_dev* %20)
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 1
  %24 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %25 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %24, i32 0, i32 3
  store i32* %23, i32** %25, align 8
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %28 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %27, i32 0, i32 6
  store %struct.spi_device* %26, %struct.spi_device** %28, align 8
  %29 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %30 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %33 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = call i32 @devm_regmap_init_spi(%struct.spi_device* %34, i32* @afe4403_regmap_config)
  %36 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %37 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %39 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @IS_ERR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %16
  %44 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %45 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %49 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %2, align 4
  br label %308

52:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %99, %52
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @F_MAX_FIELDS, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %102

57:                                               ; preds = %53
  %58 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %59 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %62 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** @afe4403_reg_fields, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @devm_regmap_field_alloc(i32* %60, i32 %63, i32 %68)
  %70 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %71 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  %76 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %77 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %76, i32 0, i32 5
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @IS_ERR(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %57
  %86 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %87 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %90 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %91 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %90, i32 0, i32 5
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @PTR_ERR(i32 %96)
  store i32 %97, i32* %2, align 4
  br label %308

98:                                               ; preds = %57
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %53

102:                                              ; preds = %53
  %103 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %104 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @devm_regulator_get(i32* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %107 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %108 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 8
  %109 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %110 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @IS_ERR(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %102
  %115 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %116 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @dev_err(i32* %117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %119 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %120 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @PTR_ERR(i32 %121)
  store i32 %122, i32* %2, align 4
  br label %308

123:                                              ; preds = %102
  %124 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %125 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @regulator_enable(i32 %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %123
  %131 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %132 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @dev_err(i32* %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %2, align 4
  br label %308

136:                                              ; preds = %123
  %137 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %138 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @AFE440X_CONTROL0, align 4
  %141 = load i32, i32* @AFE440X_CONTROL0_SW_RESET, align 4
  %142 = call i32 @regmap_write(i32 %139, i32 %140, i32 %141)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %136
  %146 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %147 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @dev_err(i32* %148, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %302

150:                                              ; preds = %136
  %151 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %152 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @afe4403_reg_sequences, align 4
  %155 = load i32, i32* @afe4403_reg_sequences, align 4
  %156 = call i32 @ARRAY_SIZE(i32 %155)
  %157 = call i32 @regmap_multi_reg_write(i32 %153, i32 %154, i32 %156)
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %150
  %161 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %162 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @dev_err(i32* %163, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %302

165:                                              ; preds = %150
  %166 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %167 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %168 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %167, i32 0, i32 6
  store i32 %166, i32* %168, align 8
  %169 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %170 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %169, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %173 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  store i32* %171, i32** %174, align 8
  %175 = load i32, i32* @afe4403_channels, align 4
  %176 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %177 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %176, i32 0, i32 4
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* @afe4403_channels, align 4
  %179 = call i32 @ARRAY_SIZE(i32 %178)
  %180 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %181 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* @AFE4403_DRIVER_NAME, align 4
  %183 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %184 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  %185 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %186 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %185, i32 0, i32 2
  store i32* @afe4403_iio_info, i32** %186, align 8
  %187 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %188 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp sgt i64 %189, 0
  br i1 %190, label %191, label %266

191:                                              ; preds = %165
  %192 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %193 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %192, i32 0, i32 3
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %196 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %199 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call %struct.TYPE_10__* @devm_iio_trigger_alloc(i32* %194, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %197, i32 %200)
  %202 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %203 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %202, i32 0, i32 2
  store %struct.TYPE_10__* %201, %struct.TYPE_10__** %203, align 8
  %204 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %205 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %204, i32 0, i32 2
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %205, align 8
  %207 = icmp ne %struct.TYPE_10__* %206, null
  br i1 %207, label %215, label %208

208:                                              ; preds = %191
  %209 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %210 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %209, i32 0, i32 3
  %211 = load i32*, i32** %210, align 8
  %212 = call i32 @dev_err(i32* %211, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %213 = load i32, i32* @ENOMEM, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %7, align 4
  br label %302

215:                                              ; preds = %191
  %216 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %217 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %216, i32 0, i32 2
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %217, align 8
  %219 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %220 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_10__* %218, %struct.iio_dev* %219)
  %221 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %222 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %221, i32 0, i32 2
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 1
  store i32* @afe4403_trigger_ops, i32** %224, align 8
  %225 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %226 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %225, i32 0, i32 3
  %227 = load i32*, i32** %226, align 8
  %228 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %229 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %228, i32 0, i32 2
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  store i32* %227, i32** %232, align 8
  %233 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %234 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %233, i32 0, i32 2
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %234, align 8
  %236 = call i32 @iio_trigger_register(%struct.TYPE_10__* %235)
  store i32 %236, i32* %7, align 4
  %237 = load i32, i32* %7, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %215
  %240 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %241 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %240, i32 0, i32 3
  %242 = load i32*, i32** %241, align 8
  %243 = call i32 @dev_err(i32* %242, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %302

244:                                              ; preds = %215
  %245 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %246 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %245, i32 0, i32 3
  %247 = load i32*, i32** %246, align 8
  %248 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %249 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i32, i32* @iio_trigger_generic_data_rdy_poll, align 4
  %252 = load i32, i32* @IRQF_ONESHOT, align 4
  %253 = load i32, i32* @AFE4403_DRIVER_NAME, align 4
  %254 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %255 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %254, i32 0, i32 2
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %255, align 8
  %257 = call i32 @devm_request_threaded_irq(i32* %247, i64 %250, i32 %251, i32* null, i32 %252, i32 %253, %struct.TYPE_10__* %256)
  store i32 %257, i32* %7, align 4
  %258 = load i32, i32* %7, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %244
  %261 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %262 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %261, i32 0, i32 3
  %263 = load i32*, i32** %262, align 8
  %264 = call i32 @dev_err(i32* %263, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %291

265:                                              ; preds = %244
  br label %266

266:                                              ; preds = %265, %165
  %267 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %268 = load i32, i32* @afe4403_trigger_handler, align 4
  %269 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %267, i32* @iio_pollfunc_store_time, i32 %268, i32* null)
  store i32 %269, i32* %7, align 4
  %270 = load i32, i32* %7, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %266
  %273 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %274 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %273, i32 0, i32 3
  %275 = load i32*, i32** %274, align 8
  %276 = call i32 @dev_err(i32* %275, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  br label %291

277:                                              ; preds = %266
  %278 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %279 = call i32 @iio_device_register(%struct.iio_dev* %278)
  store i32 %279, i32* %7, align 4
  %280 = load i32, i32* %7, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %277
  %283 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %284 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %283, i32 0, i32 3
  %285 = load i32*, i32** %284, align 8
  %286 = call i32 @dev_err(i32* %285, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  br label %288

287:                                              ; preds = %277
  store i32 0, i32* %2, align 4
  br label %308

288:                                              ; preds = %282
  %289 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %290 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %289)
  br label %291

291:                                              ; preds = %288, %272, %260
  %292 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %293 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = icmp sgt i64 %294, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %291
  %297 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %298 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %297, i32 0, i32 2
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %298, align 8
  %300 = call i32 @iio_trigger_unregister(%struct.TYPE_10__* %299)
  br label %301

301:                                              ; preds = %296, %291
  br label %302

302:                                              ; preds = %301, %239, %208, %160, %145
  %303 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %304 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @regulator_disable(i32 %305)
  %307 = load i32, i32* %7, align 4
  store i32 %307, i32* %2, align 4
  br label %308

308:                                              ; preds = %302, %287, %130, %114, %85, %43, %13
  %309 = load i32, i32* %2, align 4
  ret i32 %309
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.afe4403_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @devm_regmap_init_spi(%struct.spi_device*, i32*) #1

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
