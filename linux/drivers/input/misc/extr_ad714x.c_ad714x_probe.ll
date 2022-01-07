; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad714x_chip = type { i32, i32, i32, %struct.ad714x_platform_data*, i32, %struct.device*, i32, i32, %struct.TYPE_6__* }
%struct.ad714x_platform_data = type { i32, i32, i32, i32, i64, %struct.ad714x_button_plat*, %struct.ad714x_touchpad_plat*, %struct.ad714x_wheel_plat*, %struct.ad714x_slider_plat* }
%struct.ad714x_button_plat = type { i32 }
%struct.ad714x_touchpad_plat = type { i32, i32 }
%struct.ad714x_wheel_plat = type { i32 }
%struct.ad714x_slider_plat = type { i32 }
%struct.TYPE_6__ = type { %struct.ad714x_button_drv*, %struct.ad714x_touchpad_drv*, %struct.ad714x_wheel_drv*, %struct.ad714x_slider_drv* }
%struct.ad714x_button_drv = type { %struct.input_dev* }
%struct.input_dev = type { i8*, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.device* }
%struct.TYPE_4__ = type { i32, i32, i8* }
%struct.ad714x_touchpad_drv = type { %struct.input_dev* }
%struct.ad714x_wheel_drv = type { %struct.input_dev* }
%struct.ad714x_slider_drv = type { %struct.input_dev* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"IRQ not configured!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"platform data for ad714x doesn't exist\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"ad714x_captouch_slider\00", align 1
@ABS_WHEEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"ad714x_captouch_wheel\00", align 1
@ABS_Y = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"ad714x_captouch_pad\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"ad714x_captouch_button\00", align 1
@IRQF_TRIGGER_FALLING = common dso_local global i64 0, align 8
@IRQF_ONESHOT = common dso_local global i64 0, align 8
@ad714x_interrupt_thread = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"ad714x_captouch\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"can't allocate irq %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ad714x_chip* @ad714x_probe(%struct.device* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ad714x_chip*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.input_dev*, align 8
  %15 = alloca %struct.ad714x_platform_data*, align 8
  %16 = alloca %struct.ad714x_chip*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.ad714x_button_drv*, align 8
  %20 = alloca %struct.ad714x_slider_drv*, align 8
  %21 = alloca %struct.ad714x_wheel_drv*, align 8
  %22 = alloca %struct.ad714x_touchpad_drv*, align 8
  %23 = alloca %struct.ad714x_slider_plat*, align 8
  %24 = alloca %struct.ad714x_wheel_plat*, align 8
  %25 = alloca %struct.ad714x_touchpad_plat*, align 8
  %26 = alloca %struct.ad714x_button_plat*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = call %struct.ad714x_platform_data* @dev_get_platdata(%struct.device* %27)
  store %struct.ad714x_platform_data* %28, %struct.ad714x_platform_data** %15, align 8
  %29 = load i32, i32* %9, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %5
  %32 = load %struct.device*, %struct.device** %7, align 8
  %33 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call %struct.ad714x_chip* @ERR_PTR(i32 %36)
  store %struct.ad714x_chip* %37, %struct.ad714x_chip** %6, align 8
  br label %604

38:                                               ; preds = %5
  %39 = load %struct.device*, %struct.device** %7, align 8
  %40 = call %struct.ad714x_platform_data* @dev_get_platdata(%struct.device* %39)
  %41 = icmp eq %struct.ad714x_platform_data* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call %struct.ad714x_chip* @ERR_PTR(i32 %47)
  store %struct.ad714x_chip* %48, %struct.ad714x_chip** %6, align 8
  br label %604

49:                                               ; preds = %38
  %50 = load %struct.device*, %struct.device** %7, align 8
  %51 = load %struct.ad714x_platform_data*, %struct.ad714x_platform_data** %15, align 8
  %52 = getelementptr inbounds %struct.ad714x_platform_data, %struct.ad714x_platform_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = mul i64 8, %54
  %56 = add i64 88, %55
  %57 = load %struct.ad714x_platform_data*, %struct.ad714x_platform_data** %15, align 8
  %58 = getelementptr inbounds %struct.ad714x_platform_data, %struct.ad714x_platform_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 8, %60
  %62 = add i64 %56, %61
  %63 = load %struct.ad714x_platform_data*, %struct.ad714x_platform_data** %15, align 8
  %64 = getelementptr inbounds %struct.ad714x_platform_data, %struct.ad714x_platform_data* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = mul i64 8, %66
  %68 = add i64 %62, %67
  %69 = load %struct.ad714x_platform_data*, %struct.ad714x_platform_data** %15, align 8
  %70 = getelementptr inbounds %struct.ad714x_platform_data, %struct.ad714x_platform_data* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 8, %72
  %74 = add i64 %68, %73
  %75 = trunc i64 %74 to i32
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call %struct.ad714x_chip* @devm_kzalloc(%struct.device* %50, i32 %75, i32 %76)
  store %struct.ad714x_chip* %77, %struct.ad714x_chip** %16, align 8
  %78 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %79 = icmp ne %struct.ad714x_chip* %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %49
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call %struct.ad714x_chip* @ERR_PTR(i32 %83)
  store %struct.ad714x_chip* %84, %struct.ad714x_chip** %6, align 8
  br label %604

85:                                               ; preds = %49
  %86 = load %struct.ad714x_platform_data*, %struct.ad714x_platform_data** %15, align 8
  %87 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %88 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %87, i32 0, i32 3
  store %struct.ad714x_platform_data* %86, %struct.ad714x_platform_data** %88, align 8
  %89 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %90 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %89, i64 1
  %91 = bitcast %struct.ad714x_chip* %90 to i8*
  store i8* %91, i8** %17, align 8
  %92 = load i8*, i8** %17, align 8
  %93 = bitcast i8* %92 to %struct.TYPE_6__*
  %94 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %95 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %94, i32 0, i32 8
  store %struct.TYPE_6__* %93, %struct.TYPE_6__** %95, align 8
  %96 = load i8*, i8** %17, align 8
  %97 = getelementptr i8, i8* %96, i64 32
  store i8* %97, i8** %17, align 8
  %98 = load i8*, i8** %17, align 8
  %99 = bitcast i8* %98 to %struct.ad714x_slider_drv*
  store %struct.ad714x_slider_drv* %99, %struct.ad714x_slider_drv** %20, align 8
  %100 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %101 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %100, i32 0, i32 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 3
  store %struct.ad714x_slider_drv* %99, %struct.ad714x_slider_drv** %103, align 8
  %104 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %105 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %104, i32 0, i32 3
  %106 = load %struct.ad714x_platform_data*, %struct.ad714x_platform_data** %105, align 8
  %107 = getelementptr inbounds %struct.ad714x_platform_data, %struct.ad714x_platform_data* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = mul i64 8, %109
  %111 = load i8*, i8** %17, align 8
  %112 = getelementptr i8, i8* %111, i64 %110
  store i8* %112, i8** %17, align 8
  %113 = load i8*, i8** %17, align 8
  %114 = bitcast i8* %113 to %struct.ad714x_wheel_drv*
  store %struct.ad714x_wheel_drv* %114, %struct.ad714x_wheel_drv** %21, align 8
  %115 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %116 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %115, i32 0, i32 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  store %struct.ad714x_wheel_drv* %114, %struct.ad714x_wheel_drv** %118, align 8
  %119 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %120 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %119, i32 0, i32 3
  %121 = load %struct.ad714x_platform_data*, %struct.ad714x_platform_data** %120, align 8
  %122 = getelementptr inbounds %struct.ad714x_platform_data, %struct.ad714x_platform_data* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = mul i64 8, %124
  %126 = load i8*, i8** %17, align 8
  %127 = getelementptr i8, i8* %126, i64 %125
  store i8* %127, i8** %17, align 8
  %128 = load i8*, i8** %17, align 8
  %129 = bitcast i8* %128 to %struct.ad714x_touchpad_drv*
  store %struct.ad714x_touchpad_drv* %129, %struct.ad714x_touchpad_drv** %22, align 8
  %130 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %131 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %130, i32 0, i32 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  store %struct.ad714x_touchpad_drv* %129, %struct.ad714x_touchpad_drv** %133, align 8
  %134 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %135 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %134, i32 0, i32 3
  %136 = load %struct.ad714x_platform_data*, %struct.ad714x_platform_data** %135, align 8
  %137 = getelementptr inbounds %struct.ad714x_platform_data, %struct.ad714x_platform_data* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = mul i64 8, %139
  %141 = load i8*, i8** %17, align 8
  %142 = getelementptr i8, i8* %141, i64 %140
  store i8* %142, i8** %17, align 8
  %143 = load i8*, i8** %17, align 8
  %144 = bitcast i8* %143 to %struct.ad714x_button_drv*
  store %struct.ad714x_button_drv* %144, %struct.ad714x_button_drv** %19, align 8
  %145 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %146 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %145, i32 0, i32 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  store %struct.ad714x_button_drv* %144, %struct.ad714x_button_drv** %148, align 8
  %149 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %150 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %149, i32 0, i32 3
  %151 = load %struct.ad714x_platform_data*, %struct.ad714x_platform_data** %150, align 8
  %152 = getelementptr inbounds %struct.ad714x_platform_data, %struct.ad714x_platform_data* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = mul i64 8, %154
  %156 = load i8*, i8** %17, align 8
  %157 = getelementptr i8, i8* %156, i64 %155
  store i8* %157, i8** %17, align 8
  %158 = load i32, i32* %10, align 4
  %159 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %160 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %159, i32 0, i32 7
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %163 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %162, i32 0, i32 6
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* %9, align 4
  %165 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %166 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  %167 = load %struct.device*, %struct.device** %7, align 8
  %168 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %169 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %168, i32 0, i32 5
  store %struct.device* %167, %struct.device** %169, align 8
  %170 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %171 = call i32 @ad714x_hw_detect(%struct.ad714x_chip* %170)
  store i32 %171, i32* %13, align 4
  %172 = load i32, i32* %13, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %85
  %175 = load i32, i32* %13, align 4
  %176 = call %struct.ad714x_chip* @ERR_PTR(i32 %175)
  store %struct.ad714x_chip* %176, %struct.ad714x_chip** %6, align 8
  br label %604

177:                                              ; preds = %85
  %178 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %179 = call i32 @ad714x_hw_init(%struct.ad714x_chip* %178)
  %180 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %181 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %180, i32 0, i32 4
  %182 = call i32 @mutex_init(i32* %181)
  %183 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %184 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %183, i32 0, i32 3
  %185 = load %struct.ad714x_platform_data*, %struct.ad714x_platform_data** %184, align 8
  %186 = getelementptr inbounds %struct.ad714x_platform_data, %struct.ad714x_platform_data* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %279

189:                                              ; preds = %177
  %190 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %191 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %190, i32 0, i32 3
  %192 = load %struct.ad714x_platform_data*, %struct.ad714x_platform_data** %191, align 8
  %193 = getelementptr inbounds %struct.ad714x_platform_data, %struct.ad714x_platform_data* %192, i32 0, i32 8
  %194 = load %struct.ad714x_slider_plat*, %struct.ad714x_slider_plat** %193, align 8
  store %struct.ad714x_slider_plat* %194, %struct.ad714x_slider_plat** %23, align 8
  store i32 0, i32* %12, align 4
  br label %195

195:                                              ; preds = %275, %189
  %196 = load i32, i32* %12, align 4
  %197 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %198 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %197, i32 0, i32 3
  %199 = load %struct.ad714x_platform_data*, %struct.ad714x_platform_data** %198, align 8
  %200 = getelementptr inbounds %struct.ad714x_platform_data, %struct.ad714x_platform_data* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp slt i32 %196, %201
  br i1 %202, label %203, label %278

203:                                              ; preds = %195
  %204 = load %struct.device*, %struct.device** %7, align 8
  %205 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %204)
  store %struct.input_dev* %205, %struct.input_dev** %14, align 8
  %206 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %207 = icmp ne %struct.input_dev* %206, null
  br i1 %207, label %212, label %208

208:                                              ; preds = %203
  %209 = load i32, i32* @ENOMEM, align 4
  %210 = sub nsw i32 0, %209
  %211 = call %struct.ad714x_chip* @ERR_PTR(i32 %210)
  store %struct.ad714x_chip* %211, %struct.ad714x_chip** %6, align 8
  br label %604

212:                                              ; preds = %203
  %213 = load i32, i32* @EV_ABS, align 4
  %214 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %215 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @__set_bit(i32 %213, i32 %216)
  %218 = load i32, i32* @EV_KEY, align 4
  %219 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %220 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @__set_bit(i32 %218, i32 %221)
  %223 = load i32, i32* @ABS_X, align 4
  %224 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %225 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @__set_bit(i32 %223, i32 %226)
  %228 = load i32, i32* @BTN_TOUCH, align 4
  %229 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %230 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @__set_bit(i32 %228, i32 %231)
  %233 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %234 = load i32, i32* @ABS_X, align 4
  %235 = load %struct.ad714x_slider_plat*, %struct.ad714x_slider_plat** %23, align 8
  %236 = getelementptr inbounds %struct.ad714x_slider_plat, %struct.ad714x_slider_plat* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @input_set_abs_params(%struct.input_dev* %233, i32 %234, i32 0, i32 %237, i32 0, i32 0)
  %239 = load i8*, i8** %8, align 8
  %240 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %241 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 2
  store i8* %239, i8** %242, align 8
  %243 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %244 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %247 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 1
  store i32 %245, i32* %248, align 4
  %249 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %250 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %253 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 0
  store i32 %251, i32* %254, align 8
  %255 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %256 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %255, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %256, align 8
  %257 = load %struct.device*, %struct.device** %7, align 8
  %258 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %259 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 0
  store %struct.device* %257, %struct.device** %260, align 8
  %261 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %262 = call i32 @input_register_device(%struct.input_dev* %261)
  store i32 %262, i32* %13, align 4
  %263 = load i32, i32* %13, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %212
  %266 = load i32, i32* %13, align 4
  %267 = call %struct.ad714x_chip* @ERR_PTR(i32 %266)
  store %struct.ad714x_chip* %267, %struct.ad714x_chip** %6, align 8
  br label %604

268:                                              ; preds = %212
  %269 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %270 = load %struct.ad714x_slider_drv*, %struct.ad714x_slider_drv** %20, align 8
  %271 = load i32, i32* %12, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.ad714x_slider_drv, %struct.ad714x_slider_drv* %270, i64 %272
  %274 = getelementptr inbounds %struct.ad714x_slider_drv, %struct.ad714x_slider_drv* %273, i32 0, i32 0
  store %struct.input_dev* %269, %struct.input_dev** %274, align 8
  br label %275

275:                                              ; preds = %268
  %276 = load i32, i32* %12, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %12, align 4
  br label %195

278:                                              ; preds = %195
  br label %279

279:                                              ; preds = %278, %177
  %280 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %281 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %280, i32 0, i32 3
  %282 = load %struct.ad714x_platform_data*, %struct.ad714x_platform_data** %281, align 8
  %283 = getelementptr inbounds %struct.ad714x_platform_data, %struct.ad714x_platform_data* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = icmp sgt i32 %284, 0
  br i1 %285, label %286, label %376

286:                                              ; preds = %279
  %287 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %288 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %287, i32 0, i32 3
  %289 = load %struct.ad714x_platform_data*, %struct.ad714x_platform_data** %288, align 8
  %290 = getelementptr inbounds %struct.ad714x_platform_data, %struct.ad714x_platform_data* %289, i32 0, i32 7
  %291 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %290, align 8
  store %struct.ad714x_wheel_plat* %291, %struct.ad714x_wheel_plat** %24, align 8
  store i32 0, i32* %12, align 4
  br label %292

292:                                              ; preds = %372, %286
  %293 = load i32, i32* %12, align 4
  %294 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %295 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %294, i32 0, i32 3
  %296 = load %struct.ad714x_platform_data*, %struct.ad714x_platform_data** %295, align 8
  %297 = getelementptr inbounds %struct.ad714x_platform_data, %struct.ad714x_platform_data* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = icmp slt i32 %293, %298
  br i1 %299, label %300, label %375

300:                                              ; preds = %292
  %301 = load %struct.device*, %struct.device** %7, align 8
  %302 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %301)
  store %struct.input_dev* %302, %struct.input_dev** %14, align 8
  %303 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %304 = icmp ne %struct.input_dev* %303, null
  br i1 %304, label %309, label %305

305:                                              ; preds = %300
  %306 = load i32, i32* @ENOMEM, align 4
  %307 = sub nsw i32 0, %306
  %308 = call %struct.ad714x_chip* @ERR_PTR(i32 %307)
  store %struct.ad714x_chip* %308, %struct.ad714x_chip** %6, align 8
  br label %604

309:                                              ; preds = %300
  %310 = load i32, i32* @EV_KEY, align 4
  %311 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %312 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %311, i32 0, i32 4
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @__set_bit(i32 %310, i32 %313)
  %315 = load i32, i32* @EV_ABS, align 4
  %316 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %317 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @__set_bit(i32 %315, i32 %318)
  %320 = load i32, i32* @ABS_WHEEL, align 4
  %321 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %322 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %321, i32 0, i32 5
  %323 = load i32, i32* %322, align 8
  %324 = call i32 @__set_bit(i32 %320, i32 %323)
  %325 = load i32, i32* @BTN_TOUCH, align 4
  %326 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %327 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @__set_bit(i32 %325, i32 %328)
  %330 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %331 = load i32, i32* @ABS_WHEEL, align 4
  %332 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %24, align 8
  %333 = getelementptr inbounds %struct.ad714x_wheel_plat, %struct.ad714x_wheel_plat* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @input_set_abs_params(%struct.input_dev* %330, i32 %331, i32 0, i32 %334, i32 0, i32 0)
  %336 = load i8*, i8** %8, align 8
  %337 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %338 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %337, i32 0, i32 2
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 2
  store i8* %336, i8** %339, align 8
  %340 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %341 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %344 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %343, i32 0, i32 2
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 1
  store i32 %342, i32* %345, align 4
  %346 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %347 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %350 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %349, i32 0, i32 2
  %351 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %350, i32 0, i32 0
  store i32 %348, i32* %351, align 8
  %352 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %353 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %352, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %353, align 8
  %354 = load %struct.device*, %struct.device** %7, align 8
  %355 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %356 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 0
  store %struct.device* %354, %struct.device** %357, align 8
  %358 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %359 = call i32 @input_register_device(%struct.input_dev* %358)
  store i32 %359, i32* %13, align 4
  %360 = load i32, i32* %13, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %309
  %363 = load i32, i32* %13, align 4
  %364 = call %struct.ad714x_chip* @ERR_PTR(i32 %363)
  store %struct.ad714x_chip* %364, %struct.ad714x_chip** %6, align 8
  br label %604

365:                                              ; preds = %309
  %366 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %367 = load %struct.ad714x_wheel_drv*, %struct.ad714x_wheel_drv** %21, align 8
  %368 = load i32, i32* %12, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.ad714x_wheel_drv, %struct.ad714x_wheel_drv* %367, i64 %369
  %371 = getelementptr inbounds %struct.ad714x_wheel_drv, %struct.ad714x_wheel_drv* %370, i32 0, i32 0
  store %struct.input_dev* %366, %struct.input_dev** %371, align 8
  br label %372

372:                                              ; preds = %365
  %373 = load i32, i32* %12, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %12, align 4
  br label %292

375:                                              ; preds = %292
  br label %376

376:                                              ; preds = %375, %279
  %377 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %378 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %377, i32 0, i32 3
  %379 = load %struct.ad714x_platform_data*, %struct.ad714x_platform_data** %378, align 8
  %380 = getelementptr inbounds %struct.ad714x_platform_data, %struct.ad714x_platform_data* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 8
  %382 = icmp sgt i32 %381, 0
  br i1 %382, label %383, label %484

383:                                              ; preds = %376
  %384 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %385 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %384, i32 0, i32 3
  %386 = load %struct.ad714x_platform_data*, %struct.ad714x_platform_data** %385, align 8
  %387 = getelementptr inbounds %struct.ad714x_platform_data, %struct.ad714x_platform_data* %386, i32 0, i32 6
  %388 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %387, align 8
  store %struct.ad714x_touchpad_plat* %388, %struct.ad714x_touchpad_plat** %25, align 8
  store i32 0, i32* %12, align 4
  br label %389

389:                                              ; preds = %480, %383
  %390 = load i32, i32* %12, align 4
  %391 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %392 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %391, i32 0, i32 3
  %393 = load %struct.ad714x_platform_data*, %struct.ad714x_platform_data** %392, align 8
  %394 = getelementptr inbounds %struct.ad714x_platform_data, %struct.ad714x_platform_data* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 8
  %396 = icmp slt i32 %390, %395
  br i1 %396, label %397, label %483

397:                                              ; preds = %389
  %398 = load %struct.device*, %struct.device** %7, align 8
  %399 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %398)
  store %struct.input_dev* %399, %struct.input_dev** %14, align 8
  %400 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %401 = icmp ne %struct.input_dev* %400, null
  br i1 %401, label %406, label %402

402:                                              ; preds = %397
  %403 = load i32, i32* @ENOMEM, align 4
  %404 = sub nsw i32 0, %403
  %405 = call %struct.ad714x_chip* @ERR_PTR(i32 %404)
  store %struct.ad714x_chip* %405, %struct.ad714x_chip** %6, align 8
  br label %604

406:                                              ; preds = %397
  %407 = load i32, i32* @EV_ABS, align 4
  %408 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %409 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %408, i32 0, i32 4
  %410 = load i32, i32* %409, align 4
  %411 = call i32 @__set_bit(i32 %407, i32 %410)
  %412 = load i32, i32* @EV_KEY, align 4
  %413 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %414 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %413, i32 0, i32 4
  %415 = load i32, i32* %414, align 4
  %416 = call i32 @__set_bit(i32 %412, i32 %415)
  %417 = load i32, i32* @ABS_X, align 4
  %418 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %419 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %418, i32 0, i32 5
  %420 = load i32, i32* %419, align 8
  %421 = call i32 @__set_bit(i32 %417, i32 %420)
  %422 = load i32, i32* @ABS_Y, align 4
  %423 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %424 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %423, i32 0, i32 5
  %425 = load i32, i32* %424, align 8
  %426 = call i32 @__set_bit(i32 %422, i32 %425)
  %427 = load i32, i32* @BTN_TOUCH, align 4
  %428 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %429 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %428, i32 0, i32 3
  %430 = load i32, i32* %429, align 8
  %431 = call i32 @__set_bit(i32 %427, i32 %430)
  %432 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %433 = load i32, i32* @ABS_X, align 4
  %434 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %25, align 8
  %435 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 4
  %437 = call i32 @input_set_abs_params(%struct.input_dev* %432, i32 %433, i32 0, i32 %436, i32 0, i32 0)
  %438 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %439 = load i32, i32* @ABS_Y, align 4
  %440 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %25, align 8
  %441 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  %443 = call i32 @input_set_abs_params(%struct.input_dev* %438, i32 %439, i32 0, i32 %442, i32 0, i32 0)
  %444 = load i8*, i8** %8, align 8
  %445 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %446 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %445, i32 0, i32 2
  %447 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %446, i32 0, i32 2
  store i8* %444, i8** %447, align 8
  %448 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %449 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %448, i32 0, i32 2
  %450 = load i32, i32* %449, align 8
  %451 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %452 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %451, i32 0, i32 2
  %453 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %452, i32 0, i32 1
  store i32 %450, i32* %453, align 4
  %454 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %455 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 4
  %457 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %458 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %457, i32 0, i32 2
  %459 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %458, i32 0, i32 0
  store i32 %456, i32* %459, align 8
  %460 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %461 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %460, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %461, align 8
  %462 = load %struct.device*, %struct.device** %7, align 8
  %463 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %464 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %463, i32 0, i32 1
  %465 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %464, i32 0, i32 0
  store %struct.device* %462, %struct.device** %465, align 8
  %466 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %467 = call i32 @input_register_device(%struct.input_dev* %466)
  store i32 %467, i32* %13, align 4
  %468 = load i32, i32* %13, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %473

470:                                              ; preds = %406
  %471 = load i32, i32* %13, align 4
  %472 = call %struct.ad714x_chip* @ERR_PTR(i32 %471)
  store %struct.ad714x_chip* %472, %struct.ad714x_chip** %6, align 8
  br label %604

473:                                              ; preds = %406
  %474 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %475 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %22, align 8
  %476 = load i32, i32* %12, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %475, i64 %477
  %479 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %478, i32 0, i32 0
  store %struct.input_dev* %474, %struct.input_dev** %479, align 8
  br label %480

480:                                              ; preds = %473
  %481 = load i32, i32* %12, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %12, align 4
  br label %389

483:                                              ; preds = %389
  br label %484

484:                                              ; preds = %483, %376
  %485 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %486 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %485, i32 0, i32 3
  %487 = load %struct.ad714x_platform_data*, %struct.ad714x_platform_data** %486, align 8
  %488 = getelementptr inbounds %struct.ad714x_platform_data, %struct.ad714x_platform_data* %487, i32 0, i32 3
  %489 = load i32, i32* %488, align 4
  %490 = icmp sgt i32 %489, 0
  br i1 %490, label %491, label %571

491:                                              ; preds = %484
  %492 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %493 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %492, i32 0, i32 3
  %494 = load %struct.ad714x_platform_data*, %struct.ad714x_platform_data** %493, align 8
  %495 = getelementptr inbounds %struct.ad714x_platform_data, %struct.ad714x_platform_data* %494, i32 0, i32 5
  %496 = load %struct.ad714x_button_plat*, %struct.ad714x_button_plat** %495, align 8
  store %struct.ad714x_button_plat* %496, %struct.ad714x_button_plat** %26, align 8
  %497 = load %struct.device*, %struct.device** %7, align 8
  %498 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %497)
  store %struct.input_dev* %498, %struct.input_dev** %14, align 8
  %499 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %500 = icmp ne %struct.input_dev* %499, null
  br i1 %500, label %506, label %501

501:                                              ; preds = %491
  %502 = load i32, i32* @ENOMEM, align 4
  %503 = sub nsw i32 0, %502
  store i32 %503, i32* %13, align 4
  %504 = load i32, i32* %13, align 4
  %505 = call %struct.ad714x_chip* @ERR_PTR(i32 %504)
  store %struct.ad714x_chip* %505, %struct.ad714x_chip** %6, align 8
  br label %604

506:                                              ; preds = %491
  %507 = load i32, i32* @EV_KEY, align 4
  %508 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %509 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %508, i32 0, i32 4
  %510 = load i32, i32* %509, align 4
  %511 = call i32 @__set_bit(i32 %507, i32 %510)
  store i32 0, i32* %12, align 4
  br label %512

512:                                              ; preds = %537, %506
  %513 = load i32, i32* %12, align 4
  %514 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %515 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %514, i32 0, i32 3
  %516 = load %struct.ad714x_platform_data*, %struct.ad714x_platform_data** %515, align 8
  %517 = getelementptr inbounds %struct.ad714x_platform_data, %struct.ad714x_platform_data* %516, i32 0, i32 3
  %518 = load i32, i32* %517, align 4
  %519 = icmp slt i32 %513, %518
  br i1 %519, label %520, label %540

520:                                              ; preds = %512
  %521 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %522 = load %struct.ad714x_button_drv*, %struct.ad714x_button_drv** %19, align 8
  %523 = load i32, i32* %12, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds %struct.ad714x_button_drv, %struct.ad714x_button_drv* %522, i64 %524
  %526 = getelementptr inbounds %struct.ad714x_button_drv, %struct.ad714x_button_drv* %525, i32 0, i32 0
  store %struct.input_dev* %521, %struct.input_dev** %526, align 8
  %527 = load %struct.ad714x_button_plat*, %struct.ad714x_button_plat** %26, align 8
  %528 = load i32, i32* %12, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds %struct.ad714x_button_plat, %struct.ad714x_button_plat* %527, i64 %529
  %531 = getelementptr inbounds %struct.ad714x_button_plat, %struct.ad714x_button_plat* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 4
  %533 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %534 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %533, i32 0, i32 3
  %535 = load i32, i32* %534, align 8
  %536 = call i32 @__set_bit(i32 %532, i32 %535)
  br label %537

537:                                              ; preds = %520
  %538 = load i32, i32* %12, align 4
  %539 = add nsw i32 %538, 1
  store i32 %539, i32* %12, align 4
  br label %512

540:                                              ; preds = %512
  %541 = load i8*, i8** %8, align 8
  %542 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %543 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %542, i32 0, i32 2
  %544 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %543, i32 0, i32 2
  store i8* %541, i8** %544, align 8
  %545 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %546 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %545, i32 0, i32 2
  %547 = load i32, i32* %546, align 8
  %548 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %549 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %548, i32 0, i32 2
  %550 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %549, i32 0, i32 1
  store i32 %547, i32* %550, align 4
  %551 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %552 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %551, i32 0, i32 1
  %553 = load i32, i32* %552, align 4
  %554 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %555 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %554, i32 0, i32 2
  %556 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %555, i32 0, i32 0
  store i32 %553, i32* %556, align 8
  %557 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %558 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %557, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8** %558, align 8
  %559 = load %struct.device*, %struct.device** %7, align 8
  %560 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %561 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %560, i32 0, i32 1
  %562 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %561, i32 0, i32 0
  store %struct.device* %559, %struct.device** %562, align 8
  %563 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %564 = call i32 @input_register_device(%struct.input_dev* %563)
  store i32 %564, i32* %13, align 4
  %565 = load i32, i32* %13, align 4
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %570

567:                                              ; preds = %540
  %568 = load i32, i32* %13, align 4
  %569 = call %struct.ad714x_chip* @ERR_PTR(i32 %568)
  store %struct.ad714x_chip* %569, %struct.ad714x_chip** %6, align 8
  br label %604

570:                                              ; preds = %540
  br label %571

571:                                              ; preds = %570, %484
  %572 = load %struct.ad714x_platform_data*, %struct.ad714x_platform_data** %15, align 8
  %573 = getelementptr inbounds %struct.ad714x_platform_data, %struct.ad714x_platform_data* %572, i32 0, i32 4
  %574 = load i64, i64* %573, align 8
  %575 = icmp ne i64 %574, 0
  br i1 %575, label %576, label %577

576:                                              ; preds = %571
  br label %579

577:                                              ; preds = %571
  %578 = load i64, i64* @IRQF_TRIGGER_FALLING, align 8
  br label %579

579:                                              ; preds = %577, %576
  %580 = phi i64 [ %574, %576 ], [ %578, %577 ]
  store i64 %580, i64* %18, align 8
  %581 = load i64, i64* @IRQF_ONESHOT, align 8
  %582 = load i64, i64* %18, align 8
  %583 = or i64 %582, %581
  store i64 %583, i64* %18, align 8
  %584 = load %struct.device*, %struct.device** %7, align 8
  %585 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %586 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %585, i32 0, i32 0
  %587 = load i32, i32* %586, align 8
  %588 = load i32, i32* @ad714x_interrupt_thread, align 4
  %589 = load i64, i64* %18, align 8
  %590 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %591 = call i32 @devm_request_threaded_irq(%struct.device* %584, i32 %587, i32* null, i32 %588, i64 %589, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), %struct.ad714x_chip* %590)
  store i32 %591, i32* %13, align 4
  %592 = load i32, i32* %13, align 4
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %594, label %602

594:                                              ; preds = %579
  %595 = load %struct.device*, %struct.device** %7, align 8
  %596 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  %597 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 8
  %599 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %595, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %598)
  %600 = load i32, i32* %13, align 4
  %601 = call %struct.ad714x_chip* @ERR_PTR(i32 %600)
  store %struct.ad714x_chip* %601, %struct.ad714x_chip** %6, align 8
  br label %604

602:                                              ; preds = %579
  %603 = load %struct.ad714x_chip*, %struct.ad714x_chip** %16, align 8
  store %struct.ad714x_chip* %603, %struct.ad714x_chip** %6, align 8
  br label %604

604:                                              ; preds = %602, %594, %567, %501, %470, %402, %362, %305, %265, %208, %174, %80, %42, %31
  %605 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  ret %struct.ad714x_chip* %605
}

declare dso_local %struct.ad714x_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.ad714x_chip* @ERR_PTR(i32) #1

declare dso_local %struct.ad714x_chip* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @ad714x_hw_detect(%struct.ad714x_chip*) #1

declare dso_local i32 @ad714x_hw_init(%struct.ad714x_chip*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i64, i8*, %struct.ad714x_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
