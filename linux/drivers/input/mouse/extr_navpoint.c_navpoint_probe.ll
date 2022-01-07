; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_navpoint.c_navpoint_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_navpoint.c_navpoint_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.navpoint_platform_data = type { i32, i32 }
%struct.ssp_device = type { i32 }
%struct.input_dev = type { i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.navpoint = type { i32, i32*, %struct.input_dev*, %struct.ssp_device* }

@.str = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"SYNAPTICS_ON\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SSCR0 = common dso_local global i32 0, align 4
@SSCR0_SSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"ssp%d already enabled\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@NAVPOINT_X_MIN = common dso_local global i32 0, align 4
@NAVPOINT_X_MAX = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@NAVPOINT_Y_MIN = common dso_local global i32 0, align 4
@NAVPOINT_Y_MAX = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@NAVPOINT_PRESSURE_MIN = common dso_local global i32 0, align 4
@NAVPOINT_PRESSURE_MAX = common dso_local global i32 0, align 4
@navpoint_open = common dso_local global i32 0, align 4
@navpoint_close = common dso_local global i32 0, align 4
@navpoint_irq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"ssp%d, irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @navpoint_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @navpoint_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.navpoint_platform_data*, align 8
  %5 = alloca %struct.ssp_device*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.navpoint*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.navpoint_platform_data* @dev_get_platdata(i32* %10)
  store %struct.navpoint_platform_data* %11, %struct.navpoint_platform_data** %4, align 8
  %12 = load %struct.navpoint_platform_data*, %struct.navpoint_platform_data** %4, align 8
  %13 = icmp ne %struct.navpoint_platform_data* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %211

20:                                               ; preds = %1
  %21 = load %struct.navpoint_platform_data*, %struct.navpoint_platform_data** %4, align 8
  %22 = getelementptr inbounds %struct.navpoint_platform_data, %struct.navpoint_platform_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @gpio_is_valid(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.navpoint_platform_data*, %struct.navpoint_platform_data** %4, align 8
  %28 = getelementptr inbounds %struct.navpoint_platform_data, %struct.navpoint_platform_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %31 = call i32 @gpio_request_one(i32 %29, i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %2, align 4
  br label %211

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %20
  %38 = load %struct.navpoint_platform_data*, %struct.navpoint_platform_data** %4, align 8
  %39 = getelementptr inbounds %struct.navpoint_platform_data, %struct.navpoint_platform_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.ssp_device* @pxa_ssp_request(i32 %40, i32 %43)
  store %struct.ssp_device* %44, %struct.ssp_device** %5, align 8
  %45 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %46 = icmp ne %struct.ssp_device* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %198

50:                                               ; preds = %37
  %51 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %52 = load i32, i32* @SSCR0, align 4
  %53 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %51, i32 %52)
  %54 = load i32, i32* @SSCR0_SSE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %59 = load i32, i32* @SSCR0, align 4
  %60 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %58, i32 %59, i32 0)
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load %struct.navpoint_platform_data*, %struct.navpoint_platform_data** %4, align 8
  %64 = getelementptr inbounds %struct.navpoint_platform_data, %struct.navpoint_platform_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_warn(i32* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %57, %50
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call %struct.navpoint* @kzalloc(i32 32, i32 %68)
  store %struct.navpoint* %69, %struct.navpoint** %7, align 8
  %70 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %70, %struct.input_dev** %6, align 8
  %71 = load %struct.navpoint*, %struct.navpoint** %7, align 8
  %72 = icmp ne %struct.navpoint* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %75 = icmp ne %struct.input_dev* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %73, %67
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %191

79:                                               ; preds = %73
  %80 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %81 = load %struct.navpoint*, %struct.navpoint** %7, align 8
  %82 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %81, i32 0, i32 3
  store %struct.ssp_device* %80, %struct.ssp_device** %82, align 8
  %83 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %84 = load %struct.navpoint*, %struct.navpoint** %7, align 8
  %85 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %84, i32 0, i32 2
  store %struct.input_dev* %83, %struct.input_dev** %85, align 8
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load %struct.navpoint*, %struct.navpoint** %7, align 8
  %89 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %88, i32 0, i32 1
  store i32* %87, i32** %89, align 8
  %90 = load %struct.navpoint_platform_data*, %struct.navpoint_platform_data** %4, align 8
  %91 = getelementptr inbounds %struct.navpoint_platform_data, %struct.navpoint_platform_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.navpoint*, %struct.navpoint** %7, align 8
  %94 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %99 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 8
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %103 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i32* %101, i32** %104, align 8
  %105 = load i32, i32* @EV_KEY, align 4
  %106 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %107 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @__set_bit(i32 %105, i32 %108)
  %110 = load i32, i32* @EV_ABS, align 4
  %111 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %112 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @__set_bit(i32 %110, i32 %113)
  %115 = load i32, i32* @BTN_LEFT, align 4
  %116 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %117 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @__set_bit(i32 %115, i32 %118)
  %120 = load i32, i32* @BTN_TOUCH, align 4
  %121 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %122 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @__set_bit(i32 %120, i32 %123)
  %125 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %126 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %127 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @__set_bit(i32 %125, i32 %128)
  %130 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %131 = load i32, i32* @ABS_X, align 4
  %132 = load i32, i32* @NAVPOINT_X_MIN, align 4
  %133 = load i32, i32* @NAVPOINT_X_MAX, align 4
  %134 = call i32 @input_set_abs_params(%struct.input_dev* %130, i32 %131, i32 %132, i32 %133, i32 0, i32 0)
  %135 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %136 = load i32, i32* @ABS_Y, align 4
  %137 = load i32, i32* @NAVPOINT_Y_MIN, align 4
  %138 = load i32, i32* @NAVPOINT_Y_MAX, align 4
  %139 = call i32 @input_set_abs_params(%struct.input_dev* %135, i32 %136, i32 %137, i32 %138, i32 0, i32 0)
  %140 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %141 = load i32, i32* @ABS_PRESSURE, align 4
  %142 = load i32, i32* @NAVPOINT_PRESSURE_MIN, align 4
  %143 = load i32, i32* @NAVPOINT_PRESSURE_MAX, align 4
  %144 = call i32 @input_set_abs_params(%struct.input_dev* %140, i32 %141, i32 %142, i32 %143, i32 0, i32 0)
  %145 = load i32, i32* @navpoint_open, align 4
  %146 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %147 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @navpoint_close, align 4
  %149 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %150 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %152 = load %struct.navpoint*, %struct.navpoint** %7, align 8
  %153 = call i32 @input_set_drvdata(%struct.input_dev* %151, %struct.navpoint* %152)
  %154 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %155 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @navpoint_irq, align 4
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.navpoint*, %struct.navpoint** %7, align 8
  %162 = call i32 @request_irq(i32 %156, i32 %157, i32 0, i32 %160, %struct.navpoint* %161)
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %79
  br label %191

166:                                              ; preds = %79
  %167 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %168 = call i32 @input_register_device(%struct.input_dev* %167)
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  br label %185

172:                                              ; preds = %166
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = load %struct.navpoint*, %struct.navpoint** %7, align 8
  %175 = call i32 @platform_set_drvdata(%struct.platform_device* %173, %struct.navpoint* %174)
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 0
  %178 = load %struct.navpoint_platform_data*, %struct.navpoint_platform_data** %4, align 8
  %179 = getelementptr inbounds %struct.navpoint_platform_data, %struct.navpoint_platform_data* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %182 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @dev_dbg(i32* %177, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %180, i32 %183)
  store i32 0, i32* %2, align 4
  br label %211

185:                                              ; preds = %171
  %186 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %187 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.navpoint*, %struct.navpoint** %7, align 8
  %190 = call i32 @free_irq(i32 %188, %struct.navpoint* %189)
  br label %191

191:                                              ; preds = %185, %165, %76
  %192 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %193 = call i32 @input_free_device(%struct.input_dev* %192)
  %194 = load %struct.navpoint*, %struct.navpoint** %7, align 8
  %195 = call i32 @kfree(%struct.navpoint* %194)
  %196 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %197 = call i32 @pxa_ssp_free(%struct.ssp_device* %196)
  br label %198

198:                                              ; preds = %191, %47
  %199 = load %struct.navpoint_platform_data*, %struct.navpoint_platform_data** %4, align 8
  %200 = getelementptr inbounds %struct.navpoint_platform_data, %struct.navpoint_platform_data* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i64 @gpio_is_valid(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %198
  %205 = load %struct.navpoint_platform_data*, %struct.navpoint_platform_data** %4, align 8
  %206 = getelementptr inbounds %struct.navpoint_platform_data, %struct.navpoint_platform_data* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @gpio_free(i32 %207)
  br label %209

209:                                              ; preds = %204, %198
  %210 = load i32, i32* %8, align 4
  store i32 %210, i32* %2, align 4
  br label %211

211:                                              ; preds = %209, %172, %34, %14
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local %struct.navpoint_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_request_one(i32, i32, i8*) #1

declare dso_local %struct.ssp_device* @pxa_ssp_request(i32, i32) #1

declare dso_local i32 @pxa_ssp_read_reg(%struct.ssp_device*, i32) #1

declare dso_local i32 @pxa_ssp_write_reg(%struct.ssp_device*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local %struct.navpoint* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.navpoint*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.navpoint*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.navpoint*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.navpoint*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.navpoint*) #1

declare dso_local i32 @pxa_ssp_free(%struct.ssp_device*) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
