; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_da9052_onkey.c_da9052_onkey_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_da9052_onkey.c_da9052_onkey_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.da9052 = type { %struct.TYPE_4__* }
%struct.da9052_onkey = type { i32, %struct.da9052*, %struct.input_dev* }
%struct.input_dev = type { i8*, i8*, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }

@.str = private unnamed_addr constant [33 x i8] c"Failed to get the driver's data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@da9052_onkey_work = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"da9052-onkey\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"da9052-onkey/input0\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@DA9052_IRQ_NONKEY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"ONKEY\00", align 1
@da9052_onkey_irq = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to register ONKEY IRQ: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Unable to register input device, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9052_onkey_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_onkey_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.da9052*, align 8
  %5 = alloca %struct.da9052_onkey*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.da9052* @dev_get_drvdata(i32 %11)
  store %struct.da9052* %12, %struct.da9052** %4, align 8
  %13 = load %struct.da9052*, %struct.da9052** %4, align 8
  %14 = icmp ne %struct.da9052* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %116

21:                                               ; preds = %1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.da9052_onkey* @kzalloc(i32 24, i32 %22)
  store %struct.da9052_onkey* %23, %struct.da9052_onkey** %5, align 8
  %24 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %24, %struct.input_dev** %6, align 8
  %25 = load %struct.da9052_onkey*, %struct.da9052_onkey** %5, align 8
  %26 = icmp ne %struct.da9052_onkey* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %29 = icmp ne %struct.input_dev* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %110

36:                                               ; preds = %27
  %37 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %38 = load %struct.da9052_onkey*, %struct.da9052_onkey** %5, align 8
  %39 = getelementptr inbounds %struct.da9052_onkey, %struct.da9052_onkey* %38, i32 0, i32 2
  store %struct.input_dev* %37, %struct.input_dev** %39, align 8
  %40 = load %struct.da9052*, %struct.da9052** %4, align 8
  %41 = load %struct.da9052_onkey*, %struct.da9052_onkey** %5, align 8
  %42 = getelementptr inbounds %struct.da9052_onkey, %struct.da9052_onkey* %41, i32 0, i32 1
  store %struct.da9052* %40, %struct.da9052** %42, align 8
  %43 = load %struct.da9052_onkey*, %struct.da9052_onkey** %5, align 8
  %44 = getelementptr inbounds %struct.da9052_onkey, %struct.da9052_onkey* %43, i32 0, i32 0
  %45 = load i32, i32* @da9052_onkey_work, align 4
  %46 = call i32 @INIT_DELAYED_WORK(i32* %44, i32 %45)
  %47 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %48 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %47, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %48, align 8
  %49 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %50 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %49, i32 0, i32 1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %50, align 8
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %54 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %55, align 8
  %56 = load i32, i32* @EV_KEY, align 4
  %57 = call i32 @BIT_MASK(i32 %56)
  %58 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %59 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* @KEY_POWER, align 4
  %63 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %64 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @__set_bit(i32 %62, i32 %65)
  %67 = load %struct.da9052_onkey*, %struct.da9052_onkey** %5, align 8
  %68 = getelementptr inbounds %struct.da9052_onkey, %struct.da9052_onkey* %67, i32 0, i32 1
  %69 = load %struct.da9052*, %struct.da9052** %68, align 8
  %70 = load i32, i32* @DA9052_IRQ_NONKEY, align 4
  %71 = load i32, i32* @da9052_onkey_irq, align 4
  %72 = load %struct.da9052_onkey*, %struct.da9052_onkey** %5, align 8
  %73 = call i32 @da9052_request_irq(%struct.da9052* %69, i32 %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %71, %struct.da9052_onkey* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %36
  %77 = load %struct.da9052_onkey*, %struct.da9052_onkey** %5, align 8
  %78 = getelementptr inbounds %struct.da9052_onkey, %struct.da9052_onkey* %77, i32 0, i32 1
  %79 = load %struct.da9052*, %struct.da9052** %78, align 8
  %80 = getelementptr inbounds %struct.da9052, %struct.da9052* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  br label %110

84:                                               ; preds = %36
  %85 = load %struct.da9052_onkey*, %struct.da9052_onkey** %5, align 8
  %86 = getelementptr inbounds %struct.da9052_onkey, %struct.da9052_onkey* %85, i32 0, i32 2
  %87 = load %struct.input_dev*, %struct.input_dev** %86, align 8
  %88 = call i32 @input_register_device(%struct.input_dev* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load i32, i32* %7, align 4
  %95 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %93, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %94)
  br label %100

96:                                               ; preds = %84
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = load %struct.da9052_onkey*, %struct.da9052_onkey** %5, align 8
  %99 = call i32 @platform_set_drvdata(%struct.platform_device* %97, %struct.da9052_onkey* %98)
  store i32 0, i32* %2, align 4
  br label %116

100:                                              ; preds = %91
  %101 = load %struct.da9052_onkey*, %struct.da9052_onkey** %5, align 8
  %102 = getelementptr inbounds %struct.da9052_onkey, %struct.da9052_onkey* %101, i32 0, i32 1
  %103 = load %struct.da9052*, %struct.da9052** %102, align 8
  %104 = load i32, i32* @DA9052_IRQ_NONKEY, align 4
  %105 = load %struct.da9052_onkey*, %struct.da9052_onkey** %5, align 8
  %106 = call i32 @da9052_free_irq(%struct.da9052* %103, i32 %104, %struct.da9052_onkey* %105)
  %107 = load %struct.da9052_onkey*, %struct.da9052_onkey** %5, align 8
  %108 = getelementptr inbounds %struct.da9052_onkey, %struct.da9052_onkey* %107, i32 0, i32 0
  %109 = call i32 @cancel_delayed_work_sync(i32* %108)
  br label %110

110:                                              ; preds = %100, %76, %30
  %111 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %112 = call i32 @input_free_device(%struct.input_dev* %111)
  %113 = load %struct.da9052_onkey*, %struct.da9052_onkey** %5, align 8
  %114 = call i32 @kfree(%struct.da9052_onkey* %113)
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %110, %96, %15
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.da9052* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local %struct.da9052_onkey* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @da9052_request_irq(%struct.da9052*, i32, i8*, i32, %struct.da9052_onkey*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.da9052_onkey*) #1

declare dso_local i32 @da9052_free_irq(%struct.da9052*, i32, %struct.da9052_onkey*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.da9052_onkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
