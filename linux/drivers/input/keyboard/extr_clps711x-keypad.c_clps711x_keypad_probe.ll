; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_clps711x-keypad.c_clps711x_keypad_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_clps711x-keypad.c_clps711x_keypad_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.clps711x_keypad_data = type { i32, i32, %struct.clps711x_gpio_data*, i32 }
%struct.clps711x_gpio_data = type { i32 }
%struct.input_polled_dev = type { %struct.TYPE_7__*, i32, i32, %struct.clps711x_keypad_data* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cirrus,ep7209-syscon1\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"row-gpios\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CLPS711X_KEYPAD_COL_COUNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"row\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"poll-interval\00", align 1
@clps711x_keypad_poll = common dso_local global i32 0, align 4
@BUS_HOST = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"autorepeat\00", align 1
@EV_REP = common dso_local global i32 0, align 4
@SYSCON_OFFSET = common dso_local global i32 0, align 4
@SYSCON1_KBDSCAN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @clps711x_keypad_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clps711x_keypad_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.clps711x_keypad_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.input_polled_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.clps711x_gpio_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 1
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %6, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.clps711x_keypad_data* @devm_kzalloc(%struct.device* %17, i32 24, i32 %18)
  store %struct.clps711x_keypad_data* %19, %struct.clps711x_keypad_data** %4, align 8
  %20 = load %struct.clps711x_keypad_data*, %struct.clps711x_keypad_data** %4, align 8
  %21 = icmp ne %struct.clps711x_keypad_data* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %213

25:                                               ; preds = %1
  %26 = call i32 @syscon_regmap_lookup_by_compatible(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.clps711x_keypad_data*, %struct.clps711x_keypad_data** %4, align 8
  %28 = getelementptr inbounds %struct.clps711x_keypad_data, %struct.clps711x_keypad_data* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.clps711x_keypad_data*, %struct.clps711x_keypad_data** %4, align 8
  %30 = getelementptr inbounds %struct.clps711x_keypad_data, %struct.clps711x_keypad_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load %struct.clps711x_keypad_data*, %struct.clps711x_keypad_data** %4, align 8
  %36 = getelementptr inbounds %struct.clps711x_keypad_data, %struct.clps711x_keypad_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %213

39:                                               ; preds = %25
  %40 = load %struct.device_node*, %struct.device_node** %6, align 8
  %41 = call i32 @of_gpio_named_count(%struct.device_node* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.clps711x_keypad_data*, %struct.clps711x_keypad_data** %4, align 8
  %43 = getelementptr inbounds %struct.clps711x_keypad_data, %struct.clps711x_keypad_data* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.clps711x_keypad_data*, %struct.clps711x_keypad_data** %4, align 8
  %45 = getelementptr inbounds %struct.clps711x_keypad_data, %struct.clps711x_keypad_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %213

51:                                               ; preds = %39
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = load %struct.clps711x_keypad_data*, %struct.clps711x_keypad_data** %4, align 8
  %54 = getelementptr inbounds %struct.clps711x_keypad_data, %struct.clps711x_keypad_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.clps711x_gpio_data* @devm_kcalloc(%struct.device* %52, i32 %55, i32 4, i32 %56)
  %58 = load %struct.clps711x_keypad_data*, %struct.clps711x_keypad_data** %4, align 8
  %59 = getelementptr inbounds %struct.clps711x_keypad_data, %struct.clps711x_keypad_data* %58, i32 0, i32 2
  store %struct.clps711x_gpio_data* %57, %struct.clps711x_gpio_data** %59, align 8
  %60 = load %struct.clps711x_keypad_data*, %struct.clps711x_keypad_data** %4, align 8
  %61 = getelementptr inbounds %struct.clps711x_keypad_data, %struct.clps711x_keypad_data* %60, i32 0, i32 2
  %62 = load %struct.clps711x_gpio_data*, %struct.clps711x_gpio_data** %61, align 8
  %63 = icmp ne %struct.clps711x_gpio_data* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %51
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %213

67:                                               ; preds = %51
  %68 = load i32, i32* @CLPS711X_KEYPAD_COL_COUNT, align 4
  %69 = call i32 @get_count_order(i32 %68)
  %70 = load %struct.clps711x_keypad_data*, %struct.clps711x_keypad_data** %4, align 8
  %71 = getelementptr inbounds %struct.clps711x_keypad_data, %struct.clps711x_keypad_data* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %102, %67
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.clps711x_keypad_data*, %struct.clps711x_keypad_data** %4, align 8
  %75 = getelementptr inbounds %struct.clps711x_keypad_data, %struct.clps711x_keypad_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %105

78:                                               ; preds = %72
  %79 = load %struct.clps711x_keypad_data*, %struct.clps711x_keypad_data** %4, align 8
  %80 = getelementptr inbounds %struct.clps711x_keypad_data, %struct.clps711x_keypad_data* %79, i32 0, i32 2
  %81 = load %struct.clps711x_gpio_data*, %struct.clps711x_gpio_data** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.clps711x_gpio_data, %struct.clps711x_gpio_data* %81, i64 %83
  store %struct.clps711x_gpio_data* %84, %struct.clps711x_gpio_data** %11, align 8
  %85 = load %struct.device*, %struct.device** %5, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @GPIOD_IN, align 4
  %88 = call i32 @devm_gpiod_get_index(%struct.device* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load %struct.clps711x_gpio_data*, %struct.clps711x_gpio_data** %11, align 8
  %90 = getelementptr inbounds %struct.clps711x_gpio_data, %struct.clps711x_gpio_data* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load %struct.clps711x_gpio_data*, %struct.clps711x_gpio_data** %11, align 8
  %92 = getelementptr inbounds %struct.clps711x_gpio_data, %struct.clps711x_gpio_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @IS_ERR(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %78
  %97 = load %struct.clps711x_gpio_data*, %struct.clps711x_gpio_data** %11, align 8
  %98 = getelementptr inbounds %struct.clps711x_gpio_data, %struct.clps711x_gpio_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @PTR_ERR(i32 %99)
  store i32 %100, i32* %2, align 4
  br label %213

101:                                              ; preds = %78
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %72

105:                                              ; preds = %72
  %106 = load %struct.device_node*, %struct.device_node** %6, align 8
  %107 = call i32 @of_property_read_u32(%struct.device_node* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* %8)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %2, align 4
  br label %213

112:                                              ; preds = %105
  %113 = call %struct.input_polled_dev* (...) @input_allocate_polled_device()
  store %struct.input_polled_dev* %113, %struct.input_polled_dev** %7, align 8
  %114 = load %struct.input_polled_dev*, %struct.input_polled_dev** %7, align 8
  %115 = icmp ne %struct.input_polled_dev* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %213

119:                                              ; preds = %112
  %120 = load %struct.clps711x_keypad_data*, %struct.clps711x_keypad_data** %4, align 8
  %121 = load %struct.input_polled_dev*, %struct.input_polled_dev** %7, align 8
  %122 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %121, i32 0, i32 3
  store %struct.clps711x_keypad_data* %120, %struct.clps711x_keypad_data** %122, align 8
  %123 = load i32, i32* @clps711x_keypad_poll, align 4
  %124 = load %struct.input_polled_dev*, %struct.input_polled_dev** %7, align 8
  %125 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.input_polled_dev*, %struct.input_polled_dev** %7, align 8
  %128 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.input_polled_dev*, %struct.input_polled_dev** %7, align 8
  %133 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %132, i32 0, i32 0
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 3
  store i32 %131, i32* %135, align 8
  %136 = load %struct.device*, %struct.device** %5, align 8
  %137 = load %struct.input_polled_dev*, %struct.input_polled_dev** %7, align 8
  %138 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %137, i32 0, i32 0
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  store %struct.device* %136, %struct.device** %141, align 8
  %142 = load i32, i32* @BUS_HOST, align 4
  %143 = load %struct.input_polled_dev*, %struct.input_polled_dev** %7, align 8
  %144 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %143, i32 0, i32 0
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 3
  store i32 %142, i32* %147, align 4
  %148 = load %struct.input_polled_dev*, %struct.input_polled_dev** %7, align 8
  %149 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %148, i32 0, i32 0
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  store i32 1, i32* %152, align 4
  %153 = load %struct.input_polled_dev*, %struct.input_polled_dev** %7, align 8
  %154 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %153, i32 0, i32 0
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  store i32 1, i32* %157, align 4
  %158 = load %struct.input_polled_dev*, %struct.input_polled_dev** %7, align 8
  %159 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %158, i32 0, i32 0
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 2
  store i32 256, i32* %162, align 4
  %163 = load %struct.clps711x_keypad_data*, %struct.clps711x_keypad_data** %4, align 8
  %164 = getelementptr inbounds %struct.clps711x_keypad_data, %struct.clps711x_keypad_data* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @CLPS711X_KEYPAD_COL_COUNT, align 4
  %167 = load %struct.input_polled_dev*, %struct.input_polled_dev** %7, align 8
  %168 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %167, i32 0, i32 0
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = call i32 @matrix_keypad_build_keymap(i32* null, i32* null, i32 %165, i32 %166, i32* null, %struct.TYPE_7__* %169)
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %119
  br label %209

174:                                              ; preds = %119
  %175 = load %struct.input_polled_dev*, %struct.input_polled_dev** %7, align 8
  %176 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %175, i32 0, i32 0
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %176, align 8
  %178 = load i32, i32* @EV_MSC, align 4
  %179 = load i32, i32* @MSC_SCAN, align 4
  %180 = call i32 @input_set_capability(%struct.TYPE_7__* %177, i32 %178, i32 %179)
  %181 = load %struct.device_node*, %struct.device_node** %6, align 8
  %182 = call i64 @of_property_read_bool(%struct.device_node* %181, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %174
  %185 = load i32, i32* @EV_REP, align 4
  %186 = load %struct.input_polled_dev*, %struct.input_polled_dev** %7, align 8
  %187 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %186, i32 0, i32 0
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @__set_bit(i32 %185, i32 %190)
  br label %192

192:                                              ; preds = %184, %174
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = load %struct.input_polled_dev*, %struct.input_polled_dev** %7, align 8
  %195 = call i32 @platform_set_drvdata(%struct.platform_device* %193, %struct.input_polled_dev* %194)
  %196 = load %struct.clps711x_keypad_data*, %struct.clps711x_keypad_data** %4, align 8
  %197 = getelementptr inbounds %struct.clps711x_keypad_data, %struct.clps711x_keypad_data* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @SYSCON_OFFSET, align 4
  %200 = load i32, i32* @SYSCON1_KBDSCAN_MASK, align 4
  %201 = call i32 @SYSCON1_KBDSCAN(i32 1)
  %202 = call i32 @regmap_update_bits(i32 %198, i32 %199, i32 %200, i32 %201)
  %203 = load %struct.input_polled_dev*, %struct.input_polled_dev** %7, align 8
  %204 = call i32 @input_register_polled_device(%struct.input_polled_dev* %203)
  store i32 %204, i32* %10, align 4
  %205 = load i32, i32* %10, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %192
  br label %209

208:                                              ; preds = %192
  store i32 0, i32* %2, align 4
  br label %213

209:                                              ; preds = %207, %173
  %210 = load %struct.input_polled_dev*, %struct.input_polled_dev** %7, align 8
  %211 = call i32 @input_free_polled_device(%struct.input_polled_dev* %210)
  %212 = load i32, i32* %10, align 4
  store i32 %212, i32* %2, align 4
  br label %213

213:                                              ; preds = %209, %208, %116, %110, %96, %64, %48, %34, %22
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

declare dso_local %struct.clps711x_keypad_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @syscon_regmap_lookup_by_compatible(i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_gpio_named_count(%struct.device_node*, i8*) #1

declare dso_local %struct.clps711x_gpio_data* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @get_count_order(i32) #1

declare dso_local i32 @devm_gpiod_get_index(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.input_polled_dev* @input_allocate_polled_device(...) #1

declare dso_local i32 @matrix_keypad_build_keymap(i32*, i32*, i32, i32, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.input_polled_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SYSCON1_KBDSCAN(i32) #1

declare dso_local i32 @input_register_polled_device(%struct.input_polled_dev*) #1

declare dso_local i32 @input_free_polled_device(%struct.input_polled_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
