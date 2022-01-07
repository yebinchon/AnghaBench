; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ab8500-ponkey.c_ab8500_ponkey_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ab8500-ponkey.c_ab8500_ponkey_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ab8500 = type { i32 }
%struct.ab8500_ponkey = type { i32, i32, %struct.input_dev*, %struct.ab8500* }
%struct.input_dev = type { i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }

@.str = private unnamed_addr constant [10 x i8] c"ONKEY_DBF\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ONKEY_DBR\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"AB8500 POn(PowerOn) Key\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@ab8500_ponkey_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"ab8500-ponkey-dbf\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to request dbf IRQ#%d: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"ab8500-ponkey-dbr\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Failed to request dbr IRQ#%d: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Can't register input device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ab8500_ponkey_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_ponkey_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ab8500*, align 8
  %5 = alloca %struct.ab8500_ponkey*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ab8500* @dev_get_drvdata(i32 %13)
  store %struct.ab8500* %14, %struct.ab8500** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = call i32 @platform_get_irq_byname(%struct.platform_device* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %127

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = call i32 @platform_get_irq_byname(%struct.platform_device* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %2, align 4
  br label %127

28:                                               ; preds = %21
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.ab8500_ponkey* @devm_kzalloc(%struct.TYPE_6__* %30, i32 24, i32 %31)
  store %struct.ab8500_ponkey* %32, %struct.ab8500_ponkey** %5, align 8
  %33 = load %struct.ab8500_ponkey*, %struct.ab8500_ponkey** %5, align 8
  %34 = icmp ne %struct.ab8500_ponkey* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %127

38:                                               ; preds = %28
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_6__* %40)
  store %struct.input_dev* %41, %struct.input_dev** %6, align 8
  %42 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %43 = icmp ne %struct.input_dev* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %127

47:                                               ; preds = %38
  %48 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %49 = load %struct.ab8500_ponkey*, %struct.ab8500_ponkey** %5, align 8
  %50 = getelementptr inbounds %struct.ab8500_ponkey, %struct.ab8500_ponkey* %49, i32 0, i32 2
  store %struct.input_dev* %48, %struct.input_dev** %50, align 8
  %51 = load %struct.ab8500*, %struct.ab8500** %4, align 8
  %52 = load %struct.ab8500_ponkey*, %struct.ab8500_ponkey** %5, align 8
  %53 = getelementptr inbounds %struct.ab8500_ponkey, %struct.ab8500_ponkey* %52, i32 0, i32 3
  store %struct.ab8500* %51, %struct.ab8500** %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.ab8500_ponkey*, %struct.ab8500_ponkey** %5, align 8
  %56 = getelementptr inbounds %struct.ab8500_ponkey, %struct.ab8500_ponkey* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.ab8500_ponkey*, %struct.ab8500_ponkey** %5, align 8
  %59 = getelementptr inbounds %struct.ab8500_ponkey, %struct.ab8500_ponkey* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %61 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %60, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** %61, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %65 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %66, align 8
  %67 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %68 = load i32, i32* @EV_KEY, align 4
  %69 = load i32, i32* @KEY_POWER, align 4
  %70 = call i32 @input_set_capability(%struct.input_dev* %67, i32 %68, i32 %69)
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load %struct.ab8500_ponkey*, %struct.ab8500_ponkey** %5, align 8
  %74 = getelementptr inbounds %struct.ab8500_ponkey, %struct.ab8500_ponkey* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @ab8500_ponkey_handler, align 4
  %77 = load %struct.ab8500_ponkey*, %struct.ab8500_ponkey** %5, align 8
  %78 = call i32 @devm_request_any_context_irq(%struct.TYPE_6__* %72, i32 %75, i32 %76, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), %struct.ab8500_ponkey* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %47
  %82 = load %struct.ab8500*, %struct.ab8500** %4, align 8
  %83 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ab8500_ponkey*, %struct.ab8500_ponkey** %5, align 8
  %86 = getelementptr inbounds %struct.ab8500_ponkey, %struct.ab8500_ponkey* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %2, align 4
  br label %127

91:                                               ; preds = %47
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load %struct.ab8500_ponkey*, %struct.ab8500_ponkey** %5, align 8
  %95 = getelementptr inbounds %struct.ab8500_ponkey, %struct.ab8500_ponkey* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @ab8500_ponkey_handler, align 4
  %98 = load %struct.ab8500_ponkey*, %struct.ab8500_ponkey** %5, align 8
  %99 = call i32 @devm_request_any_context_irq(%struct.TYPE_6__* %93, i32 %96, i32 %97, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), %struct.ab8500_ponkey* %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %91
  %103 = load %struct.ab8500*, %struct.ab8500** %4, align 8
  %104 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ab8500_ponkey*, %struct.ab8500_ponkey** %5, align 8
  %107 = getelementptr inbounds %struct.ab8500_ponkey, %struct.ab8500_ponkey* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %105, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %108, i32 %109)
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %2, align 4
  br label %127

112:                                              ; preds = %91
  %113 = load %struct.ab8500_ponkey*, %struct.ab8500_ponkey** %5, align 8
  %114 = getelementptr inbounds %struct.ab8500_ponkey, %struct.ab8500_ponkey* %113, i32 0, i32 2
  %115 = load %struct.input_dev*, %struct.input_dev** %114, align 8
  %116 = call i32 @input_register_device(%struct.input_dev* %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %112
  %120 = load %struct.ab8500*, %struct.ab8500** %4, align 8
  %121 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %122, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %2, align 4
  br label %127

126:                                              ; preds = %112
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %126, %119, %102, %81, %44, %35, %26, %19
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.ab8500* @dev_get_drvdata(i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local %struct.ab8500_ponkey* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_6__*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @devm_request_any_context_irq(%struct.TYPE_6__*, i32, i32, i32, i8*, %struct.ab8500_ponkey*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
