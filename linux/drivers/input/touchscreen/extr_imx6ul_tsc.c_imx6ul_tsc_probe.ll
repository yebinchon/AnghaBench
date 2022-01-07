; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_imx6ul_tsc.c_imx6ul_tsc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_imx6ul_tsc.c_imx6ul_tsc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.imx6ul_tsc = type { i32, i32, i32, %struct.input_dev*, i32, %struct.TYPE_11__*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.input_dev = type { i8*, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"iMX6UL Touchscreen Controller\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@imx6ul_tsc_open = common dso_local global i32 0, align 4
@imx6ul_tsc_close = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"xnur\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"failed to request GPIO tsc_X- (xnur): %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to remap tsc memory: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to remap adc memory: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"tsc\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"failed getting tsc clock: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"adc\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"failed getting adc clock: %d\0A\00", align 1
@tsc_irq_fn = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"failed requesting tsc irq %d: %d\0A\00", align 1
@adc_irq_fn = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"failed requesting adc irq %d: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"measure-delay-time\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"pre-charge-time\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"touchscreen-average-samples\00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"touchscreen-average-samples (%u) must be 1, 4, 8, 16 or 32\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [37 x i8] c"failed to register input device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx6ul_tsc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx6ul_tsc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.imx6ul_tsc*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.imx6ul_tsc* @devm_kzalloc(%struct.TYPE_11__* %16, i32 88, i32 %17)
  store %struct.imx6ul_tsc* %18, %struct.imx6ul_tsc** %5, align 8
  %19 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %20 = icmp ne %struct.imx6ul_tsc* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %292

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_11__* %26)
  store %struct.input_dev* %27, %struct.input_dev** %6, align 8
  %28 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %29 = icmp ne %struct.input_dev* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %292

33:                                               ; preds = %24
  %34 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %35 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %35, align 8
  %36 = load i32, i32* @BUS_HOST, align 4
  %37 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load i32, i32* @imx6ul_tsc_open, align 4
  %41 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %42 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @imx6ul_tsc_close, align 4
  %44 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %45 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %47 = load i32, i32* @EV_KEY, align 4
  %48 = load i32, i32* @BTN_TOUCH, align 4
  %49 = call i32 @input_set_capability(%struct.input_dev* %46, i32 %47, i32 %48)
  %50 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %51 = load i32, i32* @ABS_X, align 4
  %52 = call i32 @input_set_abs_params(%struct.input_dev* %50, i32 %51, i32 0, i32 4095, i32 0, i32 0)
  %53 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %54 = load i32, i32* @ABS_Y, align 4
  %55 = call i32 @input_set_abs_params(%struct.input_dev* %53, i32 %54, i32 0, i32 4095, i32 0, i32 0)
  %56 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %57 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %58 = call i32 @input_set_drvdata(%struct.input_dev* %56, %struct.imx6ul_tsc* %57)
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %62 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %61, i32 0, i32 5
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %62, align 8
  %63 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %64 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %65 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %64, i32 0, i32 3
  store %struct.input_dev* %63, %struct.input_dev** %65, align 8
  %66 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %67 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %66, i32 0, i32 11
  %68 = call i32 @init_completion(i32* %67)
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load i32, i32* @GPIOD_IN, align 4
  %72 = call i8* @devm_gpiod_get(%struct.TYPE_11__* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %74 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %73, i32 0, i32 10
  store i8* %72, i8** %74, align 8
  %75 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %76 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %75, i32 0, i32 10
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @IS_ERR(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %33
  %81 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %82 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %81, i32 0, i32 10
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @PTR_ERR(i8* %83)
  store i32 %84, i32* %7, align 4
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load i32, i32* %7, align 4
  %88 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @dev_err(%struct.TYPE_11__* %86, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %2, align 4
  br label %292

90:                                               ; preds = %33
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %91, i32 0)
  %93 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %94 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %93, i32 0, i32 9
  store i8* %92, i8** %94, align 8
  %95 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %96 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %95, i32 0, i32 9
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @IS_ERR(i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %90
  %101 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %102 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %101, i32 0, i32 9
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @PTR_ERR(i8* %103)
  store i32 %104, i32* %7, align 4
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = load i32, i32* %7, align 4
  %108 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @dev_err(%struct.TYPE_11__* %106, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %2, align 4
  br label %292

110:                                              ; preds = %90
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %111, i32 1)
  %113 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %114 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %113, i32 0, i32 8
  store i8* %112, i8** %114, align 8
  %115 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %116 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %115, i32 0, i32 8
  %117 = load i8*, i8** %116, align 8
  %118 = call i64 @IS_ERR(i8* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %110
  %121 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %122 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %121, i32 0, i32 8
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @PTR_ERR(i8* %123)
  store i32 %124, i32* %7, align 4
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = load i32, i32* %7, align 4
  %128 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @dev_err(%struct.TYPE_11__* %126, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %2, align 4
  br label %292

130:                                              ; preds = %110
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = call i8* @devm_clk_get(%struct.TYPE_11__* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %134 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %135 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %134, i32 0, i32 7
  store i8* %133, i8** %135, align 8
  %136 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %137 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %136, i32 0, i32 7
  %138 = load i8*, i8** %137, align 8
  %139 = call i64 @IS_ERR(i8* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %130
  %142 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %143 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %142, i32 0, i32 7
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @PTR_ERR(i8* %144)
  store i32 %145, i32* %7, align 4
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 0
  %148 = load i32, i32* %7, align 4
  %149 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @dev_err(%struct.TYPE_11__* %147, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %7, align 4
  store i32 %150, i32* %2, align 4
  br label %292

151:                                              ; preds = %130
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %152, i32 0, i32 0
  %154 = call i8* @devm_clk_get(%struct.TYPE_11__* %153, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %155 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %156 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %155, i32 0, i32 6
  store i8* %154, i8** %156, align 8
  %157 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %158 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %157, i32 0, i32 6
  %159 = load i8*, i8** %158, align 8
  %160 = call i64 @IS_ERR(i8* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %151
  %163 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %164 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %163, i32 0, i32 6
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @PTR_ERR(i8* %165)
  store i32 %166, i32* %7, align 4
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = load i32, i32* %7, align 4
  %170 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @dev_err(%struct.TYPE_11__* %168, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* %7, align 4
  store i32 %171, i32* %2, align 4
  br label %292

172:                                              ; preds = %151
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = call i32 @platform_get_irq(%struct.platform_device* %173, i32 0)
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = load i32, i32* %8, align 4
  store i32 %178, i32* %2, align 4
  br label %292

179:                                              ; preds = %172
  %180 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %181 = call i32 @platform_get_irq(%struct.platform_device* %180, i32 1)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = load i32, i32* %9, align 4
  store i32 %185, i32* %2, align 4
  br label %292

186:                                              ; preds = %179
  %187 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %188 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %187, i32 0, i32 5
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* @tsc_irq_fn, align 4
  %192 = load i32, i32* @IRQF_ONESHOT, align 4
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %193, i32 0, i32 0
  %195 = call i32 @dev_name(%struct.TYPE_11__* %194)
  %196 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %197 = call i32 @devm_request_threaded_irq(%struct.TYPE_11__* %189, i32 %190, i32* null, i32 %191, i32 %192, i32 %195, %struct.imx6ul_tsc* %196)
  store i32 %197, i32* %7, align 4
  %198 = load i32, i32* %7, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %186
  %201 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %202 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %201, i32 0, i32 0
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* %7, align 4
  %205 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @dev_err(%struct.TYPE_11__* %202, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %203, i32 %204)
  %206 = load i32, i32* %7, align 4
  store i32 %206, i32* %2, align 4
  br label %292

207:                                              ; preds = %186
  %208 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %209 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %208, i32 0, i32 5
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %209, align 8
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* @adc_irq_fn, align 4
  %213 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %214 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %213, i32 0, i32 0
  %215 = call i32 @dev_name(%struct.TYPE_11__* %214)
  %216 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %217 = call i32 @devm_request_irq(%struct.TYPE_11__* %210, i32 %211, i32 %212, i32 0, i32 %215, %struct.imx6ul_tsc* %216)
  store i32 %217, i32* %7, align 4
  %218 = load i32, i32* %7, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %207
  %221 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %222 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %221, i32 0, i32 0
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* %7, align 4
  %225 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @dev_err(%struct.TYPE_11__* %222, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %223, i32 %224)
  %226 = load i32, i32* %7, align 4
  store i32 %226, i32* %2, align 4
  br label %292

227:                                              ; preds = %207
  %228 = load %struct.device_node*, %struct.device_node** %4, align 8
  %229 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %230 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %229, i32 0, i32 0
  %231 = call i32 @of_property_read_u32(%struct.device_node* %228, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32* %230)
  store i32 %231, i32* %7, align 4
  %232 = load i32, i32* %7, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %227
  %235 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %236 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %235, i32 0, i32 0
  store i32 65535, i32* %236, align 8
  br label %237

237:                                              ; preds = %234, %227
  %238 = load %struct.device_node*, %struct.device_node** %4, align 8
  %239 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %240 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %239, i32 0, i32 1
  %241 = call i32 @of_property_read_u32(%struct.device_node* %238, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32* %240)
  store i32 %241, i32* %7, align 4
  %242 = load i32, i32* %7, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %237
  %245 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %246 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %245, i32 0, i32 1
  store i32 4095, i32* %246, align 4
  br label %247

247:                                              ; preds = %244, %237
  %248 = load %struct.device_node*, %struct.device_node** %4, align 8
  %249 = call i32 @of_property_read_u32(%struct.device_node* %248, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32* %10)
  store i32 %249, i32* %7, align 4
  %250 = load i32, i32* %7, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %247
  store i32 1, i32* %10, align 4
  br label %253

253:                                              ; preds = %252, %247
  %254 = load i32, i32* %10, align 4
  switch i32 %254, label %268 [
    i32 1, label %255
    i32 4, label %260
    i32 8, label %260
    i32 16, label %260
    i32 32, label %260
  ]

255:                                              ; preds = %253
  %256 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %257 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %256, i32 0, i32 2
  store i32 0, i32* %257, align 8
  %258 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %259 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %258, i32 0, i32 4
  store i32 0, i32* %259, align 8
  br label %275

260:                                              ; preds = %253, %253, %253, %253
  %261 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %262 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %261, i32 0, i32 2
  store i32 1, i32* %262, align 8
  %263 = load i32, i32* %10, align 4
  %264 = call i32 @ilog2(i32 %263)
  %265 = sub nsw i32 %264, 2
  %266 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %267 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %266, i32 0, i32 4
  store i32 %265, i32* %267, align 8
  br label %275

268:                                              ; preds = %253
  %269 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %270 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %269, i32 0, i32 0
  %271 = load i32, i32* %10, align 4
  %272 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @dev_err(%struct.TYPE_11__* %270, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.14, i64 0, i64 0), i32 %271)
  %273 = load i32, i32* @EINVAL, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %2, align 4
  br label %292

275:                                              ; preds = %260, %255
  %276 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %277 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %276, i32 0, i32 3
  %278 = load %struct.input_dev*, %struct.input_dev** %277, align 8
  %279 = call i32 @input_register_device(%struct.input_dev* %278)
  store i32 %279, i32* %7, align 4
  %280 = load i32, i32* %7, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %275
  %283 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %284 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %283, i32 0, i32 0
  %285 = load i32, i32* %7, align 4
  %286 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @dev_err(%struct.TYPE_11__* %284, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %285)
  %287 = load i32, i32* %7, align 4
  store i32 %287, i32* %2, align 4
  br label %292

288:                                              ; preds = %275
  %289 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %290 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %291 = call i32 @platform_set_drvdata(%struct.platform_device* %289, %struct.imx6ul_tsc* %290)
  store i32 0, i32* %2, align 4
  br label %292

292:                                              ; preds = %288, %282, %268, %220, %200, %184, %177, %162, %141, %120, %100, %80, %30, %21
  %293 = load i32, i32* %2, align 4
  ret i32 %293
}

declare dso_local %struct.imx6ul_tsc* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_11__*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.imx6ul_tsc*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i8* @devm_gpiod_get(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, i32, ...) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_11__*, i32, i32*, i32, i32, i32, %struct.imx6ul_tsc*) #1

declare dso_local i32 @dev_name(%struct.TYPE_11__*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_11__*, i32, i32, i32, i32, %struct.imx6ul_tsc*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.imx6ul_tsc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
