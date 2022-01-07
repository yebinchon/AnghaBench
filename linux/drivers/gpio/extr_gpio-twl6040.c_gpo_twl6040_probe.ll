; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-twl6040.c_gpo_twl6040_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-twl6040.c_gpo_twl6040_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.platform_device = type { %struct.TYPE_6__ }
%struct.twl6040 = type { i32 }

@twl6040gpo_chip = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@TWL6041_REV_ES2_0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"could not register gpiochip, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpo_twl6040_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpo_twl6040_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.twl6040*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %3, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.twl6040* @dev_get_drvdata(%struct.device* %10)
  store %struct.twl6040* %11, %struct.twl6040** %4, align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @twl6040gpo_chip, i32 0, i32 0), align 8
  %12 = load %struct.twl6040*, %struct.twl6040** %4, align 8
  %13 = call i64 @twl6040_get_revid(%struct.twl6040* %12)
  %14 = load i64, i64* @TWL6041_REV_ES2_0, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @twl6040gpo_chip, i32 0, i32 1), align 4
  br label %18

17:                                               ; preds = %1
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @twl6040gpo_chip, i32 0, i32 1), align 4
  br label %18

18:                                               ; preds = %17, %16
  %19 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @twl6040gpo_chip, i32 0, i32 3), align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 @devm_gpiochip_add_data(%struct.TYPE_6__* %22, %struct.TYPE_5__* @twl6040gpo_chip, i32* null)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dev_err(%struct.TYPE_6__* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @twl6040gpo_chip, i32 0, i32 1), align 4
  br label %31

31:                                               ; preds = %26, %18
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.twl6040* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @twl6040_get_revid(%struct.twl6040*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_6__*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
