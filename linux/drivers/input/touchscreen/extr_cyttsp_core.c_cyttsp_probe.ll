; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cyttsp_core.c_cyttsp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cyttsp_core.c_cyttsp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyttsp = type { i32, %struct.device*, i32, i32, i32, %struct.cyttsp_bus_ops*, %struct.input_dev* }
%struct.input_dev = type { i8*, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { %struct.device* }
%struct.TYPE_3__ = type { i32 }
%struct.cyttsp_bus_ops = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to request reset gpio, error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Cypress TTSP TouchScreen\00", align 1
@cyttsp_open = common dso_local global i32 0, align 4
@cyttsp_close = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@CY_MAX_ID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Unable to init MT slots.\0A\00", align 1
@cyttsp_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"cyttsp\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"failed to request IRQ %d, err: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"failed to register input device: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cyttsp* @cyttsp_probe(%struct.cyttsp_bus_ops* %0, %struct.device* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.cyttsp*, align 8
  %6 = alloca %struct.cyttsp_bus_ops*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.cyttsp*, align 8
  %11 = alloca %struct.input_dev*, align 8
  %12 = alloca i32, align 4
  store %struct.cyttsp_bus_ops* %0, %struct.cyttsp_bus_ops** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = load i64, i64* %9, align 8
  %15 = add i64 48, %14
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.cyttsp* @devm_kzalloc(%struct.device* %13, i32 %16, i32 %17)
  store %struct.cyttsp* %18, %struct.cyttsp** %10, align 8
  %19 = load %struct.cyttsp*, %struct.cyttsp** %10, align 8
  %20 = icmp ne %struct.cyttsp* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.cyttsp* @ERR_PTR(i32 %23)
  store %struct.cyttsp* %24, %struct.cyttsp** %5, align 8
  br label %186

25:                                               ; preds = %4
  %26 = load %struct.device*, %struct.device** %7, align 8
  %27 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %26)
  store %struct.input_dev* %27, %struct.input_dev** %11, align 8
  %28 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %29 = icmp ne %struct.input_dev* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.cyttsp* @ERR_PTR(i32 %32)
  store %struct.cyttsp* %33, %struct.cyttsp** %5, align 8
  br label %186

34:                                               ; preds = %25
  %35 = load %struct.device*, %struct.device** %7, align 8
  %36 = load %struct.cyttsp*, %struct.cyttsp** %10, align 8
  %37 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %36, i32 0, i32 1
  store %struct.device* %35, %struct.device** %37, align 8
  %38 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %39 = load %struct.cyttsp*, %struct.cyttsp** %10, align 8
  %40 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %39, i32 0, i32 6
  store %struct.input_dev* %38, %struct.input_dev** %40, align 8
  %41 = load %struct.cyttsp_bus_ops*, %struct.cyttsp_bus_ops** %6, align 8
  %42 = load %struct.cyttsp*, %struct.cyttsp** %10, align 8
  %43 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %42, i32 0, i32 5
  store %struct.cyttsp_bus_ops* %41, %struct.cyttsp_bus_ops** %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.cyttsp*, %struct.cyttsp** %10, align 8
  %46 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.device*, %struct.device** %7, align 8
  %48 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %49 = call i32 @devm_gpiod_get_optional(%struct.device* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.cyttsp*, %struct.cyttsp** %10, align 8
  %51 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.cyttsp*, %struct.cyttsp** %10, align 8
  %53 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @IS_ERR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %34
  %58 = load %struct.cyttsp*, %struct.cyttsp** %10, align 8
  %59 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @PTR_ERR(i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load %struct.device*, %struct.device** %7, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %12, align 4
  %66 = call %struct.cyttsp* @ERR_PTR(i32 %65)
  store %struct.cyttsp* %66, %struct.cyttsp** %5, align 8
  br label %186

67:                                               ; preds = %34
  %68 = load %struct.cyttsp*, %struct.cyttsp** %10, align 8
  %69 = call i32 @cyttsp_parse_properties(%struct.cyttsp* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %12, align 4
  %74 = call %struct.cyttsp* @ERR_PTR(i32 %73)
  store %struct.cyttsp* %74, %struct.cyttsp** %5, align 8
  br label %186

75:                                               ; preds = %67
  %76 = load %struct.cyttsp*, %struct.cyttsp** %10, align 8
  %77 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %76, i32 0, i32 3
  %78 = call i32 @init_completion(i32* %77)
  %79 = load %struct.cyttsp*, %struct.cyttsp** %10, align 8
  %80 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.device*, %struct.device** %7, align 8
  %83 = call i8* @dev_name(%struct.device* %82)
  %84 = call i32 @snprintf(i32 %81, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  %85 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %86 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %85, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** %86, align 8
  %87 = load %struct.cyttsp*, %struct.cyttsp** %10, align 8
  %88 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %91 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = load %struct.cyttsp_bus_ops*, %struct.cyttsp_bus_ops** %6, align 8
  %93 = getelementptr inbounds %struct.cyttsp_bus_ops, %struct.cyttsp_bus_ops* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %96 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  %98 = load %struct.cyttsp*, %struct.cyttsp** %10, align 8
  %99 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %98, i32 0, i32 1
  %100 = load %struct.device*, %struct.device** %99, align 8
  %101 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %102 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store %struct.device* %100, %struct.device** %103, align 8
  %104 = load i32, i32* @cyttsp_open, align 4
  %105 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %106 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @cyttsp_close, align 4
  %108 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %109 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 8
  %110 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %111 = load %struct.cyttsp*, %struct.cyttsp** %10, align 8
  %112 = call i32 @input_set_drvdata(%struct.input_dev* %110, %struct.cyttsp* %111)
  %113 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %114 = load i32, i32* @EV_ABS, align 4
  %115 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %116 = call i32 @input_set_capability(%struct.input_dev* %113, i32 %114, i32 %115)
  %117 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %118 = load i32, i32* @EV_ABS, align 4
  %119 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %120 = call i32 @input_set_capability(%struct.input_dev* %117, i32 %118, i32 %119)
  %121 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %122 = call i32 @touchscreen_parse_properties(%struct.input_dev* %121, i32 1, i32* null)
  %123 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %124 = load i32, i32* @CY_MAX_ID, align 4
  %125 = call i32 @input_mt_init_slots(%struct.input_dev* %123, i32 %124, i32 0)
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %75
  %129 = load %struct.device*, %struct.device** %7, align 8
  %130 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %129, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %131 = load i32, i32* %12, align 4
  %132 = call %struct.cyttsp* @ERR_PTR(i32 %131)
  store %struct.cyttsp* %132, %struct.cyttsp** %5, align 8
  br label %186

133:                                              ; preds = %75
  %134 = load %struct.device*, %struct.device** %7, align 8
  %135 = load %struct.cyttsp*, %struct.cyttsp** %10, align 8
  %136 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @cyttsp_irq, align 4
  %139 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %140 = load i32, i32* @IRQF_ONESHOT, align 4
  %141 = or i32 %139, %140
  %142 = load %struct.cyttsp*, %struct.cyttsp** %10, align 8
  %143 = call i32 @devm_request_threaded_irq(%struct.device* %134, i32 %137, i32* null, i32 %138, i32 %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %struct.cyttsp* %142)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %133
  %147 = load %struct.cyttsp*, %struct.cyttsp** %10, align 8
  %148 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %147, i32 0, i32 1
  %149 = load %struct.device*, %struct.device** %148, align 8
  %150 = load %struct.cyttsp*, %struct.cyttsp** %10, align 8
  %151 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %149, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %152, i32 %153)
  %155 = load i32, i32* %12, align 4
  %156 = call %struct.cyttsp* @ERR_PTR(i32 %155)
  store %struct.cyttsp* %156, %struct.cyttsp** %5, align 8
  br label %186

157:                                              ; preds = %133
  %158 = load %struct.cyttsp*, %struct.cyttsp** %10, align 8
  %159 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @disable_irq(i32 %160)
  %162 = load %struct.cyttsp*, %struct.cyttsp** %10, align 8
  %163 = call i32 @cyttsp_hard_reset(%struct.cyttsp* %162)
  %164 = load %struct.cyttsp*, %struct.cyttsp** %10, align 8
  %165 = call i32 @cyttsp_power_on(%struct.cyttsp* %164)
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %12, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %157
  %169 = load i32, i32* %12, align 4
  %170 = call %struct.cyttsp* @ERR_PTR(i32 %169)
  store %struct.cyttsp* %170, %struct.cyttsp** %5, align 8
  br label %186

171:                                              ; preds = %157
  %172 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %173 = call i32 @input_register_device(%struct.input_dev* %172)
  store i32 %173, i32* %12, align 4
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %171
  %177 = load %struct.cyttsp*, %struct.cyttsp** %10, align 8
  %178 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %177, i32 0, i32 1
  %179 = load %struct.device*, %struct.device** %178, align 8
  %180 = load i32, i32* %12, align 4
  %181 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %179, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* %12, align 4
  %183 = call %struct.cyttsp* @ERR_PTR(i32 %182)
  store %struct.cyttsp* %183, %struct.cyttsp** %5, align 8
  br label %186

184:                                              ; preds = %171
  %185 = load %struct.cyttsp*, %struct.cyttsp** %10, align 8
  store %struct.cyttsp* %185, %struct.cyttsp** %5, align 8
  br label %186

186:                                              ; preds = %184, %176, %168, %146, %128, %72, %57, %30, %21
  %187 = load %struct.cyttsp*, %struct.cyttsp** %5, align 8
  ret %struct.cyttsp* %187
}

declare dso_local %struct.cyttsp* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.cyttsp* @ERR_PTR(i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @cyttsp_parse_properties(%struct.cyttsp*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.cyttsp*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @touchscreen_parse_properties(%struct.input_dev*, i32, i32*) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.cyttsp*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @cyttsp_hard_reset(%struct.cyttsp*) #1

declare dso_local i32 @cyttsp_power_on(%struct.cyttsp*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
