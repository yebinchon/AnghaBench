; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_configure_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_configure_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goodix_ts_data = type { i64, i32, i32, %struct.TYPE_12__*, %struct.TYPE_13__*, i8*, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i8*, i8*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i64, i64 }

@GOODIX_INT_TRIGGER = common dso_local global i64 0, align 8
@GOODIX_MAX_CONTACTS = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"Failed to allocate input device.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Goodix Capacitive TouchScreen\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"input/ts\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@KEY_LEFTMETA = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_WIDTH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Invalid config (%d, %d, %d), using defaults\0A\00", align 1
@GOODIX_MAX_WIDTH = common dso_local global i64 0, align 8
@GOODIX_MAX_HEIGHT = common dso_local global i64 0, align 8
@rotated_screen = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Applying '180 degrees rotated screen' quirk\0A\00", align 1
@nine_bytes_report = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Non-standard 9-bytes report format quirk\0A\00", align 1
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@INPUT_MT_DROP_UNUSED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Failed to initialize MT slots: %d\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Failed to register input device: %d\00", align 1
@goodix_irq_flags = common dso_local global i32* null, align 8
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"request IRQ failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.goodix_ts_data*)* @goodix_configure_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goodix_configure_dev(%struct.goodix_ts_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.goodix_ts_data*, align 8
  %4 = alloca i32, align 4
  store %struct.goodix_ts_data* %0, %struct.goodix_ts_data** %3, align 8
  %5 = load i64, i64* @GOODIX_INT_TRIGGER, align 8
  %6 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %7 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %6, i32 0, i32 0
  store i64 %5, i64* %7, align 8
  %8 = load i8*, i8** @GOODIX_MAX_CONTACTS, align 8
  %9 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %10 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %9, i32 0, i32 5
  store i8* %8, i8** %10, align 8
  %11 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %12 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %11, i32 0, i32 3
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = call %struct.TYPE_13__* @devm_input_allocate_device(i32* %14)
  %16 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %17 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %16, i32 0, i32 4
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %17, align 8
  %18 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %19 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %18, i32 0, i32 4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = icmp ne %struct.TYPE_13__* %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %1
  %23 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %24 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %23, i32 0, i32 3
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = call i32 (i32*, i8*, ...) @dev_err(i32* %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %254

30:                                               ; preds = %1
  %31 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %32 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %31, i32 0, i32 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8** %34, align 8
  %35 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %36 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %35, i32 0, i32 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %38, align 8
  %39 = load i32, i32* @BUS_I2C, align 4
  %40 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %41 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %40, i32 0, i32 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  store i32 %39, i32* %44, align 4
  %45 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %46 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %45, i32 0, i32 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  store i32 1046, i32* %49, align 8
  %50 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %51 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %54 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %53, i32 0, i32 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  store i32 %52, i32* %57, align 8
  %58 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %59 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %62 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %61, i32 0, i32 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  store i32 %60, i32* %65, align 4
  %66 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %67 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %66, i32 0, i32 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = load i32, i32* @EV_KEY, align 4
  %70 = load i32, i32* @KEY_LEFTMETA, align 4
  %71 = call i32 @input_set_capability(%struct.TYPE_13__* %68, i32 %69, i32 %70)
  %72 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %73 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %72, i32 0, i32 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = load i32, i32* @EV_ABS, align 4
  %76 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %77 = call i32 @input_set_capability(%struct.TYPE_13__* %74, i32 %75, i32 %76)
  %78 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %79 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %78, i32 0, i32 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = load i32, i32* @EV_ABS, align 4
  %82 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %83 = call i32 @input_set_capability(%struct.TYPE_13__* %80, i32 %81, i32 %82)
  %84 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %85 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %84, i32 0, i32 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = load i32, i32* @ABS_MT_WIDTH_MAJOR, align 4
  %88 = call i32 @input_set_abs_params(%struct.TYPE_13__* %86, i32 %87, i32 0, i32 255, i32 0, i32 0)
  %89 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %90 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %89, i32 0, i32 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %93 = call i32 @input_set_abs_params(%struct.TYPE_13__* %91, i32 %92, i32 0, i32 255, i32 0, i32 0)
  %94 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %95 = call i32 @goodix_read_config(%struct.goodix_ts_data* %94)
  %96 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %97 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %96, i32 0, i32 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %100 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %99, i32 0, i32 6
  %101 = call i32 @touchscreen_parse_properties(%struct.TYPE_13__* %98, i32 1, %struct.TYPE_14__* %100)
  %102 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %103 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %30
  %108 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %109 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %115 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %114, i32 0, i32 5
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %166, label %118

118:                                              ; preds = %113, %107, %30
  %119 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %120 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %119, i32 0, i32 3
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %124 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %128 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %127, i32 0, i32 6
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %132 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %131, i32 0, i32 5
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (i32*, i8*, ...) @dev_err(i32* %122, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %126, i64 %130, i8* %133)
  %135 = load i64, i64* @GOODIX_MAX_WIDTH, align 8
  %136 = sub nsw i64 %135, 1
  %137 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %138 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %137, i32 0, i32 6
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 3
  store i64 %136, i64* %139, align 8
  %140 = load i64, i64* @GOODIX_MAX_HEIGHT, align 8
  %141 = sub nsw i64 %140, 1
  %142 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %143 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %142, i32 0, i32 6
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 2
  store i64 %141, i64* %144, align 8
  %145 = load i8*, i8** @GOODIX_MAX_CONTACTS, align 8
  %146 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %147 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %146, i32 0, i32 5
  store i8* %145, i8** %147, align 8
  %148 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %149 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %148, i32 0, i32 4
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %149, align 8
  %151 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %152 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %153 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %152, i32 0, i32 6
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @input_abs_set_max(%struct.TYPE_13__* %150, i32 %151, i64 %155)
  %157 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %158 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %157, i32 0, i32 4
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %158, align 8
  %160 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %161 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %162 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @input_abs_set_max(%struct.TYPE_13__* %159, i32 %160, i64 %164)
  br label %166

166:                                              ; preds = %118, %113
  %167 = load i32, i32* @rotated_screen, align 4
  %168 = call i64 @dmi_check_system(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %166
  %171 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %172 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %171, i32 0, i32 6
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  store i32 1, i32* %173, align 8
  %174 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %175 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %174, i32 0, i32 6
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 1
  store i32 1, i32* %176, align 4
  %177 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %178 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %177, i32 0, i32 3
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = call i32 @dev_dbg(i32* %180, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %182

182:                                              ; preds = %170, %166
  %183 = load i32, i32* @nine_bytes_report, align 4
  %184 = call i64 @dmi_check_system(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %182
  %187 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %188 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %187, i32 0, i32 1
  store i32 9, i32* %188, align 8
  %189 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %190 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %189, i32 0, i32 3
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = call i32 @dev_dbg(i32* %192, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %194

194:                                              ; preds = %186, %182
  %195 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %196 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %195, i32 0, i32 4
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %196, align 8
  %198 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %199 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %198, i32 0, i32 5
  %200 = load i8*, i8** %199, align 8
  %201 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %202 = load i32, i32* @INPUT_MT_DROP_UNUSED, align 4
  %203 = or i32 %201, %202
  %204 = call i32 @input_mt_init_slots(%struct.TYPE_13__* %197, i8* %200, i32 %203)
  store i32 %204, i32* %4, align 4
  %205 = load i32, i32* %4, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %194
  %208 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %209 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %208, i32 0, i32 3
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 0
  %212 = load i32, i32* %4, align 4
  %213 = call i32 (i32*, i8*, ...) @dev_err(i32* %211, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %212)
  %214 = load i32, i32* %4, align 4
  store i32 %214, i32* %2, align 4
  br label %254

215:                                              ; preds = %194
  %216 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %217 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %216, i32 0, i32 4
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %217, align 8
  %219 = call i32 @input_register_device(%struct.TYPE_13__* %218)
  store i32 %219, i32* %4, align 4
  %220 = load i32, i32* %4, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %215
  %223 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %224 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %223, i32 0, i32 3
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %227 = load i32, i32* %4, align 4
  %228 = call i32 (i32*, i8*, ...) @dev_err(i32* %226, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* %4, align 4
  store i32 %229, i32* %2, align 4
  br label %254

230:                                              ; preds = %215
  %231 = load i32*, i32** @goodix_irq_flags, align 8
  %232 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %233 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds i32, i32* %231, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @IRQF_ONESHOT, align 4
  %238 = or i32 %236, %237
  %239 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %240 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %239, i32 0, i32 2
  store i32 %238, i32* %240, align 4
  %241 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %242 = call i32 @goodix_request_irq(%struct.goodix_ts_data* %241)
  store i32 %242, i32* %4, align 4
  %243 = load i32, i32* %4, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %230
  %246 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %247 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %246, i32 0, i32 3
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = load i32, i32* %4, align 4
  %251 = call i32 (i32*, i8*, ...) @dev_err(i32* %249, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %250)
  %252 = load i32, i32* %4, align 4
  store i32 %252, i32* %2, align 4
  br label %254

253:                                              ; preds = %230
  store i32 0, i32* %2, align 4
  br label %254

254:                                              ; preds = %253, %245, %222, %207, %22
  %255 = load i32, i32* %2, align 4
  ret i32 %255
}

declare dso_local %struct.TYPE_13__* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.TYPE_13__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @goodix_read_config(%struct.goodix_ts_data*) #1

declare dso_local i32 @touchscreen_parse_properties(%struct.TYPE_13__*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @input_abs_set_max(%struct.TYPE_13__*, i32, i64) #1

declare dso_local i64 @dmi_check_system(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @input_mt_init_slots(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @input_register_device(%struct.TYPE_13__*) #1

declare dso_local i32 @goodix_request_irq(%struct.goodix_ts_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
