; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm36274.c_lm36274_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm36274.c_lm36274_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ti_lmu = type { i32, i32 }
%struct.lm36274 = type { i32, i32, i32, %struct.platform_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to parse DT node\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to init the device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lm36274_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm36274_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ti_lmu*, align 8
  %5 = alloca %struct.lm36274*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ti_lmu* @dev_get_drvdata(i32 %10)
  store %struct.ti_lmu* %11, %struct.ti_lmu** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.lm36274* @devm_kzalloc(%struct.TYPE_3__* %13, i32 24, i32 %14)
  store %struct.lm36274* %15, %struct.lm36274** %5, align 8
  %16 = load %struct.lm36274*, %struct.lm36274** %5, align 8
  %17 = icmp ne %struct.lm36274* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %67

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.lm36274*, %struct.lm36274** %5, align 8
  %24 = getelementptr inbounds %struct.lm36274, %struct.lm36274* %23, i32 0, i32 3
  store %struct.platform_device* %22, %struct.platform_device** %24, align 8
  %25 = load %struct.ti_lmu*, %struct.ti_lmu** %4, align 8
  %26 = getelementptr inbounds %struct.ti_lmu, %struct.ti_lmu* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.lm36274*, %struct.lm36274** %5, align 8
  %29 = getelementptr inbounds %struct.lm36274, %struct.lm36274* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ti_lmu*, %struct.ti_lmu** %4, align 8
  %31 = getelementptr inbounds %struct.ti_lmu, %struct.ti_lmu* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.lm36274*, %struct.lm36274** %5, align 8
  %34 = getelementptr inbounds %struct.lm36274, %struct.lm36274* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.lm36274*, %struct.lm36274** %5, align 8
  %38 = call i32 @dev_set_drvdata(%struct.TYPE_3__* %36, %struct.lm36274* %37)
  %39 = load %struct.lm36274*, %struct.lm36274** %5, align 8
  %40 = call i32 @lm36274_parse_dt(%struct.lm36274* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %21
  %44 = load %struct.lm36274*, %struct.lm36274** %5, align 8
  %45 = getelementptr inbounds %struct.lm36274, %struct.lm36274* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %67

49:                                               ; preds = %21
  %50 = load %struct.lm36274*, %struct.lm36274** %5, align 8
  %51 = call i32 @lm36274_init(%struct.lm36274* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.lm36274*, %struct.lm36274** %5, align 8
  %56 = getelementptr inbounds %struct.lm36274, %struct.lm36274* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %67

60:                                               ; preds = %49
  %61 = load %struct.lm36274*, %struct.lm36274** %5, align 8
  %62 = getelementptr inbounds %struct.lm36274, %struct.lm36274* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.lm36274*, %struct.lm36274** %5, align 8
  %65 = getelementptr inbounds %struct.lm36274, %struct.lm36274* %64, i32 0, i32 0
  %66 = call i32 @devm_led_classdev_register(i32 %63, i32* %65)
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %60, %54, %43, %18
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.ti_lmu* @dev_get_drvdata(i32) #1

declare dso_local %struct.lm36274* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_3__*, %struct.lm36274*) #1

declare dso_local i32 @lm36274_parse_dt(%struct.lm36274*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @lm36274_init(%struct.lm36274*) #1

declare dso_local i32 @devm_led_classdev_register(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
