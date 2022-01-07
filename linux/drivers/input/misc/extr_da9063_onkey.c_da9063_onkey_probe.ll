; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_da9063_onkey.c_da9063_onkey_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_da9063_onkey.c_da9063_onkey_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.da9063_onkey = type { i32, %struct.TYPE_13__*, i32, i32, %struct.TYPE_11__*, i32, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i8*, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_11__ = type { i8* }
%struct.of_device_id = type { %struct.TYPE_11__* }

@da9063_compatible_reg_id_table = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to allocate memory.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Parent regmap unavailable.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"dlg,disable-key-power\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to allocated input device.\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@da9063_poll_on = common dso_local global i32 0, align 4
@da9063_cancel_poll = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Failed to add cancel poll action: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ONKEY\00", align 1
@da9063_onkey_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Failed to request IRQ %d: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Failed to register input device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9063_onkey_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9063_onkey_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.da9063_onkey*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @da9063_compatible_reg_id_table, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.of_device_id* @of_match_node(i32 %8, i32 %12)
  store %struct.of_device_id* %13, %struct.of_device_id** %5, align 8
  %14 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %15 = icmp ne %struct.of_device_id* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %181

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.da9063_onkey* @devm_kzalloc(%struct.TYPE_14__* %21, i32 48, i32 %22)
  store %struct.da9063_onkey* %23, %struct.da9063_onkey** %4, align 8
  %24 = load %struct.da9063_onkey*, %struct.da9063_onkey** %4, align 8
  %25 = icmp ne %struct.da9063_onkey* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %181

32:                                               ; preds = %19
  %33 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %34 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %33, i32 0, i32 0
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = load %struct.da9063_onkey*, %struct.da9063_onkey** %4, align 8
  %37 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %36, i32 0, i32 4
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %37, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load %struct.da9063_onkey*, %struct.da9063_onkey** %4, align 8
  %41 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %40, i32 0, i32 6
  store %struct.TYPE_14__* %39, %struct.TYPE_14__** %41, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_get_regmap(i32 %45, i32* null)
  %47 = load %struct.da9063_onkey*, %struct.da9063_onkey** %4, align 8
  %48 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load %struct.da9063_onkey*, %struct.da9063_onkey** %4, align 8
  %50 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %32
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @ENXIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %181

59:                                               ; preds = %32
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @of_property_read_bool(i32 %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = load %struct.da9063_onkey*, %struct.da9063_onkey** %4, align 8
  %69 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = call %struct.TYPE_13__* @devm_input_allocate_device(%struct.TYPE_14__* %71)
  %73 = load %struct.da9063_onkey*, %struct.da9063_onkey** %4, align 8
  %74 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %73, i32 0, i32 1
  store %struct.TYPE_13__* %72, %struct.TYPE_13__** %74, align 8
  %75 = load %struct.da9063_onkey*, %struct.da9063_onkey** %4, align 8
  %76 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %75, i32 0, i32 1
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = icmp ne %struct.TYPE_13__* %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %59
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %181

85:                                               ; preds = %59
  %86 = load %struct.da9063_onkey*, %struct.da9063_onkey** %4, align 8
  %87 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %86, i32 0, i32 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.da9063_onkey*, %struct.da9063_onkey** %4, align 8
  %92 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %91, i32 0, i32 1
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  store i8* %90, i8** %94, align 8
  %95 = load %struct.da9063_onkey*, %struct.da9063_onkey** %4, align 8
  %96 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.da9063_onkey*, %struct.da9063_onkey** %4, align 8
  %99 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %98, i32 0, i32 4
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @snprintf(i32 %97, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %102)
  %104 = load %struct.da9063_onkey*, %struct.da9063_onkey** %4, align 8
  %105 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.da9063_onkey*, %struct.da9063_onkey** %4, align 8
  %108 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %107, i32 0, i32 1
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 2
  store i32 %106, i32* %110, align 8
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = load %struct.da9063_onkey*, %struct.da9063_onkey** %4, align 8
  %114 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %113, i32 0, i32 1
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  store %struct.TYPE_14__* %112, %struct.TYPE_14__** %117, align 8
  %118 = load %struct.da9063_onkey*, %struct.da9063_onkey** %4, align 8
  %119 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %118, i32 0, i32 1
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = load i32, i32* @EV_KEY, align 4
  %122 = load i32, i32* @KEY_POWER, align 4
  %123 = call i32 @input_set_capability(%struct.TYPE_13__* %120, i32 %121, i32 %122)
  %124 = load %struct.da9063_onkey*, %struct.da9063_onkey** %4, align 8
  %125 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %124, i32 0, i32 2
  %126 = load i32, i32* @da9063_poll_on, align 4
  %127 = call i32 @INIT_DELAYED_WORK(i32* %125, i32 %126)
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = load i32, i32* @da9063_cancel_poll, align 4
  %131 = load %struct.da9063_onkey*, %struct.da9063_onkey** %4, align 8
  %132 = call i32 @devm_add_action(%struct.TYPE_14__* %129, i32 %130, %struct.da9063_onkey* %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %85
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = load i32, i32* %7, align 4
  %139 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %137, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %2, align 4
  br label %181

141:                                              ; preds = %85
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = call i32 @platform_get_irq_byname(%struct.platform_device* %142, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i32, i32* %6, align 4
  store i32 %147, i32* %2, align 4
  br label %181

148:                                              ; preds = %141
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @da9063_onkey_irq_handler, align 4
  %153 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %154 = load i32, i32* @IRQF_ONESHOT, align 4
  %155 = or i32 %153, %154
  %156 = load %struct.da9063_onkey*, %struct.da9063_onkey** %4, align 8
  %157 = call i32 @devm_request_threaded_irq(%struct.TYPE_14__* %150, i32 %151, i32* null, i32 %152, i32 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), %struct.da9063_onkey* %156)
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %148
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* %7, align 4
  %165 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %162, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %163, i32 %164)
  %166 = load i32, i32* %7, align 4
  store i32 %166, i32* %2, align 4
  br label %181

167:                                              ; preds = %148
  %168 = load %struct.da9063_onkey*, %struct.da9063_onkey** %4, align 8
  %169 = getelementptr inbounds %struct.da9063_onkey, %struct.da9063_onkey* %168, i32 0, i32 1
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %169, align 8
  %171 = call i32 @input_register_device(%struct.TYPE_13__* %170)
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %167
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 0
  %177 = load i32, i32* %7, align 4
  %178 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %176, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* %7, align 4
  store i32 %179, i32* %2, align 4
  br label %181

180:                                              ; preds = %167
  store i32 0, i32* %2, align 4
  br label %181

181:                                              ; preds = %180, %174, %160, %146, %135, %79, %53, %26, %16
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local %struct.da9063_onkey* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local %struct.TYPE_13__* @devm_input_allocate_device(%struct.TYPE_14__*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @devm_add_action(%struct.TYPE_14__*, i32, %struct.da9063_onkey*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_14__*, i32, i32*, i32, i32, i8*, %struct.da9063_onkey*) #1

declare dso_local i32 @input_register_device(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
