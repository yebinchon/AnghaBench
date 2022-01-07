; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1363.c_max1363_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1363.c_max1363_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i64, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.i2c_device_id = type { i64, i32 }
%struct.max1363_state = type { i32, %struct.regulator*, %struct.regulator*, %struct.i2c_client*, %struct.TYPE_10__*, i32, i32 }
%struct.regulator = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@max1363_chip_info_tbl = common dso_local global %struct.TYPE_10__* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@i2c_master_send = common dso_local global i32 0, align 4
@i2c_master_recv = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@max1363_smbus_send = common dso_local global i32 0, align 4
@max1363_smbus_recv = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@max1363_trigger_handler = common dso_local global i32 0, align 4
@max1363_event_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"max1363_event\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max1363_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1363_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.max1363_state*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.regulator*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_11__* %12, i32 48)
  store %struct.iio_dev* %13, %struct.iio_dev** %8, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %15 = icmp ne %struct.iio_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %272

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %25 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @iio_map_array_register(%struct.iio_dev* %27, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %19
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %272

37:                                               ; preds = %19
  %38 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %39 = call %struct.max1363_state* @iio_priv(%struct.iio_dev* %38)
  store %struct.max1363_state* %39, %struct.max1363_state** %7, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 1
  %42 = call %struct.regulator* @devm_regulator_get(%struct.TYPE_11__* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %44 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %43, i32 0, i32 1
  store %struct.regulator* %42, %struct.regulator** %44, align 8
  %45 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %46 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %45, i32 0, i32 1
  %47 = load %struct.regulator*, %struct.regulator** %46, align 8
  %48 = call i64 @IS_ERR(%struct.regulator* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %37
  %51 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %52 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %51, i32 0, i32 1
  %53 = load %struct.regulator*, %struct.regulator** %52, align 8
  %54 = call i32 @PTR_ERR(%struct.regulator* %53)
  store i32 %54, i32* %6, align 4
  br label %268

55:                                               ; preds = %37
  %56 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %57 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %56, i32 0, i32 1
  %58 = load %struct.regulator*, %struct.regulator** %57, align 8
  %59 = call i32 @regulator_enable(%struct.regulator* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %268

63:                                               ; preds = %55
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %66 = call i32 @i2c_set_clientdata(%struct.i2c_client* %64, %struct.iio_dev* %65)
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 1
  %69 = call %struct.TYPE_10__* @of_device_get_match_data(%struct.TYPE_11__* %68)
  %70 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %71 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %70, i32 0, i32 4
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** %71, align 8
  %72 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %73 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %72, i32 0, i32 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = icmp ne %struct.TYPE_10__* %74, null
  br i1 %75, label %84, label %76

76:                                               ; preds = %63
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** @max1363_chip_info_tbl, align 8
  %78 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %79 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i64 %80
  %82 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %83 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %82, i32 0, i32 4
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %83, align 8
  br label %84

84:                                               ; preds = %76, %63
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %87 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %86, i32 0, i32 3
  store %struct.i2c_client* %85, %struct.i2c_client** %87, align 8
  %88 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %89 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %88, i32 0, i32 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %92, 1000
  %94 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %95 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 1
  %98 = call %struct.regulator* @devm_regulator_get_optional(%struct.TYPE_11__* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.regulator* %98, %struct.regulator** %9, align 8
  %99 = load %struct.regulator*, %struct.regulator** %9, align 8
  %100 = call i64 @IS_ERR(%struct.regulator* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %123, label %102

102:                                              ; preds = %84
  %103 = load %struct.regulator*, %struct.regulator** %9, align 8
  %104 = call i32 @regulator_enable(%struct.regulator* %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %253

108:                                              ; preds = %102
  %109 = load %struct.regulator*, %struct.regulator** %9, align 8
  %110 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %111 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %110, i32 0, i32 2
  store %struct.regulator* %109, %struct.regulator** %111, align 8
  %112 = load %struct.regulator*, %struct.regulator** %9, align 8
  %113 = call i32 @regulator_get_voltage(%struct.regulator* %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp sle i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %108
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %6, align 4
  br label %253

119:                                              ; preds = %108
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %122 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %119, %84
  %124 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %125 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @I2C_FUNC_I2C, align 4
  %128 = call i64 @i2c_check_functionality(i32 %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %123
  %131 = load i32, i32* @i2c_master_send, align 4
  %132 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %133 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %132, i32 0, i32 6
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @i2c_master_recv, align 4
  %135 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %136 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %135, i32 0, i32 5
  store i32 %134, i32* %136, align 8
  br label %162

137:                                              ; preds = %123
  %138 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %139 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %142 = call i64 @i2c_check_functionality(i32 %140, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %158

144:                                              ; preds = %137
  %145 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %146 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %145, i32 0, i32 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 8
  br i1 %150, label %151, label %158

151:                                              ; preds = %144
  %152 = load i32, i32* @max1363_smbus_send, align 4
  %153 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %154 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %153, i32 0, i32 6
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* @max1363_smbus_recv, align 4
  %156 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %157 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %156, i32 0, i32 5
  store i32 %155, i32* %157, align 8
  br label %161

158:                                              ; preds = %144, %137
  %159 = load i32, i32* @EOPNOTSUPP, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %6, align 4
  br label %253

161:                                              ; preds = %151
  br label %162

162:                                              ; preds = %161, %130
  %163 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %164 = call i32 @max1363_alloc_scan_masks(%struct.iio_dev* %163)
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %6, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %253

168:                                              ; preds = %162
  %169 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %170 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %169, i32 0, i32 1
  %171 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %172 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  store %struct.TYPE_11__* %170, %struct.TYPE_11__** %173, align 8
  %174 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %175 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %179 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  store i32 %177, i32* %180, align 8
  %181 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %182 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %185 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 8
  %186 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %187 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %186, i32 0, i32 4
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %192 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %191, i32 0, i32 3
  store i32 %190, i32* %192, align 4
  %193 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %194 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %193, i32 0, i32 4
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %199 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %198, i32 0, i32 2
  store i32 %197, i32* %199, align 8
  %200 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %201 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %200, i32 0, i32 4
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %206 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  %207 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %208 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %209 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %208, i32 0, i32 0
  store i32 %207, i32* %209, align 8
  %210 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %211 = call i32 @max1363_initial_setup(%struct.max1363_state* %210)
  store i32 %211, i32* %6, align 4
  %212 = load i32, i32* %6, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %168
  br label %253

215:                                              ; preds = %168
  %216 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %217 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %216, i32* null, i32* @max1363_trigger_handler, i32* null)
  store i32 %217, i32* %6, align 4
  %218 = load i32, i32* %6, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %215
  br label %253

221:                                              ; preds = %215
  %222 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %223 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %243

226:                                              ; preds = %221
  %227 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %228 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %227, i32 0, i32 1
  %229 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %230 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %229, i32 0, i32 3
  %231 = load %struct.i2c_client*, %struct.i2c_client** %230, align 8
  %232 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %235 = load i32, i32* @IRQF_ONESHOT, align 4
  %236 = or i32 %234, %235
  %237 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %238 = call i32 @devm_request_threaded_irq(%struct.TYPE_11__* %228, i64 %233, i32* null, i32* @max1363_event_handler, i32 %236, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %struct.iio_dev* %237)
  store i32 %238, i32* %6, align 4
  %239 = load i32, i32* %6, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %226
  br label %250

242:                                              ; preds = %226
  br label %243

243:                                              ; preds = %242, %221
  %244 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %245 = call i32 @iio_device_register(%struct.iio_dev* %244)
  store i32 %245, i32* %6, align 4
  %246 = load i32, i32* %6, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %243
  br label %250

249:                                              ; preds = %243
  store i32 0, i32* %3, align 4
  br label %272

250:                                              ; preds = %248, %241
  %251 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %252 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %251)
  br label %253

253:                                              ; preds = %250, %220, %214, %167, %158, %116, %107
  %254 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %255 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %254, i32 0, i32 2
  %256 = load %struct.regulator*, %struct.regulator** %255, align 8
  %257 = icmp ne %struct.regulator* %256, null
  br i1 %257, label %258, label %263

258:                                              ; preds = %253
  %259 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %260 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %259, i32 0, i32 2
  %261 = load %struct.regulator*, %struct.regulator** %260, align 8
  %262 = call i32 @regulator_disable(%struct.regulator* %261)
  br label %263

263:                                              ; preds = %258, %253
  %264 = load %struct.max1363_state*, %struct.max1363_state** %7, align 8
  %265 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %264, i32 0, i32 1
  %266 = load %struct.regulator*, %struct.regulator** %265, align 8
  %267 = call i32 @regulator_disable(%struct.regulator* %266)
  br label %268

268:                                              ; preds = %263, %62, %50
  %269 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %270 = call i32 @iio_map_array_unregister(%struct.iio_dev* %269)
  %271 = load i32, i32* %6, align 4
  store i32 %271, i32* %3, align 4
  br label %272

272:                                              ; preds = %268, %249, %35, %16
  %273 = load i32, i32* %3, align 4
  ret i32 %273
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @iio_map_array_register(%struct.iio_dev*, i32) #1

declare dso_local %struct.max1363_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.regulator* @devm_regulator_get(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator*) #1

declare dso_local i32 @regulator_enable(%struct.regulator*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local %struct.TYPE_10__* @of_device_get_match_data(%struct.TYPE_11__*) #1

declare dso_local %struct.regulator* @devm_regulator_get_optional(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @regulator_get_voltage(%struct.regulator*) #1

declare dso_local i64 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @max1363_alloc_scan_masks(%struct.iio_dev*) #1

declare dso_local i32 @max1363_initial_setup(%struct.max1363_state*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32*, i32*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_11__*, i64, i32*, i32*, i32, i8*, %struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(%struct.regulator*) #1

declare dso_local i32 @iio_map_array_unregister(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
