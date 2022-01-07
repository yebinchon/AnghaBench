; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tc3589x-keypad.c_tc3589x_keypad_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tc3589x-keypad.c_tc3589x_keypad_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.tc3589x = type { i32 }
%struct.tc_keypad = type { i32, %struct.tc3589x*, %struct.input_dev*, %struct.tc3589x_keypad_platform_data* }
%struct.input_dev = type { i32, i32, i32, i32, %struct.TYPE_11__, i32, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32 }
%struct.tc3589x_keypad_platform_data = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"invalid keypad platform data\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to allocate input device\0A\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@tc3589x_keypad_open = common dso_local global i32 0, align 4
@tc3589x_keypad_close = common dso_local global i32 0, align 4
@TC3589x_MAX_KPROW = common dso_local global i32 0, align 4
@TC3589x_MAX_KPCOL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to build keymap\0A\00", align 1
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@tc3589x_keypad_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"tc3589x-keypad\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Could not allocate irq %d,error %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Could not register input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tc3589x_keypad_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc3589x_keypad_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tc3589x*, align 8
  %5 = alloca %struct.tc_keypad*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.tc3589x_keypad_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.tc3589x* @dev_get_drvdata(i32 %13)
  store %struct.tc3589x* %14, %struct.tc3589x** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call %struct.tc3589x_keypad_platform_data* @tc3589x_keypad_of_probe(%struct.TYPE_12__* %16)
  store %struct.tc3589x_keypad_platform_data* %17, %struct.tc3589x_keypad_platform_data** %7, align 8
  %18 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %7, align 8
  %19 = call i64 @IS_ERR(%struct.tc3589x_keypad_platform_data* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %7, align 8
  %26 = call i32 @PTR_ERR(%struct.tc3589x_keypad_platform_data* %25)
  store i32 %26, i32* %2, align 4
  br label %172

27:                                               ; preds = %1
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = call i32 @platform_get_irq(%struct.platform_device* %28, i32 0)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %2, align 4
  br label %172

34:                                               ; preds = %27
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.tc_keypad* @devm_kzalloc(%struct.TYPE_12__* %36, i32 32, i32 %37)
  store %struct.tc_keypad* %38, %struct.tc_keypad** %5, align 8
  %39 = load %struct.tc_keypad*, %struct.tc_keypad** %5, align 8
  %40 = icmp ne %struct.tc_keypad* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %172

44:                                               ; preds = %34
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_12__* %46)
  store %struct.input_dev* %47, %struct.input_dev** %6, align 8
  %48 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %49 = icmp ne %struct.input_dev* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %172

56:                                               ; preds = %44
  %57 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %7, align 8
  %58 = load %struct.tc_keypad*, %struct.tc_keypad** %5, align 8
  %59 = getelementptr inbounds %struct.tc_keypad, %struct.tc_keypad* %58, i32 0, i32 3
  store %struct.tc3589x_keypad_platform_data* %57, %struct.tc3589x_keypad_platform_data** %59, align 8
  %60 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %61 = load %struct.tc_keypad*, %struct.tc_keypad** %5, align 8
  %62 = getelementptr inbounds %struct.tc_keypad, %struct.tc_keypad* %61, i32 0, i32 2
  store %struct.input_dev* %60, %struct.input_dev** %62, align 8
  %63 = load %struct.tc3589x*, %struct.tc3589x** %4, align 8
  %64 = load %struct.tc_keypad*, %struct.tc_keypad** %5, align 8
  %65 = getelementptr inbounds %struct.tc_keypad, %struct.tc_keypad* %64, i32 0, i32 1
  store %struct.tc3589x* %63, %struct.tc3589x** %65, align 8
  %66 = load i32, i32* @BUS_I2C, align 4
  %67 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %68 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %74 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 8
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %78 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  store %struct.TYPE_12__* %76, %struct.TYPE_12__** %79, align 8
  %80 = load i32, i32* @tc3589x_keypad_open, align 4
  %81 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %82 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @tc3589x_keypad_close, align 4
  %84 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %85 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %7, align 8
  %87 = getelementptr inbounds %struct.tc3589x_keypad_platform_data, %struct.tc3589x_keypad_platform_data* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @TC3589x_MAX_KPROW, align 4
  %90 = load i32, i32* @TC3589x_MAX_KPCOL, align 4
  %91 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %92 = call i32 @matrix_keypad_build_keymap(i32 %88, i32* null, i32 %89, i32 %90, i32* null, %struct.input_dev* %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %56
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %2, align 4
  br label %172

100:                                              ; preds = %56
  %101 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %102 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.tc_keypad*, %struct.tc_keypad** %5, align 8
  %105 = getelementptr inbounds %struct.tc_keypad, %struct.tc_keypad* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %107 = load i32, i32* @EV_MSC, align 4
  %108 = load i32, i32* @MSC_SCAN, align 4
  %109 = call i32 @input_set_capability(%struct.input_dev* %106, i32 %107, i32 %108)
  %110 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %7, align 8
  %111 = getelementptr inbounds %struct.tc3589x_keypad_platform_data, %struct.tc3589x_keypad_platform_data* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %100
  %115 = load i32, i32* @EV_REP, align 4
  %116 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %117 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @__set_bit(i32 %115, i32 %118)
  br label %120

120:                                              ; preds = %114, %100
  %121 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %122 = load %struct.tc_keypad*, %struct.tc_keypad** %5, align 8
  %123 = call i32 @input_set_drvdata(%struct.input_dev* %121, %struct.tc_keypad* %122)
  %124 = load %struct.tc_keypad*, %struct.tc_keypad** %5, align 8
  %125 = call i32 @tc3589x_keypad_disable(%struct.tc_keypad* %124)
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @tc3589x_keypad_irq, align 4
  %130 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %7, align 8
  %131 = getelementptr inbounds %struct.tc3589x_keypad_platform_data, %struct.tc3589x_keypad_platform_data* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @IRQF_ONESHOT, align 4
  %134 = or i32 %132, %133
  %135 = load %struct.tc_keypad*, %struct.tc_keypad** %5, align 8
  %136 = call i32 @devm_request_threaded_irq(%struct.TYPE_12__* %127, i32 %128, i32* null, i32 %129, i32 %134, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), %struct.tc_keypad* %135)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %120
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %141, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %142, i32 %143)
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %2, align 4
  br label %172

146:                                              ; preds = %120
  %147 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %148 = call i32 @input_register_device(%struct.input_dev* %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %152, i32 0, i32 0
  %154 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %153, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %155 = load i32, i32* %8, align 4
  store i32 %155, i32* %2, align 4
  br label %172

156:                                              ; preds = %146
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 0
  %159 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %7, align 8
  %160 = getelementptr inbounds %struct.tc3589x_keypad_platform_data, %struct.tc3589x_keypad_platform_data* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @device_init_wakeup(%struct.TYPE_12__* %158, i32 %161)
  %163 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %164 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %163, i32 0, i32 0
  %165 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %7, align 8
  %166 = getelementptr inbounds %struct.tc3589x_keypad_platform_data, %struct.tc3589x_keypad_platform_data* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @device_set_wakeup_capable(%struct.TYPE_12__* %164, i32 %167)
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = load %struct.tc_keypad*, %struct.tc_keypad** %5, align 8
  %171 = call i32 @platform_set_drvdata(%struct.platform_device* %169, %struct.tc_keypad* %170)
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %156, %151, %139, %95, %50, %41, %32, %21
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.tc3589x* @dev_get_drvdata(i32) #1

declare dso_local %struct.tc3589x_keypad_platform_data* @tc3589x_keypad_of_probe(%struct.TYPE_12__*) #1

declare dso_local i64 @IS_ERR(%struct.tc3589x_keypad_platform_data*) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.tc3589x_keypad_platform_data*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.tc_keypad* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_12__*) #1

declare dso_local i32 @matrix_keypad_build_keymap(i32, i32*, i32, i32, i32*, %struct.input_dev*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.tc_keypad*) #1

declare dso_local i32 @tc3589x_keypad_disable(%struct.tc_keypad*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_12__*, i32, i32*, i32, i32, i8*, %struct.tc_keypad*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @device_set_wakeup_capable(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tc_keypad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
