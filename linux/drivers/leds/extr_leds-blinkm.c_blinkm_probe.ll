; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-blinkm.c_blinkm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-blinkm.c_blinkm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.blinkm_data = type { i32, i32, i32, %struct.blinkm_led*, i32, %struct.i2c_client* }
%struct.blinkm_led = type { i32, %struct.TYPE_8__, %struct.i2c_client* }
%struct.TYPE_8__ = type { i32, i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@blinkm_group = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"couldn't register sysfs group\0A\00", align 1
@LED_CORE_SUSPENDRESUME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"blinkm-%d-%d-red\00", align 1
@blinkm_led_red_set = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"couldn't register LED %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"blinkm-%d-%d-green\00", align 1
@blinkm_led_green_set = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"blinkm-%d-%d-blue\00", align 1
@blinkm_led_blue_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @blinkm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blinkm_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.blinkm_data*, align 8
  %7 = alloca [3 x %struct.blinkm_led*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [28 x i8], align 16
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.blinkm_data* @devm_kzalloc(%struct.TYPE_9__* %12, i32 40, i32 %13)
  store %struct.blinkm_data* %14, %struct.blinkm_data** %6, align 8
  %15 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %16 = icmp ne %struct.blinkm_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %249

20:                                               ; preds = %2
  %21 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %22 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %21, i32 0, i32 0
  store i32 8, i32* %22, align 8
  %23 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %24 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %23, i32 0, i32 1
  store i32 254, i32* %24, align 4
  %25 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %26 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %25, i32 0, i32 2
  store i32 1, i32* %26, align 8
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %29 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %28, i32 0, i32 5
  store %struct.i2c_client* %27, %struct.i2c_client** %29, align 8
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %32 = call i32 @i2c_set_clientdata(%struct.i2c_client* %30, %struct.blinkm_data* %31)
  %33 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %34 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %33, i32 0, i32 4
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = call i32 @sysfs_create_group(i32* %38, i32* @blinkm_group)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %20
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 1
  %45 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %249

46:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %228, %46
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 3
  br i1 %49, label %50, label %231

50:                                               ; preds = %47
  %51 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %52 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %51, i32 0, i32 3
  %53 = load %struct.blinkm_led*, %struct.blinkm_led** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.blinkm_led, %struct.blinkm_led* %53, i64 %55
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [3 x %struct.blinkm_led*], [3 x %struct.blinkm_led*]* %7, i64 0, i64 %58
  store %struct.blinkm_led* %56, %struct.blinkm_led** %59, align 8
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [3 x %struct.blinkm_led*], [3 x %struct.blinkm_led*]* %7, i64 0, i64 %62
  %64 = load %struct.blinkm_led*, %struct.blinkm_led** %63, align 8
  %65 = getelementptr inbounds %struct.blinkm_led, %struct.blinkm_led* %64, i32 0, i32 2
  store %struct.i2c_client* %60, %struct.i2c_client** %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [3 x %struct.blinkm_led*], [3 x %struct.blinkm_led*]* %7, i64 0, i64 %68
  %70 = load %struct.blinkm_led*, %struct.blinkm_led** %69, align 8
  %71 = getelementptr inbounds %struct.blinkm_led, %struct.blinkm_led* %70, i32 0, i32 0
  store i32 %66, i32* %71, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [3 x %struct.blinkm_led*], [3 x %struct.blinkm_led*]* %7, i64 0, i64 %73
  %75 = load %struct.blinkm_led*, %struct.blinkm_led** %74, align 8
  %76 = getelementptr inbounds %struct.blinkm_led, %struct.blinkm_led* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i32 255, i32* %77, align 8
  %78 = load i32, i32* @LED_CORE_SUSPENDRESUME, align 4
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [3 x %struct.blinkm_led*], [3 x %struct.blinkm_led*]* %7, i64 0, i64 %80
  %82 = load %struct.blinkm_led*, %struct.blinkm_led** %81, align 8
  %83 = getelementptr inbounds %struct.blinkm_led, %struct.blinkm_led* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  store i32 %78, i32* %84, align 4
  %85 = load i32, i32* %9, align 4
  switch i32 %85, label %227 [
    i32 128, label %86
    i32 129, label %133
    i32 130, label %180
  ]

86:                                               ; preds = %50
  %87 = getelementptr inbounds [28 x i8], [28 x i8]* %10, i64 0, i64 0
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %88, i32 0, i32 2
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @snprintf(i8* %87, i32 28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %95)
  %97 = getelementptr inbounds [28 x i8], [28 x i8]* %10, i64 0, i64 0
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [3 x %struct.blinkm_led*], [3 x %struct.blinkm_led*]* %7, i64 0, i64 %99
  %101 = load %struct.blinkm_led*, %struct.blinkm_led** %100, align 8
  %102 = getelementptr inbounds %struct.blinkm_led, %struct.blinkm_led* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  store i8* %97, i8** %103, align 8
  %104 = load i32, i32* @blinkm_led_red_set, align 4
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [3 x %struct.blinkm_led*], [3 x %struct.blinkm_led*]* %7, i64 0, i64 %106
  %108 = load %struct.blinkm_led*, %struct.blinkm_led** %107, align 8
  %109 = getelementptr inbounds %struct.blinkm_led, %struct.blinkm_led* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  store i32 %104, i32* %110, align 8
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %111, i32 0, i32 1
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [3 x %struct.blinkm_led*], [3 x %struct.blinkm_led*]* %7, i64 0, i64 %114
  %116 = load %struct.blinkm_led*, %struct.blinkm_led** %115, align 8
  %117 = getelementptr inbounds %struct.blinkm_led, %struct.blinkm_led* %116, i32 0, i32 1
  %118 = call i32 @led_classdev_register(%struct.TYPE_9__* %112, %struct.TYPE_8__* %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %86
  %122 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %123 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %122, i32 0, i32 1
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [3 x %struct.blinkm_led*], [3 x %struct.blinkm_led*]* %7, i64 0, i64 %125
  %127 = load %struct.blinkm_led*, %struct.blinkm_led** %126, align 8
  %128 = getelementptr inbounds %struct.blinkm_led, %struct.blinkm_led* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %123, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %130)
  br label %244

132:                                              ; preds = %86
  br label %227

133:                                              ; preds = %50
  %134 = getelementptr inbounds [28 x i8], [28 x i8]* %10, i64 0, i64 0
  %135 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %136 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %135, i32 0, i32 2
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %141 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @snprintf(i8* %134, i32 28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %139, i32 %142)
  %144 = getelementptr inbounds [28 x i8], [28 x i8]* %10, i64 0, i64 0
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [3 x %struct.blinkm_led*], [3 x %struct.blinkm_led*]* %7, i64 0, i64 %146
  %148 = load %struct.blinkm_led*, %struct.blinkm_led** %147, align 8
  %149 = getelementptr inbounds %struct.blinkm_led, %struct.blinkm_led* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  store i8* %144, i8** %150, align 8
  %151 = load i32, i32* @blinkm_led_green_set, align 4
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [3 x %struct.blinkm_led*], [3 x %struct.blinkm_led*]* %7, i64 0, i64 %153
  %155 = load %struct.blinkm_led*, %struct.blinkm_led** %154, align 8
  %156 = getelementptr inbounds %struct.blinkm_led, %struct.blinkm_led* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 2
  store i32 %151, i32* %157, align 8
  %158 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %159 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %158, i32 0, i32 1
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [3 x %struct.blinkm_led*], [3 x %struct.blinkm_led*]* %7, i64 0, i64 %161
  %163 = load %struct.blinkm_led*, %struct.blinkm_led** %162, align 8
  %164 = getelementptr inbounds %struct.blinkm_led, %struct.blinkm_led* %163, i32 0, i32 1
  %165 = call i32 @led_classdev_register(%struct.TYPE_9__* %159, %struct.TYPE_8__* %164)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %133
  %169 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %170 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %169, i32 0, i32 1
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [3 x %struct.blinkm_led*], [3 x %struct.blinkm_led*]* %7, i64 0, i64 %172
  %174 = load %struct.blinkm_led*, %struct.blinkm_led** %173, align 8
  %175 = getelementptr inbounds %struct.blinkm_led, %struct.blinkm_led* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %170, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %177)
  br label %239

179:                                              ; preds = %133
  br label %227

180:                                              ; preds = %50
  %181 = getelementptr inbounds [28 x i8], [28 x i8]* %10, i64 0, i64 0
  %182 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %183 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %182, i32 0, i32 2
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %188 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @snprintf(i8* %181, i32 28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %186, i32 %189)
  %191 = getelementptr inbounds [28 x i8], [28 x i8]* %10, i64 0, i64 0
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [3 x %struct.blinkm_led*], [3 x %struct.blinkm_led*]* %7, i64 0, i64 %193
  %195 = load %struct.blinkm_led*, %struct.blinkm_led** %194, align 8
  %196 = getelementptr inbounds %struct.blinkm_led, %struct.blinkm_led* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  store i8* %191, i8** %197, align 8
  %198 = load i32, i32* @blinkm_led_blue_set, align 4
  %199 = load i32, i32* %9, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [3 x %struct.blinkm_led*], [3 x %struct.blinkm_led*]* %7, i64 0, i64 %200
  %202 = load %struct.blinkm_led*, %struct.blinkm_led** %201, align 8
  %203 = getelementptr inbounds %struct.blinkm_led, %struct.blinkm_led* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 2
  store i32 %198, i32* %204, align 8
  %205 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %206 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %205, i32 0, i32 1
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [3 x %struct.blinkm_led*], [3 x %struct.blinkm_led*]* %7, i64 0, i64 %208
  %210 = load %struct.blinkm_led*, %struct.blinkm_led** %209, align 8
  %211 = getelementptr inbounds %struct.blinkm_led, %struct.blinkm_led* %210, i32 0, i32 1
  %212 = call i32 @led_classdev_register(%struct.TYPE_9__* %206, %struct.TYPE_8__* %211)
  store i32 %212, i32* %8, align 4
  %213 = load i32, i32* %8, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %226

215:                                              ; preds = %180
  %216 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %217 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %216, i32 0, i32 1
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [3 x %struct.blinkm_led*], [3 x %struct.blinkm_led*]* %7, i64 0, i64 %219
  %221 = load %struct.blinkm_led*, %struct.blinkm_led** %220, align 8
  %222 = getelementptr inbounds %struct.blinkm_led, %struct.blinkm_led* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 1
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %217, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %224)
  br label %234

226:                                              ; preds = %180
  br label %227

227:                                              ; preds = %50, %226, %179, %132
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %9, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %9, align 4
  br label %47

231:                                              ; preds = %47
  %232 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %233 = call i32 @blinkm_init_hw(%struct.i2c_client* %232)
  store i32 0, i32* %3, align 4
  br label %251

234:                                              ; preds = %215
  %235 = getelementptr inbounds [3 x %struct.blinkm_led*], [3 x %struct.blinkm_led*]* %7, i64 0, i64 129
  %236 = load %struct.blinkm_led*, %struct.blinkm_led** %235, align 8
  %237 = getelementptr inbounds %struct.blinkm_led, %struct.blinkm_led* %236, i32 0, i32 1
  %238 = call i32 @led_classdev_unregister(%struct.TYPE_8__* %237)
  br label %239

239:                                              ; preds = %234, %168
  %240 = getelementptr inbounds [3 x %struct.blinkm_led*], [3 x %struct.blinkm_led*]* %7, i64 0, i64 128
  %241 = load %struct.blinkm_led*, %struct.blinkm_led** %240, align 16
  %242 = getelementptr inbounds %struct.blinkm_led, %struct.blinkm_led* %241, i32 0, i32 1
  %243 = call i32 @led_classdev_unregister(%struct.TYPE_8__* %242)
  br label %244

244:                                              ; preds = %239, %121
  %245 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %246 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  %248 = call i32 @sysfs_remove_group(i32* %247, i32* @blinkm_group)
  br label %249

249:                                              ; preds = %244, %42, %17
  %250 = load i32, i32* %8, align 4
  store i32 %250, i32* %3, align 4
  br label %251

251:                                              ; preds = %249, %231
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

declare dso_local %struct.blinkm_data* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.blinkm_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @led_classdev_register(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i32 @blinkm_init_hw(%struct.i2c_client*) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_8__*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
