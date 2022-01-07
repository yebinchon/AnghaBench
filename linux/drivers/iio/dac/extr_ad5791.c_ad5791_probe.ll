; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5791.c_ad5791_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5791.c_ad5791_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i32)* }
%struct.spi_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.ad5791_platform_data* }
%struct.ad5791_platform_data = type { i32, i32, i64 }
%struct.iio_dev = type { i32, i32, i32*, i32, i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.ad5791_state = type { i32, i32, i32, i32, i8*, i8*, %struct.spi_device*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"vss\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"reference voltage unspecified\0A\00", align 1
@AD5791_ADDR_SW_CTRL = common dso_local global i32 0, align 4
@AD5791_SWCTRL_RESET = common dso_local global i32 0, align 4
@ad5791_chip_info_tbl = common dso_local global %struct.TYPE_10__* null, align 8
@AD5791_CTRL_RBUF = common dso_local global i32 0, align 4
@AD5791_CTRL_BIN2SC = common dso_local global i32 0, align 4
@AD5791_ADDR_CTRL = common dso_local global i32 0, align 4
@AD5791_CTRL_OPGND = common dso_local global i32 0, align 4
@AD5791_CTRL_DACTRI = common dso_local global i32 0, align 4
@ad5791_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ad5791_channels = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad5791_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5791_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ad5791_platform_data*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.ad5791_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.ad5791_platform_data*, %struct.ad5791_platform_data** %12, align 8
  store %struct.ad5791_platform_data* %13, %struct.ad5791_platform_data** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 0
  %16 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_9__* %15, i32 48)
  store %struct.iio_dev* %16, %struct.iio_dev** %5, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %18 = icmp ne %struct.iio_dev* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %254

22:                                               ; preds = %1
  %23 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %24 = call %struct.ad5791_state* @iio_priv(%struct.iio_dev* %23)
  store %struct.ad5791_state* %24, %struct.ad5791_state** %6, align 8
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 0
  %27 = call i8* @devm_regulator_get(%struct.TYPE_9__* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %29 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %28, i32 0, i32 4
  store i8* %27, i8** %29, align 8
  %30 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %31 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %30, i32 0, i32 4
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @IS_ERR(i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %22
  %36 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %37 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %36, i32 0, i32 4
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @regulator_enable(i8* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %254

44:                                               ; preds = %35
  %45 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %46 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %45, i32 0, i32 4
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @regulator_get_voltage(i8* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %241

52:                                               ; preds = %44
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %52, %22
  %55 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %56 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %55, i32 0, i32 0
  %57 = call i8* @devm_regulator_get(%struct.TYPE_9__* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %59 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  %60 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %61 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %60, i32 0, i32 5
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @IS_ERR(i8* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %83, label %65

65:                                               ; preds = %54
  %66 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %67 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %66, i32 0, i32 5
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @regulator_enable(i8* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %241

73:                                               ; preds = %65
  %74 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %75 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %74, i32 0, i32 5
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @regulator_get_voltage(i8* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %229

81:                                               ; preds = %73
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %81, %54
  %84 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %85 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %87 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %88 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %87, i32 0, i32 6
  store %struct.spi_device* %86, %struct.spi_device** %88, align 8
  %89 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %90 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %89, i32 0, i32 5
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @IS_ERR(i8* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %111, label %94

94:                                               ; preds = %83
  %95 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %96 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %95, i32 0, i32 4
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @IS_ERR(i8* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %94
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %101, %102
  %104 = sdiv i32 %103, 1000
  %105 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %106 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %9, align 4
  %108 = sdiv i32 %107, 1000
  %109 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %110 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  br label %134

111:                                              ; preds = %94, %83
  %112 = load %struct.ad5791_platform_data*, %struct.ad5791_platform_data** %4, align 8
  %113 = icmp ne %struct.ad5791_platform_data* %112, null
  br i1 %113, label %114, label %129

114:                                              ; preds = %111
  %115 = load %struct.ad5791_platform_data*, %struct.ad5791_platform_data** %4, align 8
  %116 = getelementptr inbounds %struct.ad5791_platform_data, %struct.ad5791_platform_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ad5791_platform_data*, %struct.ad5791_platform_data** %4, align 8
  %119 = getelementptr inbounds %struct.ad5791_platform_data, %struct.ad5791_platform_data* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %117, %120
  %122 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %123 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.ad5791_platform_data*, %struct.ad5791_platform_data** %4, align 8
  %125 = getelementptr inbounds %struct.ad5791_platform_data, %struct.ad5791_platform_data* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %128 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  br label %133

129:                                              ; preds = %111
  %130 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %131 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %130, i32 0, i32 0
  %132 = call i32 @dev_warn(%struct.TYPE_9__* %131, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %133

133:                                              ; preds = %129, %114
  br label %134

134:                                              ; preds = %133, %100
  %135 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %136 = load i32, i32* @AD5791_ADDR_SW_CTRL, align 4
  %137 = load i32, i32* @AD5791_SWCTRL_RESET, align 4
  %138 = call i32 @ad5791_spi_write(%struct.ad5791_state* %135, i32 %136, i32 %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  br label %229

142:                                              ; preds = %134
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ad5791_chip_info_tbl, align 8
  %144 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %145 = call %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device* %144)
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i64 %147
  %149 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %150 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %149, i32 0, i32 7
  store %struct.TYPE_10__* %148, %struct.TYPE_10__** %150, align 8
  %151 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %152 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %151, i32 0, i32 7
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32 (i32)*, i32 (i32)** %154, align 8
  %156 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %157 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 %155(i32 %158)
  %160 = call i32 @AD5761_CTRL_LINCOMP(i32 %159)
  %161 = load %struct.ad5791_platform_data*, %struct.ad5791_platform_data** %4, align 8
  %162 = icmp ne %struct.ad5791_platform_data* %161, null
  br i1 %162, label %163, label %169

163:                                              ; preds = %142
  %164 = load %struct.ad5791_platform_data*, %struct.ad5791_platform_data** %4, align 8
  %165 = getelementptr inbounds %struct.ad5791_platform_data, %struct.ad5791_platform_data* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  br label %171

169:                                              ; preds = %163, %142
  %170 = load i32, i32* @AD5791_CTRL_RBUF, align 4
  br label %171

171:                                              ; preds = %169, %168
  %172 = phi i32 [ 0, %168 ], [ %170, %169 ]
  %173 = or i32 %160, %172
  %174 = load i32, i32* @AD5791_CTRL_BIN2SC, align 4
  %175 = or i32 %173, %174
  %176 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %177 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 4
  %178 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %179 = load i32, i32* @AD5791_ADDR_CTRL, align 4
  %180 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %181 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @AD5791_CTRL_OPGND, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @AD5791_CTRL_DACTRI, align 4
  %186 = or i32 %184, %185
  %187 = call i32 @ad5791_spi_write(%struct.ad5791_state* %178, i32 %179, i32 %186)
  store i32 %187, i32* %7, align 4
  %188 = load i32, i32* %7, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %171
  br label %229

191:                                              ; preds = %171
  %192 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %193 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %194 = call i32 @spi_set_drvdata(%struct.spi_device* %192, %struct.iio_dev* %193)
  %195 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %196 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %195, i32 0, i32 0
  %197 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %198 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %197, i32 0, i32 5
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  store %struct.TYPE_9__* %196, %struct.TYPE_9__** %199, align 8
  %200 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %201 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %200, i32 0, i32 4
  store i32* @ad5791_info, i32** %201, align 8
  %202 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %203 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %204 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 8
  %205 = load i32*, i32** @ad5791_channels, align 8
  %206 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %207 = call %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device* %206)
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds i32, i32* %205, i64 %209
  %211 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %212 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %211, i32 0, i32 2
  store i32* %210, i32** %212, align 8
  %213 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %214 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %213, i32 0, i32 0
  store i32 1, i32* %214, align 8
  %215 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %216 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %215, i32 0, i32 6
  %217 = load %struct.spi_device*, %struct.spi_device** %216, align 8
  %218 = call %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device* %217)
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %222 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %221, i32 0, i32 1
  store i32 %220, i32* %222, align 4
  %223 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %224 = call i32 @iio_device_register(%struct.iio_dev* %223)
  store i32 %224, i32* %7, align 4
  %225 = load i32, i32* %7, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %191
  br label %229

228:                                              ; preds = %191
  store i32 0, i32* %2, align 4
  br label %254

229:                                              ; preds = %227, %190, %141, %80
  %230 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %231 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %230, i32 0, i32 5
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 @IS_ERR(i8* %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %240, label %235

235:                                              ; preds = %229
  %236 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %237 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %236, i32 0, i32 5
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @regulator_disable(i8* %238)
  br label %240

240:                                              ; preds = %235, %229
  br label %241

241:                                              ; preds = %240, %72, %51
  %242 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %243 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %242, i32 0, i32 4
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 @IS_ERR(i8* %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %252, label %247

247:                                              ; preds = %241
  %248 = load %struct.ad5791_state*, %struct.ad5791_state** %6, align 8
  %249 = getelementptr inbounds %struct.ad5791_state, %struct.ad5791_state* %248, i32 0, i32 4
  %250 = load i8*, i8** %249, align 8
  %251 = call i32 @regulator_disable(i8* %250)
  br label %252

252:                                              ; preds = %247, %241
  %253 = load i32, i32* %7, align 4
  store i32 %253, i32* %2, align 4
  br label %254

254:                                              ; preds = %252, %228, %42, %19
  %255 = load i32, i32* %2, align 4
  ret i32 %255
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.ad5791_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i8* @devm_regulator_get(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i32 @regulator_enable(i8*) #1

declare dso_local i32 @regulator_get_voltage(i8*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @ad5791_spi_write(%struct.ad5791_state*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @AD5761_CTRL_LINCOMP(i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
