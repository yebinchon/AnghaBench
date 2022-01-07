; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_da9055_onkey.c_da9055_onkey_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_da9055_onkey.c_da9055_onkey_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.da9055 = type { i32 }
%struct.da9055_onkey = type { i32, %struct.da9055*, %struct.input_dev* }
%struct.input_dev = type { i8*, i8*, i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }

@.str = private unnamed_addr constant [6 x i8] c"ONKEY\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"da9055-onkey\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"da9055-onkey/input0\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@da9055_onkey_work = common dso_local global i32 0, align 4
@da9055_onkey_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Failed to register ONKEY IRQ %d, error = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Unable to register input device, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9055_onkey_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_onkey_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.da9055*, align 8
  %5 = alloca %struct.da9055_onkey*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.da9055* @dev_get_drvdata(i32 %12)
  store %struct.da9055* %13, %struct.da9055** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = call i32 @platform_get_irq_byname(%struct.platform_device* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %115

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.da9055_onkey* @devm_kzalloc(%struct.TYPE_5__* %23, i32 24, i32 %24)
  store %struct.da9055_onkey* %25, %struct.da9055_onkey** %5, align 8
  %26 = load %struct.da9055_onkey*, %struct.da9055_onkey** %5, align 8
  %27 = icmp ne %struct.da9055_onkey* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %21
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %115

34:                                               ; preds = %21
  %35 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %35, %struct.input_dev** %6, align 8
  %36 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %37 = icmp ne %struct.input_dev* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %115

44:                                               ; preds = %34
  %45 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %46 = load %struct.da9055_onkey*, %struct.da9055_onkey** %5, align 8
  %47 = getelementptr inbounds %struct.da9055_onkey, %struct.da9055_onkey* %46, i32 0, i32 2
  store %struct.input_dev* %45, %struct.input_dev** %47, align 8
  %48 = load %struct.da9055*, %struct.da9055** %4, align 8
  %49 = load %struct.da9055_onkey*, %struct.da9055_onkey** %5, align 8
  %50 = getelementptr inbounds %struct.da9055_onkey, %struct.da9055_onkey* %49, i32 0, i32 1
  store %struct.da9055* %48, %struct.da9055** %50, align 8
  %51 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %52 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %51, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %52, align 8
  %53 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %54 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %53, i32 0, i32 1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %58 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %59, align 8
  %60 = load i32, i32* @EV_KEY, align 4
  %61 = call i32 @BIT_MASK(i32 %60)
  %62 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %63 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* @KEY_POWER, align 4
  %67 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %68 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @__set_bit(i32 %66, i32 %69)
  %71 = load %struct.da9055_onkey*, %struct.da9055_onkey** %5, align 8
  %72 = getelementptr inbounds %struct.da9055_onkey, %struct.da9055_onkey* %71, i32 0, i32 0
  %73 = load i32, i32* @da9055_onkey_work, align 4
  %74 = call i32 @INIT_DELAYED_WORK(i32* %72, i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @da9055_onkey_irq, align 4
  %77 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %78 = load i32, i32* @IRQF_ONESHOT, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.da9055_onkey*, %struct.da9055_onkey** %5, align 8
  %81 = call i32 @request_threaded_irq(i32 %75, i32* null, i32 %76, i32 %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.da9055_onkey* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %44
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %86, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %87, i32 %88)
  br label %111

90:                                               ; preds = %44
  %91 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %92 = call i32 @input_register_device(%struct.input_dev* %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = load i32, i32* %8, align 4
  %99 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %97, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %98)
  br label %104

100:                                              ; preds = %90
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = load %struct.da9055_onkey*, %struct.da9055_onkey** %5, align 8
  %103 = call i32 @platform_set_drvdata(%struct.platform_device* %101, %struct.da9055_onkey* %102)
  store i32 0, i32* %2, align 4
  br label %115

104:                                              ; preds = %95
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.da9055_onkey*, %struct.da9055_onkey** %5, align 8
  %107 = call i32 @free_irq(i32 %105, %struct.da9055_onkey* %106)
  %108 = load %struct.da9055_onkey*, %struct.da9055_onkey** %5, align 8
  %109 = getelementptr inbounds %struct.da9055_onkey, %struct.da9055_onkey* %108, i32 0, i32 0
  %110 = call i32 @cancel_delayed_work_sync(i32* %109)
  br label %111

111:                                              ; preds = %104, %84
  %112 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %113 = call i32 @input_free_device(%struct.input_dev* %112)
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %111, %100, %38, %28, %18
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.da9055* @dev_get_drvdata(i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local %struct.da9055_onkey* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.da9055_onkey*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.da9055_onkey*) #1

declare dso_local i32 @free_irq(i32, %struct.da9055_onkey*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
