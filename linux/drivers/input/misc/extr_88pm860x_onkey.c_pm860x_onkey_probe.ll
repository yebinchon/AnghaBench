; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_88pm860x_onkey.c_pm860x_onkey_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_88pm860x_onkey.c_pm860x_onkey_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.pm860x_chip = type { i64, i32, i32, i32 }
%struct.pm860x_onkey_info = type { i32, %struct.TYPE_11__*, %struct.TYPE_12__*, i32, %struct.pm860x_chip* }
%struct.TYPE_11__ = type { i8*, i8*, i8**, i8**, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_9__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHIP_PM8607 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Failed to allocate input dev\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"88pm860x_on\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"88pm860x_on/input0\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Can't register input device: %d\0A\00", align 1
@pm860x_onkey_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"onkey\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to request IRQ: #%d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pm860x_onkey_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_onkey_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pm860x_chip*, align 8
  %5 = alloca %struct.pm860x_onkey_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.pm860x_chip* @dev_get_drvdata(i32 %11)
  store %struct.pm860x_chip* %12, %struct.pm860x_chip** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = call i32 @platform_get_irq(%struct.platform_device* %13, i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %156

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.pm860x_onkey_info* @devm_kzalloc(%struct.TYPE_12__* %22, i32 40, i32 %23)
  store %struct.pm860x_onkey_info* %24, %struct.pm860x_onkey_info** %5, align 8
  %25 = load %struct.pm860x_onkey_info*, %struct.pm860x_onkey_info** %5, align 8
  %26 = icmp ne %struct.pm860x_onkey_info* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %156

30:                                               ; preds = %20
  %31 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %32 = load %struct.pm860x_onkey_info*, %struct.pm860x_onkey_info** %5, align 8
  %33 = getelementptr inbounds %struct.pm860x_onkey_info, %struct.pm860x_onkey_info* %32, i32 0, i32 4
  store %struct.pm860x_chip* %31, %struct.pm860x_chip** %33, align 8
  %34 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %35 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CHIP_PM8607, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %41 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  br label %47

43:                                               ; preds = %30
  %44 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %45 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i32 [ %42, %39 ], [ %46, %43 ]
  %49 = load %struct.pm860x_onkey_info*, %struct.pm860x_onkey_info** %5, align 8
  %50 = getelementptr inbounds %struct.pm860x_onkey_info, %struct.pm860x_onkey_info* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load %struct.pm860x_onkey_info*, %struct.pm860x_onkey_info** %5, align 8
  %54 = getelementptr inbounds %struct.pm860x_onkey_info, %struct.pm860x_onkey_info* %53, i32 0, i32 2
  store %struct.TYPE_12__* %52, %struct.TYPE_12__** %54, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.pm860x_onkey_info*, %struct.pm860x_onkey_info** %5, align 8
  %57 = getelementptr inbounds %struct.pm860x_onkey_info, %struct.pm860x_onkey_info* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call %struct.TYPE_11__* @devm_input_allocate_device(%struct.TYPE_12__* %59)
  %61 = load %struct.pm860x_onkey_info*, %struct.pm860x_onkey_info** %5, align 8
  %62 = getelementptr inbounds %struct.pm860x_onkey_info, %struct.pm860x_onkey_info* %61, i32 0, i32 1
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %62, align 8
  %63 = load %struct.pm860x_onkey_info*, %struct.pm860x_onkey_info** %5, align 8
  %64 = getelementptr inbounds %struct.pm860x_onkey_info, %struct.pm860x_onkey_info* %63, i32 0, i32 1
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = icmp ne %struct.TYPE_11__* %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %47
  %68 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %69 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i32, i8*, ...) @dev_err(i32 %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %156

74:                                               ; preds = %47
  %75 = load %struct.pm860x_onkey_info*, %struct.pm860x_onkey_info** %5, align 8
  %76 = getelementptr inbounds %struct.pm860x_onkey_info, %struct.pm860x_onkey_info* %75, i32 0, i32 1
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %78, align 8
  %79 = load %struct.pm860x_onkey_info*, %struct.pm860x_onkey_info** %5, align 8
  %80 = getelementptr inbounds %struct.pm860x_onkey_info, %struct.pm860x_onkey_info* %79, i32 0, i32 1
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %82, align 8
  %83 = load i32, i32* @BUS_I2C, align 4
  %84 = load %struct.pm860x_onkey_info*, %struct.pm860x_onkey_info** %5, align 8
  %85 = getelementptr inbounds %struct.pm860x_onkey_info, %struct.pm860x_onkey_info* %84, i32 0, i32 1
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  store i32 %83, i32* %88, align 8
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = load %struct.pm860x_onkey_info*, %struct.pm860x_onkey_info** %5, align 8
  %92 = getelementptr inbounds %struct.pm860x_onkey_info, %struct.pm860x_onkey_info* %91, i32 0, i32 1
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  store %struct.TYPE_12__* %90, %struct.TYPE_12__** %95, align 8
  %96 = load i32, i32* @EV_KEY, align 4
  %97 = call i8* @BIT_MASK(i32 %96)
  %98 = load %struct.pm860x_onkey_info*, %struct.pm860x_onkey_info** %5, align 8
  %99 = getelementptr inbounds %struct.pm860x_onkey_info, %struct.pm860x_onkey_info* %98, i32 0, i32 1
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 3
  %102 = load i8**, i8*** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 0
  store i8* %97, i8** %103, align 8
  %104 = load i32, i32* @KEY_POWER, align 4
  %105 = call i8* @BIT_MASK(i32 %104)
  %106 = load %struct.pm860x_onkey_info*, %struct.pm860x_onkey_info** %5, align 8
  %107 = getelementptr inbounds %struct.pm860x_onkey_info, %struct.pm860x_onkey_info* %106, i32 0, i32 1
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 2
  %110 = load i8**, i8*** %109, align 8
  %111 = load i32, i32* @KEY_POWER, align 4
  %112 = call i64 @BIT_WORD(i32 %111)
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  store i8* %105, i8** %113, align 8
  %114 = load %struct.pm860x_onkey_info*, %struct.pm860x_onkey_info** %5, align 8
  %115 = getelementptr inbounds %struct.pm860x_onkey_info, %struct.pm860x_onkey_info* %114, i32 0, i32 1
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = call i32 @input_register_device(%struct.TYPE_11__* %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %74
  %121 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %122 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i32 (i32, i8*, ...) @dev_err(i32 %123, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %2, align 4
  br label %156

127:                                              ; preds = %74
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = load %struct.pm860x_onkey_info*, %struct.pm860x_onkey_info** %5, align 8
  %131 = getelementptr inbounds %struct.pm860x_onkey_info, %struct.pm860x_onkey_info* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @pm860x_onkey_handler, align 4
  %134 = load i32, i32* @IRQF_ONESHOT, align 4
  %135 = load %struct.pm860x_onkey_info*, %struct.pm860x_onkey_info** %5, align 8
  %136 = call i32 @devm_request_threaded_irq(%struct.TYPE_12__* %129, i32 %132, i32* null, i32 %133, i32 %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %struct.pm860x_onkey_info* %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %127
  %140 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %141 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.pm860x_onkey_info*, %struct.pm860x_onkey_info** %5, align 8
  %144 = getelementptr inbounds %struct.pm860x_onkey_info, %struct.pm860x_onkey_info* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = call i32 (i32, i8*, ...) @dev_err(i32 %142, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %145, i32 %146)
  %148 = load i32, i32* %7, align 4
  store i32 %148, i32* %2, align 4
  br label %156

149:                                              ; preds = %127
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = load %struct.pm860x_onkey_info*, %struct.pm860x_onkey_info** %5, align 8
  %152 = call i32 @platform_set_drvdata(%struct.platform_device* %150, %struct.pm860x_onkey_info* %151)
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 0
  %155 = call i32 @device_init_wakeup(%struct.TYPE_12__* %154, i32 1)
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %149, %139, %120, %67, %27, %17
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local %struct.pm860x_chip* @dev_get_drvdata(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.pm860x_onkey_info* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @devm_input_allocate_device(%struct.TYPE_12__*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i8* @BIT_MASK(i32) #1

declare dso_local i64 @BIT_WORD(i32) #1

declare dso_local i32 @input_register_device(%struct.TYPE_11__*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_12__*, i32, i32*, i32, i32, i8*, %struct.pm860x_onkey_info*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pm860x_onkey_info*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
