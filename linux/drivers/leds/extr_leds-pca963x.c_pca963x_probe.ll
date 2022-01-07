; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pca963x.c_pca963x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pca963x.c_pca963x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pca963x_chipdef = type { i32, i64 }
%struct.i2c_client = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.pca963x = type { %struct.i2c_client*, %struct.pca963x_led*, %struct.pca963x_chipdef*, i32 }
%struct.pca963x_led = type { i32, %struct.TYPE_9__, %struct.pca963x*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i64 }
%struct.pca963x_platform_data = type { i64, i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i64 }

@pca963x_chipdefs = common dso_local global %struct.pca963x_chipdef* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"could not parse configuration\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"board info must claim 1-%d LEDs\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"pca963x:%s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"pca963x:%d:%.2x:%d\00", align 1
@pca963x_led_set = common dso_local global i32 0, align 4
@PCA963X_HW_BLINK = common dso_local global i64 0, align 8
@pca963x_blink_set = common dso_local global i32 0, align 4
@PCA963X_MODE1 = common dso_local global i64 0, align 8
@PCA963X_MODE2 = common dso_local global i64 0, align 8
@PCA963X_OPEN_DRAIN = common dso_local global i64 0, align 8
@PCA963X_INVERTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pca963x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca963x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.pca963x*, align 8
  %7 = alloca %struct.pca963x_led*, align 8
  %8 = alloca %struct.pca963x_platform_data*, align 8
  %9 = alloca %struct.pca963x_chipdef*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = load %struct.pca963x_chipdef*, %struct.pca963x_chipdef** @pca963x_chipdefs, align 8
  %14 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.pca963x_chipdef, %struct.pca963x_chipdef* %13, i64 %16
  store %struct.pca963x_chipdef* %17, %struct.pca963x_chipdef** %9, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 1
  %20 = call %struct.pca963x_platform_data* @dev_get_platdata(i32* %19)
  store %struct.pca963x_platform_data* %20, %struct.pca963x_platform_data** %8, align 8
  %21 = load %struct.pca963x_platform_data*, %struct.pca963x_platform_data** %8, align 8
  %22 = icmp ne %struct.pca963x_platform_data* %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.pca963x_chipdef*, %struct.pca963x_chipdef** %9, align 8
  %26 = call %struct.pca963x_platform_data* @pca963x_get_pdata(%struct.i2c_client* %24, %struct.pca963x_chipdef* %25)
  store %struct.pca963x_platform_data* %26, %struct.pca963x_platform_data** %8, align 8
  %27 = load %struct.pca963x_platform_data*, %struct.pca963x_platform_data** %8, align 8
  %28 = call i64 @IS_ERR(%struct.pca963x_platform_data* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 1
  %33 = call i32 @dev_warn(i32* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store %struct.pca963x_platform_data* null, %struct.pca963x_platform_data** %8, align 8
  br label %34

34:                                               ; preds = %30, %23
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.pca963x_platform_data*, %struct.pca963x_platform_data** %8, align 8
  %37 = icmp ne %struct.pca963x_platform_data* %36, null
  br i1 %37, label %38, label %62

38:                                               ; preds = %35
  %39 = load %struct.pca963x_platform_data*, %struct.pca963x_platform_data** %8, align 8
  %40 = getelementptr inbounds %struct.pca963x_platform_data, %struct.pca963x_platform_data* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %53, label %44

44:                                               ; preds = %38
  %45 = load %struct.pca963x_platform_data*, %struct.pca963x_platform_data** %8, align 8
  %46 = getelementptr inbounds %struct.pca963x_platform_data, %struct.pca963x_platform_data* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.pca963x_chipdef*, %struct.pca963x_chipdef** %9, align 8
  %50 = getelementptr inbounds %struct.pca963x_chipdef, %struct.pca963x_chipdef* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %48, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %44, %38
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 1
  %56 = load %struct.pca963x_chipdef*, %struct.pca963x_chipdef** %9, align 8
  %57 = getelementptr inbounds %struct.pca963x_chipdef, %struct.pca963x_chipdef* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %354

62:                                               ; preds = %44, %35
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 1
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call %struct.pca963x* @devm_kzalloc(i32* %64, i32 32, i32 %65)
  store %struct.pca963x* %66, %struct.pca963x** %6, align 8
  %67 = load %struct.pca963x*, %struct.pca963x** %6, align 8
  %68 = icmp ne %struct.pca963x* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %354

72:                                               ; preds = %62
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 1
  %75 = load %struct.pca963x_chipdef*, %struct.pca963x_chipdef** %9, align 8
  %76 = getelementptr inbounds %struct.pca963x_chipdef, %struct.pca963x_chipdef* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call %struct.pca963x_led* @devm_kcalloc(i32* %74, i32 %77, i32 48, i32 %78)
  store %struct.pca963x_led* %79, %struct.pca963x_led** %7, align 8
  %80 = load %struct.pca963x_led*, %struct.pca963x_led** %7, align 8
  %81 = icmp ne %struct.pca963x_led* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %72
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %354

85:                                               ; preds = %72
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = load %struct.pca963x*, %struct.pca963x** %6, align 8
  %88 = call i32 @i2c_set_clientdata(%struct.i2c_client* %86, %struct.pca963x* %87)
  %89 = load %struct.pca963x*, %struct.pca963x** %6, align 8
  %90 = getelementptr inbounds %struct.pca963x, %struct.pca963x* %89, i32 0, i32 3
  %91 = call i32 @mutex_init(i32* %90)
  %92 = load %struct.pca963x_chipdef*, %struct.pca963x_chipdef** %9, align 8
  %93 = load %struct.pca963x*, %struct.pca963x** %6, align 8
  %94 = getelementptr inbounds %struct.pca963x, %struct.pca963x* %93, i32 0, i32 2
  store %struct.pca963x_chipdef* %92, %struct.pca963x_chipdef** %94, align 8
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = load %struct.pca963x*, %struct.pca963x** %6, align 8
  %97 = getelementptr inbounds %struct.pca963x, %struct.pca963x* %96, i32 0, i32 0
  store %struct.i2c_client* %95, %struct.i2c_client** %97, align 8
  %98 = load %struct.pca963x_led*, %struct.pca963x_led** %7, align 8
  %99 = load %struct.pca963x*, %struct.pca963x** %6, align 8
  %100 = getelementptr inbounds %struct.pca963x, %struct.pca963x* %99, i32 0, i32 1
  store %struct.pca963x_led* %98, %struct.pca963x_led** %100, align 8
  store i32 0, i32* %10, align 4
  br label %101

101:                                              ; preds = %117, %85
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.pca963x_chipdef*, %struct.pca963x_chipdef** %9, align 8
  %104 = getelementptr inbounds %struct.pca963x_chipdef, %struct.pca963x_chipdef* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sdiv i32 %105, 4
  %107 = icmp slt i32 %102, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %101
  %109 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %110 = load %struct.pca963x_chipdef*, %struct.pca963x_chipdef** %9, align 8
  %111 = getelementptr inbounds %struct.pca963x_chipdef, %struct.pca963x_chipdef* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %112, %114
  %116 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %109, i64 %115, i32 0)
  br label %117

117:                                              ; preds = %108
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %10, align 4
  br label %101

120:                                              ; preds = %101
  store i32 0, i32* %10, align 4
  br label %121

121:                                              ; preds = %292, %120
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.pca963x_chipdef*, %struct.pca963x_chipdef** %9, align 8
  %124 = getelementptr inbounds %struct.pca963x_chipdef, %struct.pca963x_chipdef* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %295

127:                                              ; preds = %121
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.pca963x_led*, %struct.pca963x_led** %7, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %129, i64 %131
  %133 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %132, i32 0, i32 0
  store i32 %128, i32* %133, align 8
  %134 = load %struct.pca963x*, %struct.pca963x** %6, align 8
  %135 = load %struct.pca963x_led*, %struct.pca963x_led** %7, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %135, i64 %137
  %139 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %138, i32 0, i32 2
  store %struct.pca963x* %134, %struct.pca963x** %139, align 8
  %140 = load %struct.pca963x_platform_data*, %struct.pca963x_platform_data** %8, align 8
  %141 = icmp ne %struct.pca963x_platform_data* %140, null
  br i1 %141, label %142, label %205

142:                                              ; preds = %127
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.pca963x_platform_data*, %struct.pca963x_platform_data** %8, align 8
  %145 = getelementptr inbounds %struct.pca963x_platform_data, %struct.pca963x_platform_data* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %143, %147
  br i1 %148, label %149, label %205

149:                                              ; preds = %142
  %150 = load %struct.pca963x_platform_data*, %struct.pca963x_platform_data** %8, align 8
  %151 = getelementptr inbounds %struct.pca963x_platform_data, %struct.pca963x_platform_data* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %177

160:                                              ; preds = %149
  %161 = load %struct.pca963x_led*, %struct.pca963x_led** %7, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %161, i64 %163
  %165 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.pca963x_platform_data*, %struct.pca963x_platform_data** %8, align 8
  %168 = getelementptr inbounds %struct.pca963x_platform_data, %struct.pca963x_platform_data* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %166, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %175)
  br label %177

177:                                              ; preds = %160, %149
  %178 = load %struct.pca963x_platform_data*, %struct.pca963x_platform_data** %8, align 8
  %179 = getelementptr inbounds %struct.pca963x_platform_data, %struct.pca963x_platform_data* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %204

188:                                              ; preds = %177
  %189 = load %struct.pca963x_platform_data*, %struct.pca963x_platform_data** %8, align 8
  %190 = getelementptr inbounds %struct.pca963x_platform_data, %struct.pca963x_platform_data* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = load i32, i32* %10, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.pca963x_led*, %struct.pca963x_led** %7, align 8
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %198, i64 %200
  %202 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 3
  store i64 %197, i64* %203, align 8
  br label %204

204:                                              ; preds = %188, %177
  br label %205

205:                                              ; preds = %204, %142, %127
  %206 = load %struct.pca963x_platform_data*, %struct.pca963x_platform_data** %8, align 8
  %207 = icmp ne %struct.pca963x_platform_data* %206, null
  br i1 %207, label %208, label %226

208:                                              ; preds = %205
  %209 = load i32, i32* %10, align 4
  %210 = load %struct.pca963x_platform_data*, %struct.pca963x_platform_data** %8, align 8
  %211 = getelementptr inbounds %struct.pca963x_platform_data, %struct.pca963x_platform_data* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp sge i32 %209, %213
  br i1 %214, label %226, label %215

215:                                              ; preds = %208
  %216 = load %struct.pca963x_platform_data*, %struct.pca963x_platform_data** %8, align 8
  %217 = getelementptr inbounds %struct.pca963x_platform_data, %struct.pca963x_platform_data* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %218, align 8
  %220 = load i32, i32* %10, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %243, label %226

226:                                              ; preds = %215, %208, %205
  %227 = load %struct.pca963x_led*, %struct.pca963x_led** %7, align 8
  %228 = load i32, i32* %10, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %227, i64 %229
  %231 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %234 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %233, i32 0, i32 2
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %239 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* %10, align 4
  %242 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %232, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %237, i32 %240, i32 %241)
  br label %243

243:                                              ; preds = %226, %215
  %244 = load %struct.pca963x_led*, %struct.pca963x_led** %7, align 8
  %245 = load i32, i32* %10, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %244, i64 %246
  %248 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.pca963x_led*, %struct.pca963x_led** %7, align 8
  %251 = load i32, i32* %10, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %250, i64 %252
  %254 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 2
  store i32 %249, i32* %255, align 8
  %256 = load i32, i32* @pca963x_led_set, align 4
  %257 = load %struct.pca963x_led*, %struct.pca963x_led** %7, align 8
  %258 = load i32, i32* %10, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %257, i64 %259
  %261 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 1
  store i32 %256, i32* %262, align 4
  %263 = load %struct.pca963x_platform_data*, %struct.pca963x_platform_data** %8, align 8
  %264 = icmp ne %struct.pca963x_platform_data* %263, null
  br i1 %264, label %265, label %279

265:                                              ; preds = %243
  %266 = load %struct.pca963x_platform_data*, %struct.pca963x_platform_data** %8, align 8
  %267 = getelementptr inbounds %struct.pca963x_platform_data, %struct.pca963x_platform_data* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @PCA963X_HW_BLINK, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %279

271:                                              ; preds = %265
  %272 = load i32, i32* @pca963x_blink_set, align 4
  %273 = load %struct.pca963x_led*, %struct.pca963x_led** %7, align 8
  %274 = load i32, i32* %10, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %273, i64 %275
  %277 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 0
  store i32 %272, i32* %278, align 8
  br label %279

279:                                              ; preds = %271, %265, %243
  %280 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %281 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %280, i32 0, i32 1
  %282 = load %struct.pca963x_led*, %struct.pca963x_led** %7, align 8
  %283 = load i32, i32* %10, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %282, i64 %284
  %286 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %285, i32 0, i32 1
  %287 = call i32 @led_classdev_register(i32* %281, %struct.TYPE_9__* %286)
  store i32 %287, i32* %11, align 4
  %288 = load i32, i32* %11, align 4
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %279
  br label %340

291:                                              ; preds = %279
  br label %292

292:                                              ; preds = %291
  %293 = load i32, i32* %10, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %10, align 4
  br label %121

295:                                              ; preds = %121
  %296 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %297 = load i64, i64* @PCA963X_MODE1, align 8
  %298 = call i32 @BIT(i32 4)
  %299 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %296, i64 %297, i32 %298)
  %300 = load %struct.pca963x_platform_data*, %struct.pca963x_platform_data** %8, align 8
  %301 = icmp ne %struct.pca963x_platform_data* %300, null
  br i1 %301, label %302, label %339

302:                                              ; preds = %295
  %303 = load %struct.pca963x_led*, %struct.pca963x_led** %7, align 8
  %304 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %303, i32 0, i32 2
  %305 = load %struct.pca963x*, %struct.pca963x** %304, align 8
  %306 = getelementptr inbounds %struct.pca963x, %struct.pca963x* %305, i32 0, i32 0
  %307 = load %struct.i2c_client*, %struct.i2c_client** %306, align 8
  %308 = load i64, i64* @PCA963X_MODE2, align 8
  %309 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %307, i64 %308)
  store i32 %309, i32* %12, align 4
  %310 = load %struct.pca963x_platform_data*, %struct.pca963x_platform_data** %8, align 8
  %311 = getelementptr inbounds %struct.pca963x_platform_data, %struct.pca963x_platform_data* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @PCA963X_OPEN_DRAIN, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %318

315:                                              ; preds = %302
  %316 = load i32, i32* %12, align 4
  %317 = or i32 %316, 1
  store i32 %317, i32* %12, align 4
  br label %321

318:                                              ; preds = %302
  %319 = load i32, i32* %12, align 4
  %320 = or i32 %319, 5
  store i32 %320, i32* %12, align 4
  br label %321

321:                                              ; preds = %318, %315
  %322 = load %struct.pca963x_platform_data*, %struct.pca963x_platform_data** %8, align 8
  %323 = getelementptr inbounds %struct.pca963x_platform_data, %struct.pca963x_platform_data* %322, i32 0, i32 2
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @PCA963X_INVERTED, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %327, label %330

327:                                              ; preds = %321
  %328 = load i32, i32* %12, align 4
  %329 = or i32 %328, 16
  store i32 %329, i32* %12, align 4
  br label %330

330:                                              ; preds = %327, %321
  %331 = load %struct.pca963x_led*, %struct.pca963x_led** %7, align 8
  %332 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %331, i32 0, i32 2
  %333 = load %struct.pca963x*, %struct.pca963x** %332, align 8
  %334 = getelementptr inbounds %struct.pca963x, %struct.pca963x* %333, i32 0, i32 0
  %335 = load %struct.i2c_client*, %struct.i2c_client** %334, align 8
  %336 = load i64, i64* @PCA963X_MODE2, align 8
  %337 = load i32, i32* %12, align 4
  %338 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %335, i64 %336, i32 %337)
  br label %339

339:                                              ; preds = %330, %295
  store i32 0, i32* %3, align 4
  br label %354

340:                                              ; preds = %290
  br label %341

341:                                              ; preds = %345, %340
  %342 = load i32, i32* %10, align 4
  %343 = add nsw i32 %342, -1
  store i32 %343, i32* %10, align 4
  %344 = icmp ne i32 %342, 0
  br i1 %344, label %345, label %352

345:                                              ; preds = %341
  %346 = load %struct.pca963x_led*, %struct.pca963x_led** %7, align 8
  %347 = load i32, i32* %10, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %346, i64 %348
  %350 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %349, i32 0, i32 1
  %351 = call i32 @led_classdev_unregister(%struct.TYPE_9__* %350)
  br label %341

352:                                              ; preds = %341
  %353 = load i32, i32* %11, align 4
  store i32 %353, i32* %3, align 4
  br label %354

354:                                              ; preds = %352, %339, %82, %69, %53
  %355 = load i32, i32* %3, align 4
  ret i32 %355
}

declare dso_local %struct.pca963x_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.pca963x_platform_data* @pca963x_get_pdata(%struct.i2c_client*, %struct.pca963x_chipdef*) #1

declare dso_local i64 @IS_ERR(%struct.pca963x_platform_data*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.pca963x* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.pca963x_led* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.pca963x*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i64, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @led_classdev_register(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i64) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
