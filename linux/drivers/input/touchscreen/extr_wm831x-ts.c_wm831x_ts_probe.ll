; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm831x-ts.c_wm831x_ts_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm831x-ts.c_wm831x_ts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.wm831x_ts = type { i32, i8*, i8*, i32, %struct.input_dev*, %struct.wm831x* }
%struct.input_dev = type { i8*, i8*, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.wm831x = type { i32 }
%struct.wm831x_pdata = type { %struct.wm831x_touch_pdata* }
%struct.wm831x_touch_pdata = type { i32, i32, i32, i32, i64, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wm831x_pd_data_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"TCHDATA\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"TCHPD\00", align 1
@WM831X_TOUCH_CONTROL_2 = common dso_local global i32 0, align 4
@WM831X_TCH_5WIRE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Unsupported ISEL setting: %d\0A\00", align 1
@WM831X_TCH_ISEL = common dso_local global i32 0, align 4
@WM831X_TCH_PDONLY = common dso_local global i32 0, align 4
@WM831X_TOUCH_CONTROL_1 = common dso_local global i32 0, align 4
@WM831X_TCH_RATE_MASK = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@wm831x_ts_data_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Touchscreen data\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to request data IRQ %d: %d\0A\00", align 1
@wm831x_ts_pen_down_irq = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Touchscreen pen down\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Failed to request pen down IRQ %d: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"WM831x touchscreen\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"wm831x\00", align 1
@wm831x_ts_input_open = common dso_local global i32 0, align 4
@wm831x_ts_input_close = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm831x_ts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_ts_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wm831x_ts*, align 8
  %5 = alloca %struct.wm831x*, align 8
  %6 = alloca %struct.wm831x_pdata*, align 8
  %7 = alloca %struct.wm831x_touch_pdata*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.wm831x* @dev_get_drvdata(i32 %14)
  store %struct.wm831x* %15, %struct.wm831x** %5, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.wm831x_pdata* @dev_get_platdata(i32 %19)
  store %struct.wm831x_pdata* %20, %struct.wm831x_pdata** %6, align 8
  store %struct.wm831x_touch_pdata* null, %struct.wm831x_touch_pdata** %7, align 8
  %21 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %6, align 8
  %22 = icmp ne %struct.wm831x_pdata* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %6, align 8
  %25 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %24, i32 0, i32 0
  %26 = load %struct.wm831x_touch_pdata*, %struct.wm831x_touch_pdata** %25, align 8
  store %struct.wm831x_touch_pdata* %26, %struct.wm831x_touch_pdata** %7, align 8
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.wm831x_ts* @devm_kzalloc(%struct.TYPE_6__* %29, i32 48, i32 %30)
  store %struct.wm831x_ts* %31, %struct.wm831x_ts** %4, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_6__* %33)
  store %struct.input_dev* %34, %struct.input_dev** %8, align 8
  %35 = load %struct.wm831x_ts*, %struct.wm831x_ts** %4, align 8
  %36 = icmp ne %struct.wm831x_ts* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %39 = icmp ne %struct.input_dev* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37, %27
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %317

43:                                               ; preds = %37
  %44 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %45 = load %struct.wm831x_ts*, %struct.wm831x_ts** %4, align 8
  %46 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %45, i32 0, i32 5
  store %struct.wm831x* %44, %struct.wm831x** %46, align 8
  %47 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %48 = load %struct.wm831x_ts*, %struct.wm831x_ts** %4, align 8
  %49 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %48, i32 0, i32 4
  store %struct.input_dev* %47, %struct.input_dev** %49, align 8
  %50 = load %struct.wm831x_ts*, %struct.wm831x_ts** %4, align 8
  %51 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %50, i32 0, i32 3
  %52 = load i32, i32* @wm831x_pd_data_work, align 4
  %53 = call i32 @INIT_WORK(i32* %51, i32 %52)
  %54 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = call i32 @platform_get_irq_byname(%struct.platform_device* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %57 = call i8* @wm831x_irq(%struct.wm831x* %54, i32 %56)
  %58 = load %struct.wm831x_ts*, %struct.wm831x_ts** %4, align 8
  %59 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load %struct.wm831x_touch_pdata*, %struct.wm831x_touch_pdata** %7, align 8
  %61 = icmp ne %struct.wm831x_touch_pdata* %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %43
  %63 = load %struct.wm831x_touch_pdata*, %struct.wm831x_touch_pdata** %7, align 8
  %64 = getelementptr inbounds %struct.wm831x_touch_pdata, %struct.wm831x_touch_pdata* %63, i32 0, i32 6
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.wm831x_touch_pdata*, %struct.wm831x_touch_pdata** %7, align 8
  %69 = getelementptr inbounds %struct.wm831x_touch_pdata, %struct.wm831x_touch_pdata* %68, i32 0, i32 6
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.wm831x_ts*, %struct.wm831x_ts** %4, align 8
  %72 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %67, %62, %43
  %74 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = call i32 @platform_get_irq_byname(%struct.platform_device* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %77 = call i8* @wm831x_irq(%struct.wm831x* %74, i32 %76)
  %78 = load %struct.wm831x_ts*, %struct.wm831x_ts** %4, align 8
  %79 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load %struct.wm831x_touch_pdata*, %struct.wm831x_touch_pdata** %7, align 8
  %81 = icmp ne %struct.wm831x_touch_pdata* %80, null
  br i1 %81, label %82, label %93

82:                                               ; preds = %73
  %83 = load %struct.wm831x_touch_pdata*, %struct.wm831x_touch_pdata** %7, align 8
  %84 = getelementptr inbounds %struct.wm831x_touch_pdata, %struct.wm831x_touch_pdata* %83, i32 0, i32 5
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.wm831x_touch_pdata*, %struct.wm831x_touch_pdata** %7, align 8
  %89 = getelementptr inbounds %struct.wm831x_touch_pdata, %struct.wm831x_touch_pdata* %88, i32 0, i32 5
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.wm831x_ts*, %struct.wm831x_ts** %4, align 8
  %92 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %87, %82, %73
  %94 = load %struct.wm831x_touch_pdata*, %struct.wm831x_touch_pdata** %7, align 8
  %95 = icmp ne %struct.wm831x_touch_pdata* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load %struct.wm831x_touch_pdata*, %struct.wm831x_touch_pdata** %7, align 8
  %98 = getelementptr inbounds %struct.wm831x_touch_pdata, %struct.wm831x_touch_pdata* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.wm831x_ts*, %struct.wm831x_ts** %4, align 8
  %101 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %105

102:                                              ; preds = %93
  %103 = load %struct.wm831x_ts*, %struct.wm831x_ts** %4, align 8
  %104 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  br label %105

105:                                              ; preds = %102, %96
  %106 = load %struct.wm831x_touch_pdata*, %struct.wm831x_touch_pdata** %7, align 8
  %107 = icmp ne %struct.wm831x_touch_pdata* %106, null
  br i1 %107, label %108, label %134

108:                                              ; preds = %105
  %109 = load %struct.wm831x_touch_pdata*, %struct.wm831x_touch_pdata** %7, align 8
  %110 = getelementptr inbounds %struct.wm831x_touch_pdata, %struct.wm831x_touch_pdata* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %134

113:                                              ; preds = %108
  %114 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %115 = load i32, i32* @WM831X_TOUCH_CONTROL_2, align 4
  %116 = load i32, i32* @WM831X_TCH_5WIRE, align 4
  %117 = load i32, i32* @WM831X_TCH_5WIRE, align 4
  %118 = call i32 @wm831x_set_bits(%struct.wm831x* %114, i32 %115, i32 %116, i32 %117)
  %119 = load %struct.wm831x_touch_pdata*, %struct.wm831x_touch_pdata** %7, align 8
  %120 = getelementptr inbounds %struct.wm831x_touch_pdata, %struct.wm831x_touch_pdata* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %113
  %124 = load %struct.wm831x_touch_pdata*, %struct.wm831x_touch_pdata** %7, align 8
  %125 = getelementptr inbounds %struct.wm831x_touch_pdata, %struct.wm831x_touch_pdata* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br label %128

128:                                              ; preds = %123, %113
  %129 = phi i1 [ false, %113 ], [ %127, %123 ]
  %130 = zext i1 %129 to i32
  %131 = call i32 @WARN_ON(i32 %130)
  %132 = load %struct.wm831x_ts*, %struct.wm831x_ts** %4, align 8
  %133 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %132, i32 0, i32 0
  store i32 0, i32* %133, align 8
  br label %139

134:                                              ; preds = %108, %105
  %135 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %136 = load i32, i32* @WM831X_TOUCH_CONTROL_2, align 4
  %137 = load i32, i32* @WM831X_TCH_5WIRE, align 4
  %138 = call i32 @wm831x_set_bits(%struct.wm831x* %135, i32 %136, i32 %137, i32 0)
  br label %139

139:                                              ; preds = %134, %128
  %140 = load %struct.wm831x_touch_pdata*, %struct.wm831x_touch_pdata** %7, align 8
  %141 = icmp ne %struct.wm831x_touch_pdata* %140, null
  br i1 %141, label %142, label %165

142:                                              ; preds = %139
  %143 = load %struct.wm831x_touch_pdata*, %struct.wm831x_touch_pdata** %7, align 8
  %144 = getelementptr inbounds %struct.wm831x_touch_pdata, %struct.wm831x_touch_pdata* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  switch i32 %145, label %146 [
    i32 200, label %153
    i32 0, label %153
    i32 400, label %158
  ]

146:                                              ; preds = %142
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = load %struct.wm831x_touch_pdata*, %struct.wm831x_touch_pdata** %7, align 8
  %150 = getelementptr inbounds %struct.wm831x_touch_pdata, %struct.wm831x_touch_pdata* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @dev_err(%struct.TYPE_6__* %148, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %142, %142, %146
  %154 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %155 = load i32, i32* @WM831X_TOUCH_CONTROL_2, align 4
  %156 = load i32, i32* @WM831X_TCH_ISEL, align 4
  %157 = call i32 @wm831x_set_bits(%struct.wm831x* %154, i32 %155, i32 %156, i32 0)
  br label %164

158:                                              ; preds = %142
  %159 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %160 = load i32, i32* @WM831X_TOUCH_CONTROL_2, align 4
  %161 = load i32, i32* @WM831X_TCH_ISEL, align 4
  %162 = load i32, i32* @WM831X_TCH_ISEL, align 4
  %163 = call i32 @wm831x_set_bits(%struct.wm831x* %159, i32 %160, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %158, %153
  br label %165

165:                                              ; preds = %164, %139
  %166 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %167 = load i32, i32* @WM831X_TOUCH_CONTROL_2, align 4
  %168 = load i32, i32* @WM831X_TCH_PDONLY, align 4
  %169 = call i32 @wm831x_set_bits(%struct.wm831x* %166, i32 %167, i32 %168, i32 0)
  %170 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %171 = load i32, i32* @WM831X_TOUCH_CONTROL_1, align 4
  %172 = load i32, i32* @WM831X_TCH_RATE_MASK, align 4
  %173 = call i32 @wm831x_set_bits(%struct.wm831x* %170, i32 %171, i32 %172, i32 6)
  %174 = load %struct.wm831x_touch_pdata*, %struct.wm831x_touch_pdata** %7, align 8
  %175 = icmp ne %struct.wm831x_touch_pdata* %174, null
  br i1 %175, label %176, label %185

176:                                              ; preds = %165
  %177 = load %struct.wm831x_touch_pdata*, %struct.wm831x_touch_pdata** %7, align 8
  %178 = getelementptr inbounds %struct.wm831x_touch_pdata, %struct.wm831x_touch_pdata* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load %struct.wm831x_touch_pdata*, %struct.wm831x_touch_pdata** %7, align 8
  %183 = getelementptr inbounds %struct.wm831x_touch_pdata, %struct.wm831x_touch_pdata* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  store i32 %184, i32* %10, align 4
  br label %187

185:                                              ; preds = %176, %165
  %186 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  store i32 %186, i32* %10, align 4
  br label %187

187:                                              ; preds = %185, %181
  %188 = load %struct.wm831x_ts*, %struct.wm831x_ts** %4, align 8
  %189 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %188, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = load i32, i32* @wm831x_ts_data_irq, align 4
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* @IRQF_ONESHOT, align 4
  %194 = or i32 %192, %193
  %195 = load %struct.wm831x_ts*, %struct.wm831x_ts** %4, align 8
  %196 = call i32 @request_threaded_irq(i8* %190, i32* null, i32 %191, i32 %194, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), %struct.wm831x_ts* %195)
  store i32 %196, i32* %9, align 4
  %197 = load i32, i32* %9, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %187
  %200 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %201 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %200, i32 0, i32 0
  %202 = load %struct.wm831x_ts*, %struct.wm831x_ts** %4, align 8
  %203 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %202, i32 0, i32 1
  %204 = load i8*, i8** %203, align 8
  %205 = ptrtoint i8* %204 to i32
  %206 = load i32, i32* %9, align 4
  %207 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @dev_err(%struct.TYPE_6__* %201, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %205, i32 %206)
  br label %317

208:                                              ; preds = %187
  %209 = load %struct.wm831x_ts*, %struct.wm831x_ts** %4, align 8
  %210 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %209, i32 0, i32 1
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 @disable_irq(i8* %211)
  %213 = load %struct.wm831x_touch_pdata*, %struct.wm831x_touch_pdata** %7, align 8
  %214 = icmp ne %struct.wm831x_touch_pdata* %213, null
  br i1 %214, label %215, label %224

215:                                              ; preds = %208
  %216 = load %struct.wm831x_touch_pdata*, %struct.wm831x_touch_pdata** %7, align 8
  %217 = getelementptr inbounds %struct.wm831x_touch_pdata, %struct.wm831x_touch_pdata* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %215
  %221 = load %struct.wm831x_touch_pdata*, %struct.wm831x_touch_pdata** %7, align 8
  %222 = getelementptr inbounds %struct.wm831x_touch_pdata, %struct.wm831x_touch_pdata* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %10, align 4
  br label %226

224:                                              ; preds = %215, %208
  %225 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  store i32 %225, i32* %10, align 4
  br label %226

226:                                              ; preds = %224, %220
  %227 = load %struct.wm831x_ts*, %struct.wm831x_ts** %4, align 8
  %228 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %227, i32 0, i32 2
  %229 = load i8*, i8** %228, align 8
  %230 = load i32, i32* @wm831x_ts_pen_down_irq, align 4
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* @IRQF_ONESHOT, align 4
  %233 = or i32 %231, %232
  %234 = load %struct.wm831x_ts*, %struct.wm831x_ts** %4, align 8
  %235 = call i32 @request_threaded_irq(i8* %229, i32* null, i32 %230, i32 %233, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), %struct.wm831x_ts* %234)
  store i32 %235, i32* %9, align 4
  %236 = load i32, i32* %9, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %247

238:                                              ; preds = %226
  %239 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %240 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %239, i32 0, i32 0
  %241 = load %struct.wm831x_ts*, %struct.wm831x_ts** %4, align 8
  %242 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %241, i32 0, i32 2
  %243 = load i8*, i8** %242, align 8
  %244 = ptrtoint i8* %243 to i32
  %245 = load i32, i32* %9, align 4
  %246 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @dev_err(%struct.TYPE_6__* %240, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %244, i32 %245)
  br label %311

247:                                              ; preds = %226
  %248 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %249 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %248, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8** %249, align 8
  %250 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %251 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %250, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %251, align 8
  %252 = load i32, i32* @wm831x_ts_input_open, align 4
  %253 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %254 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %253, i32 0, i32 6
  store i32 %252, i32* %254, align 4
  %255 = load i32, i32* @wm831x_ts_input_close, align 4
  %256 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %257 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %256, i32 0, i32 5
  store i32 %255, i32* %257, align 8
  %258 = load i32, i32* @EV_ABS, align 4
  %259 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %260 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @__set_bit(i32 %258, i32 %261)
  %263 = load i32, i32* @EV_KEY, align 4
  %264 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %265 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @__set_bit(i32 %263, i32 %266)
  %268 = load i32, i32* @BTN_TOUCH, align 4
  %269 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %270 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @__set_bit(i32 %268, i32 %271)
  %273 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %274 = load i32, i32* @ABS_X, align 4
  %275 = call i32 @input_set_abs_params(%struct.input_dev* %273, i32 %274, i32 0, i32 4095, i32 5, i32 0)
  %276 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %277 = load i32, i32* @ABS_Y, align 4
  %278 = call i32 @input_set_abs_params(%struct.input_dev* %276, i32 %277, i32 0, i32 4095, i32 5, i32 0)
  %279 = load %struct.wm831x_ts*, %struct.wm831x_ts** %4, align 8
  %280 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %247
  %284 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %285 = load i32, i32* @ABS_PRESSURE, align 4
  %286 = call i32 @input_set_abs_params(%struct.input_dev* %284, i32 %285, i32 0, i32 4095, i32 5, i32 0)
  br label %287

287:                                              ; preds = %283, %247
  %288 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %289 = load %struct.wm831x_ts*, %struct.wm831x_ts** %4, align 8
  %290 = call i32 @input_set_drvdata(%struct.input_dev* %288, %struct.wm831x_ts* %289)
  %291 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %292 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %291, i32 0, i32 0
  %293 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %294 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 0
  store %struct.TYPE_6__* %292, %struct.TYPE_6__** %295, align 8
  %296 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %297 = call i32 @input_register_device(%struct.input_dev* %296)
  store i32 %297, i32* %9, align 4
  %298 = load i32, i32* %9, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %287
  br label %305

301:                                              ; preds = %287
  %302 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %303 = load %struct.wm831x_ts*, %struct.wm831x_ts** %4, align 8
  %304 = call i32 @platform_set_drvdata(%struct.platform_device* %302, %struct.wm831x_ts* %303)
  store i32 0, i32* %2, align 4
  br label %319

305:                                              ; preds = %300
  %306 = load %struct.wm831x_ts*, %struct.wm831x_ts** %4, align 8
  %307 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %306, i32 0, i32 2
  %308 = load i8*, i8** %307, align 8
  %309 = load %struct.wm831x_ts*, %struct.wm831x_ts** %4, align 8
  %310 = call i32 @free_irq(i8* %308, %struct.wm831x_ts* %309)
  br label %311

311:                                              ; preds = %305, %238
  %312 = load %struct.wm831x_ts*, %struct.wm831x_ts** %4, align 8
  %313 = getelementptr inbounds %struct.wm831x_ts, %struct.wm831x_ts* %312, i32 0, i32 1
  %314 = load i8*, i8** %313, align 8
  %315 = load %struct.wm831x_ts*, %struct.wm831x_ts** %4, align 8
  %316 = call i32 @free_irq(i8* %314, %struct.wm831x_ts* %315)
  br label %317

317:                                              ; preds = %311, %199, %40
  %318 = load i32, i32* %9, align 4
  store i32 %318, i32* %2, align 4
  br label %319

319:                                              ; preds = %317, %301
  %320 = load i32, i32* %2, align 4
  ret i32 %320
}

declare dso_local %struct.wm831x* @dev_get_drvdata(i32) #1

declare dso_local %struct.wm831x_pdata* @dev_get_platdata(i32) #1

declare dso_local %struct.wm831x_ts* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_6__*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i8* @wm831x_irq(%struct.wm831x*, i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32, ...) #1

declare dso_local i32 @request_threaded_irq(i8*, i32*, i32, i32, i8*, %struct.wm831x_ts*) #1

declare dso_local i32 @disable_irq(i8*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.wm831x_ts*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wm831x_ts*) #1

declare dso_local i32 @free_irq(i8*, %struct.wm831x_ts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
