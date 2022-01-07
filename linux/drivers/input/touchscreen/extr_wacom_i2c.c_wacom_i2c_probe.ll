; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wacom_i2c.c_wacom_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wacom_i2c.c_wacom_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.wacom_i2c = type { %struct.input_dev*, %struct.i2c_client* }
%struct.input_dev = type { i8*, i32*, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.wacom_features = type { i32, i32, i32, i32, i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"i2c_check_functionality error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Wacom I2C Digitizer\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@wacom_i2c_open = common dso_local global i32 0, align 4
@wacom_i2c_close = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@BTN_TOOL_RUBBER = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i32 0, align 4
@BTN_STYLUS2 = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@wacom_i2c_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"wacom_i2c\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to enable IRQ, error: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Failed to register input device, error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wacom_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.wacom_i2c*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca %struct.wacom_features, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = bitcast %struct.wacom_features* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 20, i1 false)
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @I2C_FUNC_I2C, align 4
  %15 = call i32 @i2c_check_functionality(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 1
  %20 = call i32 (i32*, i8*, ...) @dev_err(i32* %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %176

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = call i32 @wacom_query_device(%struct.i2c_client* %24, %struct.wacom_features* %8)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %3, align 4
  br label %176

30:                                               ; preds = %23
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.wacom_i2c* @kzalloc(i32 16, i32 %31)
  store %struct.wacom_i2c* %32, %struct.wacom_i2c** %6, align 8
  %33 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %33, %struct.input_dev** %7, align 8
  %34 = load %struct.wacom_i2c*, %struct.wacom_i2c** %6, align 8
  %35 = icmp ne %struct.wacom_i2c* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %38 = icmp ne %struct.input_dev* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36, %30
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %170

42:                                               ; preds = %36
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = load %struct.wacom_i2c*, %struct.wacom_i2c** %6, align 8
  %45 = getelementptr inbounds %struct.wacom_i2c, %struct.wacom_i2c* %44, i32 0, i32 1
  store %struct.i2c_client* %43, %struct.i2c_client** %45, align 8
  %46 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %47 = load %struct.wacom_i2c*, %struct.wacom_i2c** %6, align 8
  %48 = getelementptr inbounds %struct.wacom_i2c, %struct.wacom_i2c* %47, i32 0, i32 0
  store %struct.input_dev* %46, %struct.input_dev** %48, align 8
  %49 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %50 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %50, align 8
  %51 = load i32, i32* @BUS_I2C, align 4
  %52 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %53 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 8
  %55 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %56 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 1386, i32* %57, align 8
  %58 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %8, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %61 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 1
  %65 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %66 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32* %64, i32** %67, align 8
  %68 = load i32, i32* @wacom_i2c_open, align 4
  %69 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %70 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @wacom_i2c_close, align 4
  %72 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %73 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @EV_KEY, align 4
  %75 = call i32 @BIT_MASK(i32 %74)
  %76 = load i32, i32* @EV_ABS, align 4
  %77 = call i32 @BIT_MASK(i32 %76)
  %78 = or i32 %75, %77
  %79 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %80 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %78
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* @BTN_TOOL_PEN, align 4
  %86 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %87 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @__set_bit(i32 %85, i32 %88)
  %90 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  %91 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %92 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @__set_bit(i32 %90, i32 %93)
  %95 = load i32, i32* @BTN_STYLUS, align 4
  %96 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %97 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @__set_bit(i32 %95, i32 %98)
  %100 = load i32, i32* @BTN_STYLUS2, align 4
  %101 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %102 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @__set_bit(i32 %100, i32 %103)
  %105 = load i32, i32* @BTN_TOUCH, align 4
  %106 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %107 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @__set_bit(i32 %105, i32 %108)
  %110 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %111 = load i32, i32* @ABS_X, align 4
  %112 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %8, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @input_set_abs_params(%struct.input_dev* %110, i32 %111, i32 0, i32 %113, i32 0, i32 0)
  %115 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %116 = load i32, i32* @ABS_Y, align 4
  %117 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %8, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @input_set_abs_params(%struct.input_dev* %115, i32 %116, i32 0, i32 %118, i32 0, i32 0)
  %120 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %121 = load i32, i32* @ABS_PRESSURE, align 4
  %122 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %8, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @input_set_abs_params(%struct.input_dev* %120, i32 %121, i32 0, i32 %123, i32 0, i32 0)
  %125 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %126 = load %struct.wacom_i2c*, %struct.wacom_i2c** %6, align 8
  %127 = call i32 @input_set_drvdata(%struct.input_dev* %125, %struct.wacom_i2c* %126)
  %128 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %129 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @wacom_i2c_irq, align 4
  %132 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %133 = load i32, i32* @IRQF_ONESHOT, align 4
  %134 = or i32 %132, %133
  %135 = load %struct.wacom_i2c*, %struct.wacom_i2c** %6, align 8
  %136 = call i32 @request_threaded_irq(i32 %130, i32* null, i32 %131, i32 %134, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.wacom_i2c* %135)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %42
  %140 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %141 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %140, i32 0, i32 1
  %142 = load i32, i32* %9, align 4
  %143 = call i32 (i32*, i8*, ...) @dev_err(i32* %141, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  br label %170

144:                                              ; preds = %42
  %145 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %146 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @disable_irq(i32 %147)
  %149 = load %struct.wacom_i2c*, %struct.wacom_i2c** %6, align 8
  %150 = getelementptr inbounds %struct.wacom_i2c, %struct.wacom_i2c* %149, i32 0, i32 0
  %151 = load %struct.input_dev*, %struct.input_dev** %150, align 8
  %152 = call i32 @input_register_device(%struct.input_dev* %151)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %144
  %156 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %157 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %156, i32 0, i32 1
  %158 = load i32, i32* %9, align 4
  %159 = call i32 (i32*, i8*, ...) @dev_err(i32* %157, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %158)
  br label %164

160:                                              ; preds = %144
  %161 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %162 = load %struct.wacom_i2c*, %struct.wacom_i2c** %6, align 8
  %163 = call i32 @i2c_set_clientdata(%struct.i2c_client* %161, %struct.wacom_i2c* %162)
  store i32 0, i32* %3, align 4
  br label %176

164:                                              ; preds = %155
  %165 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %166 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.wacom_i2c*, %struct.wacom_i2c** %6, align 8
  %169 = call i32 @free_irq(i32 %167, %struct.wacom_i2c* %168)
  br label %170

170:                                              ; preds = %164, %139, %39
  %171 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %172 = call i32 @input_free_device(%struct.input_dev* %171)
  %173 = load %struct.wacom_i2c*, %struct.wacom_i2c** %6, align 8
  %174 = call i32 @kfree(%struct.wacom_i2c* %173)
  %175 = load i32, i32* %9, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %170, %160, %28, %17
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, ...) #2

declare dso_local i32 @wacom_query_device(%struct.i2c_client*, %struct.wacom_features*) #2

declare dso_local %struct.wacom_i2c* @kzalloc(i32, i32) #2

declare dso_local %struct.input_dev* @input_allocate_device(...) #2

declare dso_local i32 @BIT_MASK(i32) #2

declare dso_local i32 @__set_bit(i32, i32) #2

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.wacom_i2c*) #2

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.wacom_i2c*) #2

declare dso_local i32 @disable_irq(i32) #2

declare dso_local i32 @input_register_device(%struct.input_dev*) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.wacom_i2c*) #2

declare dso_local i32 @free_irq(i32, %struct.wacom_i2c*) #2

declare dso_local i32 @input_free_device(%struct.input_dev*) #2

declare dso_local i32 @kfree(%struct.wacom_i2c*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
