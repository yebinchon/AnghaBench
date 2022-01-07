; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_88pm80x_onkey.c_pm80x_onkey_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_88pm80x_onkey.c_pm80x_onkey_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.pm80x_chip = type { i32 }
%struct.pm80x_onkey_info = type { i64, %struct.TYPE_10__*, %struct.pm80x_chip*, i32 }
%struct.TYPE_10__ = type { i8*, i8*, i32, i32*, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"no regmap!\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to allocate input dev\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"88pm80x_on\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"88pm80x_on/input0\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@pm80x_onkey_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"onkey\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to request IRQ: #%d: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Can't register input device: %d\0A\00", align 1
@PM800_RTC_MISC4 = common dso_local global i32 0, align 4
@PM800_LONG_ONKEY_EN = common dso_local global i32 0, align 4
@PM800_RTC_MISC3 = common dso_local global i32 0, align 4
@PM800_LONKEY_PRESS_TIME_MASK = common dso_local global i32 0, align 4
@PM800_LONKEY_PRESS_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pm80x_onkey_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm80x_onkey_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pm80x_chip*, align 8
  %5 = alloca %struct.pm80x_onkey_info*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.pm80x_chip* @dev_get_drvdata(i32 %10)
  store %struct.pm80x_chip* %11, %struct.pm80x_chip** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.pm80x_onkey_info* @kzalloc(i32 32, i32 %12)
  store %struct.pm80x_onkey_info* %13, %struct.pm80x_onkey_info** %5, align 8
  %14 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %15 = icmp ne %struct.pm80x_onkey_info* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %174

19:                                               ; preds = %1
  %20 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %21 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %22 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %21, i32 0, i32 2
  store %struct.pm80x_chip* %20, %struct.pm80x_chip** %22, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = call i64 @platform_get_irq(%struct.platform_device* %23, i32 0)
  %25 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %26 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %28 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %170

34:                                               ; preds = %19
  %35 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %36 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %35, i32 0, i32 2
  %37 = load %struct.pm80x_chip*, %struct.pm80x_chip** %36, align 8
  %38 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %41 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %43 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %34
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %170

52:                                               ; preds = %34
  %53 = call %struct.TYPE_10__* (...) @input_allocate_device()
  %54 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %55 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %54, i32 0, i32 1
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %55, align 8
  %56 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %57 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %56, i32 0, i32 1
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = icmp ne %struct.TYPE_10__* %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %52
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %170

66:                                               ; preds = %52
  %67 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %68 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %70, align 8
  %71 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %72 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %71, i32 0, i32 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %74, align 8
  %75 = load i32, i32* @BUS_I2C, align 4
  %76 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %77 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i32 %75, i32* %80, align 8
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %84 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %83, i32 0, i32 1
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  store %struct.TYPE_11__* %82, %struct.TYPE_11__** %87, align 8
  %88 = load i32, i32* @EV_KEY, align 4
  %89 = call i32 @BIT_MASK(i32 %88)
  %90 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %91 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %90, i32 0, i32 1
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %89, i32* %95, align 4
  %96 = load i32, i32* @KEY_POWER, align 4
  %97 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %98 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %97, i32 0, i32 1
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @__set_bit(i32 %96, i32 %101)
  %103 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %104 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %103, i32 0, i32 2
  %105 = load %struct.pm80x_chip*, %struct.pm80x_chip** %104, align 8
  %106 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %107 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* @pm80x_onkey_handler, align 4
  %110 = load i32, i32* @IRQF_ONESHOT, align 4
  %111 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %112 = call i32 @pm80x_request_irq(%struct.pm80x_chip* %105, i64 %108, i32 %109, i32 %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %struct.pm80x_onkey_info* %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %66
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %119 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %117, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %120, i32 %121)
  br label %165

123:                                              ; preds = %66
  %124 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %125 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %124, i32 0, i32 1
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = call i32 @input_register_device(%struct.TYPE_10__* %126)
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %123
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = load i32, i32* %6, align 4
  %134 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %132, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %133)
  br label %156

135:                                              ; preds = %123
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %138 = call i32 @platform_set_drvdata(%struct.platform_device* %136, %struct.pm80x_onkey_info* %137)
  %139 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %140 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @PM800_RTC_MISC4, align 4
  %143 = load i32, i32* @PM800_LONG_ONKEY_EN, align 4
  %144 = load i32, i32* @PM800_LONG_ONKEY_EN, align 4
  %145 = call i32 @regmap_update_bits(i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %147 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @PM800_RTC_MISC3, align 4
  %150 = load i32, i32* @PM800_LONKEY_PRESS_TIME_MASK, align 4
  %151 = load i32, i32* @PM800_LONKEY_PRESS_TIME, align 4
  %152 = call i32 @regmap_update_bits(i32 %148, i32 %149, i32 %150, i32 %151)
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 0
  %155 = call i32 @device_init_wakeup(%struct.TYPE_11__* %154, i32 1)
  store i32 0, i32* %2, align 4
  br label %174

156:                                              ; preds = %130
  %157 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %158 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %157, i32 0, i32 2
  %159 = load %struct.pm80x_chip*, %struct.pm80x_chip** %158, align 8
  %160 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %161 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %164 = call i32 @pm80x_free_irq(%struct.pm80x_chip* %159, i64 %162, %struct.pm80x_onkey_info* %163)
  br label %165

165:                                              ; preds = %156, %115
  %166 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %167 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %166, i32 0, i32 1
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = call i32 @input_free_device(%struct.TYPE_10__* %168)
  br label %170

170:                                              ; preds = %165, %60, %46, %31
  %171 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %5, align 8
  %172 = call i32 @kfree(%struct.pm80x_onkey_info* %171)
  %173 = load i32, i32* %6, align 4
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %170, %135, %16
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local %struct.pm80x_chip* @dev_get_drvdata(i32) #1

declare dso_local %struct.pm80x_onkey_info* @kzalloc(i32, i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local %struct.TYPE_10__* @input_allocate_device(...) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @pm80x_request_irq(%struct.pm80x_chip*, i64, i32, i32, i8*, %struct.pm80x_onkey_info*) #1

declare dso_local i32 @input_register_device(%struct.TYPE_10__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pm80x_onkey_info*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @pm80x_free_irq(%struct.pm80x_chip*, i64, %struct.pm80x_onkey_info*) #1

declare dso_local i32 @input_free_device(%struct.TYPE_10__*) #1

declare dso_local i32 @kfree(%struct.pm80x_onkey_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
