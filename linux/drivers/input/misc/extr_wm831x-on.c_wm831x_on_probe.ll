; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_wm831x-on.c_wm831x_on_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_wm831x-on.c_wm831x_on_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.wm831x = type { i32 }
%struct.wm831x_on = type { %struct.TYPE_9__*, i32, %struct.wm831x* }
%struct.TYPE_9__ = type { i8*, i8*, %struct.TYPE_8__, i8**, i8** }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Can't allocate data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@wm831x_poll_on = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't allocate input dev\0A\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"wm831x_on\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"wm831x_on/input0\00", align 1
@wm831x_on_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Unable to request IRQ: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Can't register input device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm831x_on_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_on_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wm831x*, align 8
  %5 = alloca %struct.wm831x_on*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.wm831x* @dev_get_drvdata(i32 %11)
  store %struct.wm831x* %12, %struct.wm831x** %4, align 8
  %13 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = call i32 @platform_get_irq(%struct.platform_device* %14, i32 0)
  %16 = call i32 @wm831x_irq(%struct.wm831x* %13, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.wm831x_on* @devm_kzalloc(%struct.TYPE_10__* %18, i32 24, i32 %19)
  store %struct.wm831x_on* %20, %struct.wm831x_on** %5, align 8
  %21 = load %struct.wm831x_on*, %struct.wm831x_on** %5, align 8
  %22 = icmp ne %struct.wm831x_on* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %123

29:                                               ; preds = %1
  %30 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %31 = load %struct.wm831x_on*, %struct.wm831x_on** %5, align 8
  %32 = getelementptr inbounds %struct.wm831x_on, %struct.wm831x_on* %31, i32 0, i32 2
  store %struct.wm831x* %30, %struct.wm831x** %32, align 8
  %33 = load %struct.wm831x_on*, %struct.wm831x_on** %5, align 8
  %34 = getelementptr inbounds %struct.wm831x_on, %struct.wm831x_on* %33, i32 0, i32 1
  %35 = load i32, i32* @wm831x_poll_on, align 4
  %36 = call i32 @INIT_DELAYED_WORK(i32* %34, i32 %35)
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call %struct.TYPE_9__* @devm_input_allocate_device(%struct.TYPE_10__* %38)
  %40 = load %struct.wm831x_on*, %struct.wm831x_on** %5, align 8
  %41 = getelementptr inbounds %struct.wm831x_on, %struct.wm831x_on* %40, i32 0, i32 0
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %41, align 8
  %42 = load %struct.wm831x_on*, %struct.wm831x_on** %5, align 8
  %43 = getelementptr inbounds %struct.wm831x_on, %struct.wm831x_on* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = icmp ne %struct.TYPE_9__* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %29
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %121

52:                                               ; preds = %29
  %53 = load i32, i32* @EV_KEY, align 4
  %54 = call i8* @BIT_MASK(i32 %53)
  %55 = load %struct.wm831x_on*, %struct.wm831x_on** %5, align 8
  %56 = getelementptr inbounds %struct.wm831x_on, %struct.wm831x_on* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 4
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  store i8* %54, i8** %60, align 8
  %61 = load i32, i32* @KEY_POWER, align 4
  %62 = call i8* @BIT_MASK(i32 %61)
  %63 = load %struct.wm831x_on*, %struct.wm831x_on** %5, align 8
  %64 = getelementptr inbounds %struct.wm831x_on, %struct.wm831x_on* %63, i32 0, i32 0
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 3
  %67 = load i8**, i8*** %66, align 8
  %68 = load i32, i32* @KEY_POWER, align 4
  %69 = call i64 @BIT_WORD(i32 %68)
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  store i8* %62, i8** %70, align 8
  %71 = load %struct.wm831x_on*, %struct.wm831x_on** %5, align 8
  %72 = getelementptr inbounds %struct.wm831x_on, %struct.wm831x_on* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %74, align 8
  %75 = load %struct.wm831x_on*, %struct.wm831x_on** %5, align 8
  %76 = getelementptr inbounds %struct.wm831x_on, %struct.wm831x_on* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %78, align 8
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = load %struct.wm831x_on*, %struct.wm831x_on** %5, align 8
  %82 = getelementptr inbounds %struct.wm831x_on, %struct.wm831x_on* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %85, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @wm831x_on_irq, align 4
  %88 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %89 = load i32, i32* @IRQF_ONESHOT, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.wm831x_on*, %struct.wm831x_on** %5, align 8
  %92 = call i32 @request_threaded_irq(i32 %86, i32* null, i32 %87, i32 %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.wm831x_on* %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %52
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = load i32, i32* %7, align 4
  %99 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  br label %120

100:                                              ; preds = %52
  %101 = load %struct.wm831x_on*, %struct.wm831x_on** %5, align 8
  %102 = getelementptr inbounds %struct.wm831x_on, %struct.wm831x_on* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = call i32 @input_register_device(%struct.TYPE_9__* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @dev_dbg(%struct.TYPE_10__* %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %110)
  br label %116

112:                                              ; preds = %100
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = load %struct.wm831x_on*, %struct.wm831x_on** %5, align 8
  %115 = call i32 @platform_set_drvdata(%struct.platform_device* %113, %struct.wm831x_on* %114)
  store i32 0, i32* %2, align 4
  br label %123

116:                                              ; preds = %107
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.wm831x_on*, %struct.wm831x_on** %5, align 8
  %119 = call i32 @free_irq(i32 %117, %struct.wm831x_on* %118)
  br label %120

120:                                              ; preds = %116, %95
  br label %121

121:                                              ; preds = %120, %46
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %121, %112, %23
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.wm831x* @dev_get_drvdata(i32) #1

declare dso_local i32 @wm831x_irq(%struct.wm831x*, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.wm831x_on* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local %struct.TYPE_9__* @devm_input_allocate_device(%struct.TYPE_10__*) #1

declare dso_local i8* @BIT_MASK(i32) #1

declare dso_local i64 @BIT_WORD(i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.wm831x_on*) #1

declare dso_local i32 @input_register_device(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wm831x_on*) #1

declare dso_local i32 @free_irq(i32, %struct.wm831x_on*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
