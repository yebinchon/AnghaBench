; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_bcm_iproc_tsc.c_iproc_ts_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_bcm_iproc_tsc.c_iproc_ts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.iproc_ts_priv = type { %struct.input_dev*, %struct.TYPE_12__, i32, %struct.platform_device*, i32, i32 }
%struct.input_dev = type { i32*, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, i32 }
%struct.TYPE_11__ = type { i64, i64, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ts_syscon\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"unable to map I/O memory:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"tsc_clk\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"failed getting clock tsc_clk: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"get_tsc_config failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to allocate input device\0A\00", align 1
@PEN_UP_STATUS = common dso_local global i32 0, align 4
@IPROC_TS_NAME = common dso_local global i32 0, align 4
@BUS_HOST = common dso_local global i32 0, align 4
@SERIO_UNKNOWN = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@X_MIN = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@Y_MIN = common dso_local global i32 0, align 4
@iproc_ts_start = common dso_local global i32 0, align 4
@iproc_ts_stop = common dso_local global i32 0, align 4
@iproc_touchscreen_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"failed to register input device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @iproc_ts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_ts_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.iproc_ts_priv*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.iproc_ts_priv* @devm_kzalloc(%struct.TYPE_13__* %9, i32 48, i32 %10)
  store %struct.iproc_ts_priv* %11, %struct.iproc_ts_priv** %4, align 8
  %12 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %4, align 8
  %13 = icmp ne %struct.iproc_ts_priv* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %201

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @syscon_regmap_lookup_by_phandle(i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %4, align 8
  %24 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %4, align 8
  %26 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %17
  %31 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %4, align 8
  %32 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %201

40:                                               ; preds = %17
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i32 @devm_clk_get(%struct.TYPE_13__* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %4, align 8
  %45 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %4, align 8
  %47 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @IS_ERR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %40
  %52 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %4, align 8
  %53 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @PTR_ERR(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %201

61:                                               ; preds = %40
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %4, align 8
  %64 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %63, i32 0, i32 3
  store %struct.platform_device* %62, %struct.platform_device** %64, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %4, align 8
  %68 = call i32 @iproc_get_tsc_config(%struct.TYPE_13__* %66, %struct.iproc_ts_priv* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %61
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load i32, i32* %7, align 4
  %75 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %2, align 4
  br label %201

77:                                               ; preds = %61
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_13__* %79)
  store %struct.input_dev* %80, %struct.input_dev** %5, align 8
  %81 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %82 = icmp ne %struct.input_dev* %81, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %85, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %201

89:                                               ; preds = %77
  %90 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %91 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %4, align 8
  %92 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %91, i32 0, i32 0
  store %struct.input_dev* %90, %struct.input_dev** %92, align 8
  %93 = load i32, i32* @PEN_UP_STATUS, align 4
  %94 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %4, align 8
  %95 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @IPROC_TS_NAME, align 4
  %97 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %98 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 8
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %102 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  store %struct.TYPE_13__* %100, %struct.TYPE_13__** %103, align 8
  %104 = load i32, i32* @BUS_HOST, align 4
  %105 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %106 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  store i32 %104, i32* %107, align 4
  %108 = load i32, i32* @SERIO_UNKNOWN, align 4
  %109 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %110 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  store i32 %108, i32* %111, align 8
  %112 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %113 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  store i64 0, i64* %114, align 8
  %115 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %116 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  store i64 0, i64* %117, align 8
  %118 = load i32, i32* @EV_KEY, align 4
  %119 = call i32 @BIT_MASK(i32 %118)
  %120 = load i32, i32* @EV_ABS, align 4
  %121 = call i32 @BIT_MASK(i32 %120)
  %122 = or i32 %119, %121
  %123 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %124 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 %122, i32* %126, align 4
  %127 = load i32, i32* @BTN_TOUCH, align 4
  %128 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %129 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @__set_bit(i32 %127, i32 %130)
  %132 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %133 = load i32, i32* @ABS_X, align 4
  %134 = load i32, i32* @X_MIN, align 4
  %135 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %4, align 8
  %136 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %4, align 8
  %140 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @input_set_abs_params(%struct.input_dev* %132, i32 %133, i32 %134, i32 %138, i32 %142, i32 0)
  %144 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %145 = load i32, i32* @ABS_Y, align 4
  %146 = load i32, i32* @Y_MIN, align 4
  %147 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %4, align 8
  %148 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %4, align 8
  %152 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @input_set_abs_params(%struct.input_dev* %144, i32 %145, i32 %146, i32 %150, i32 %154, i32 0)
  %156 = load i32, i32* @iproc_ts_start, align 4
  %157 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %158 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* @iproc_ts_stop, align 4
  %160 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %161 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 8
  %162 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %163 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %4, align 8
  %164 = call i32 @input_set_drvdata(%struct.input_dev* %162, %struct.iproc_ts_priv* %163)
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %4, align 8
  %167 = call i32 @platform_set_drvdata(%struct.platform_device* %165, %struct.iproc_ts_priv* %166)
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = call i32 @platform_get_irq(%struct.platform_device* %168, i32 0)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %89
  %173 = load i32, i32* %6, align 4
  store i32 %173, i32* %2, align 4
  br label %201

174:                                              ; preds = %89
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 0
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @iproc_touchscreen_interrupt, align 4
  %179 = load i32, i32* @IRQF_SHARED, align 4
  %180 = load i32, i32* @IPROC_TS_NAME, align 4
  %181 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %182 = call i32 @devm_request_irq(%struct.TYPE_13__* %176, i32 %177, i32 %178, i32 %179, i32 %180, %struct.platform_device* %181)
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* %7, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %174
  %186 = load i32, i32* %7, align 4
  store i32 %186, i32* %2, align 4
  br label %201

187:                                              ; preds = %174
  %188 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %4, align 8
  %189 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %188, i32 0, i32 0
  %190 = load %struct.input_dev*, %struct.input_dev** %189, align 8
  %191 = call i32 @input_register_device(%struct.input_dev* %190)
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %7, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %187
  %195 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %196 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %195, i32 0, i32 0
  %197 = load i32, i32* %7, align 4
  %198 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %196, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %197)
  %199 = load i32, i32* %7, align 4
  store i32 %199, i32* %2, align 4
  br label %201

200:                                              ; preds = %187
  store i32 0, i32* %2, align 4
  br label %201

201:                                              ; preds = %200, %194, %185, %172, %83, %71, %51, %30, %14
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local %struct.iproc_ts_priv* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @iproc_get_tsc_config(%struct.TYPE_13__*, %struct.iproc_ts_priv*) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_13__*) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.iproc_ts_priv*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iproc_ts_priv*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_13__*, i32, i32, i32, i32, %struct.platform_device*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
