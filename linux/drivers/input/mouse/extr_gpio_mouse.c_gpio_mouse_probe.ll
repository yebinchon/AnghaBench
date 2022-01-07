; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_gpio_mouse.c_gpio_mouse_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_gpio_mouse.c_gpio_mouse_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device, i32 }
%struct.device = type { i32 }
%struct.gpio_mouse = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.input_polled_dev = type { i32, %struct.input_dev*, i32, %struct.gpio_mouse* }
%struct.input_dev = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { %struct.device* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"scan-interval-ms\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"invalid scan time, set to 50 ms\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"button-left\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"button-middle\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"button-right\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"not enough memory for input device\0A\00", align 1
@gpio_mouse_scan = common dso_local global i32 0, align 4
@BUS_HOST = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"could not register input device\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"%d ms scan time, buttons: %s%s%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"left \00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"middle \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpio_mouse_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_mouse_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.gpio_mouse*, align 8
  %6 = alloca %struct.input_polled_dev*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.gpio_mouse* @devm_kzalloc(%struct.device* %11, i32 64, i32 %12)
  store %struct.gpio_mouse* %13, %struct.gpio_mouse** %5, align 8
  %14 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %15 = icmp ne %struct.gpio_mouse* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %260

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %22 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %21, i32 0, i32 0
  %23 = call i32 @device_property_read_u32(%struct.device* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %19
  %27 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %28 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26, %19
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 @dev_warn(%struct.device* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %35 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %34, i32 0, i32 0
  store i32 50, i32* %35, align 8
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load i32, i32* @GPIOD_IN, align 4
  %39 = call i8* @devm_gpiod_get(%struct.device* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %41 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %40, i32 0, i32 7
  store i8* %39, i8** %41, align 8
  %42 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %43 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %42, i32 0, i32 7
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @IS_ERR(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %36
  %48 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %49 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %48, i32 0, i32 7
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @PTR_ERR(i8* %50)
  store i32 %51, i32* %2, align 4
  br label %260

52:                                               ; preds = %36
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load i32, i32* @GPIOD_IN, align 4
  %55 = call i8* @devm_gpiod_get(%struct.device* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %57 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %56, i32 0, i32 6
  store i8* %55, i8** %57, align 8
  %58 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %59 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %58, i32 0, i32 6
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @IS_ERR(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %52
  %64 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %65 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %64, i32 0, i32 6
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @PTR_ERR(i8* %66)
  store i32 %67, i32* %2, align 4
  br label %260

68:                                               ; preds = %52
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = load i32, i32* @GPIOD_IN, align 4
  %71 = call i8* @devm_gpiod_get(%struct.device* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %72 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %73 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  %74 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %75 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %74, i32 0, i32 5
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @IS_ERR(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %68
  %80 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %81 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %80, i32 0, i32 5
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @PTR_ERR(i8* %82)
  store i32 %83, i32* %2, align 4
  br label %260

84:                                               ; preds = %68
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load i32, i32* @GPIOD_IN, align 4
  %87 = call i8* @devm_gpiod_get(%struct.device* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  %88 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %89 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %91 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %90, i32 0, i32 4
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @IS_ERR(i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %84
  %96 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %97 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %96, i32 0, i32 4
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @PTR_ERR(i8* %98)
  store i32 %99, i32* %2, align 4
  br label %260

100:                                              ; preds = %84
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = load i32, i32* @GPIOD_IN, align 4
  %103 = call i8* @devm_gpiod_get_optional(%struct.device* %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %102)
  %104 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %105 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  %106 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %107 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %106, i32 0, i32 3
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @IS_ERR(i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %100
  %112 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %113 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %112, i32 0, i32 3
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @PTR_ERR(i8* %114)
  store i32 %115, i32* %2, align 4
  br label %260

116:                                              ; preds = %100
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = load i32, i32* @GPIOD_IN, align 4
  %119 = call i8* @devm_gpiod_get_optional(%struct.device* %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %118)
  %120 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %121 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %120, i32 0, i32 2
  store i8* %119, i8** %121, align 8
  %122 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %123 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = call i64 @IS_ERR(i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %116
  %128 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %129 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %128, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @PTR_ERR(i8* %130)
  store i32 %131, i32* %2, align 4
  br label %260

132:                                              ; preds = %116
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = load i32, i32* @GPIOD_IN, align 4
  %135 = call i8* @devm_gpiod_get_optional(%struct.device* %133, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %134)
  %136 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %137 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  %138 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %139 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = call i64 @IS_ERR(i8* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %132
  %144 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %145 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @PTR_ERR(i8* %146)
  store i32 %147, i32* %2, align 4
  br label %260

148:                                              ; preds = %132
  %149 = load %struct.device*, %struct.device** %4, align 8
  %150 = call %struct.input_polled_dev* @devm_input_allocate_polled_device(%struct.device* %149)
  store %struct.input_polled_dev* %150, %struct.input_polled_dev** %6, align 8
  %151 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %152 = icmp ne %struct.input_polled_dev* %151, null
  br i1 %152, label %158, label %153

153:                                              ; preds = %148
  %154 = load %struct.device*, %struct.device** %4, align 8
  %155 = call i32 @dev_err(%struct.device* %154, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %2, align 4
  br label %260

158:                                              ; preds = %148
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %161 = call i32 @platform_set_drvdata(%struct.platform_device* %159, %struct.input_polled_dev* %160)
  %162 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %163 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %164 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %163, i32 0, i32 3
  store %struct.gpio_mouse* %162, %struct.gpio_mouse** %164, align 8
  %165 = load i32, i32* @gpio_mouse_scan, align 4
  %166 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %167 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  %168 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %169 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %172 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %174 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %173, i32 0, i32 1
  %175 = load %struct.input_dev*, %struct.input_dev** %174, align 8
  store %struct.input_dev* %175, %struct.input_dev** %7, align 8
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %180 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* @BUS_HOST, align 4
  %182 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %183 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  store i32 %181, i32* %184, align 8
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %185, i32 0, i32 0
  %187 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %188 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  store %struct.device* %186, %struct.device** %189, align 8
  %190 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %191 = load i32, i32* @EV_REL, align 4
  %192 = load i32, i32* @REL_X, align 4
  %193 = call i32 @input_set_capability(%struct.input_dev* %190, i32 %191, i32 %192)
  %194 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %195 = load i32, i32* @EV_REL, align 4
  %196 = load i32, i32* @REL_Y, align 4
  %197 = call i32 @input_set_capability(%struct.input_dev* %194, i32 %195, i32 %196)
  %198 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %199 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %198, i32 0, i32 3
  %200 = load i8*, i8** %199, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %207

202:                                              ; preds = %158
  %203 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %204 = load i32, i32* @EV_KEY, align 4
  %205 = load i32, i32* @BTN_LEFT, align 4
  %206 = call i32 @input_set_capability(%struct.input_dev* %203, i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %202, %158
  %208 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %209 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %208, i32 0, i32 2
  %210 = load i8*, i8** %209, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %217

212:                                              ; preds = %207
  %213 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %214 = load i32, i32* @EV_KEY, align 4
  %215 = load i32, i32* @BTN_MIDDLE, align 4
  %216 = call i32 @input_set_capability(%struct.input_dev* %213, i32 %214, i32 %215)
  br label %217

217:                                              ; preds = %212, %207
  %218 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %219 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %218, i32 0, i32 1
  %220 = load i8*, i8** %219, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %227

222:                                              ; preds = %217
  %223 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %224 = load i32, i32* @EV_KEY, align 4
  %225 = load i32, i32* @BTN_RIGHT, align 4
  %226 = call i32 @input_set_capability(%struct.input_dev* %223, i32 %224, i32 %225)
  br label %227

227:                                              ; preds = %222, %217
  %228 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %229 = call i32 @input_register_polled_device(%struct.input_polled_dev* %228)
  store i32 %229, i32* %8, align 4
  %230 = load i32, i32* %8, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %227
  %233 = load %struct.device*, %struct.device** %4, align 8
  %234 = call i32 @dev_err(%struct.device* %233, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %235 = load i32, i32* %8, align 4
  store i32 %235, i32* %2, align 4
  br label %260

236:                                              ; preds = %227
  %237 = load %struct.device*, %struct.device** %4, align 8
  %238 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %239 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %242 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %241, i32 0, i32 3
  %243 = load i8*, i8** %242, align 8
  %244 = icmp ne i8* %243, null
  %245 = zext i1 %244 to i64
  %246 = select i1 %244, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0)
  %247 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %248 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %247, i32 0, i32 2
  %249 = load i8*, i8** %248, align 8
  %250 = icmp ne i8* %249, null
  %251 = zext i1 %250 to i64
  %252 = select i1 %250, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0)
  %253 = load %struct.gpio_mouse*, %struct.gpio_mouse** %5, align 8
  %254 = getelementptr inbounds %struct.gpio_mouse, %struct.gpio_mouse* %253, i32 0, i32 1
  %255 = load i8*, i8** %254, align 8
  %256 = icmp ne i8* %255, null
  %257 = zext i1 %256 to i64
  %258 = select i1 %256, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %259 = call i32 @dev_dbg(%struct.device* %237, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %240, i8* %246, i8* %252, i8* %258)
  store i32 0, i32* %2, align 4
  br label %260

260:                                              ; preds = %236, %232, %153, %143, %127, %111, %95, %79, %63, %47, %16
  %261 = load i32, i32* %2, align 4
  ret i32 %261
}

declare dso_local %struct.gpio_mouse* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local %struct.input_polled_dev* @devm_input_allocate_polled_device(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.input_polled_dev*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_register_polled_device(%struct.input_polled_dev*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
