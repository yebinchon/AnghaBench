; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_twl4030-pwrbutton.c_powerbutton_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_twl4030-pwrbutton.c_powerbutton_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TWL_MODULE_PM_MASTER = common dso_local global i32 0, align 4
@STS_HW_CONDITIONS = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@PWR_PWRON_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"twl4030: i2c error %d while reading TWL4030 PM_MASTER STS_HW_CONDITIONS register\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @powerbutton_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powerbutton_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.input_dev*
  store %struct.input_dev* %9, %struct.input_dev** %5, align 8
  %10 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %11 = load i32, i32* @STS_HW_CONDITIONS, align 4
  %12 = call i32 @twl_i2c_read_u8(i32 %10, i32* %7, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %2
  %16 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %17 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pm_wakeup_event(i32 %19, i32 0)
  %21 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %22 = load i32, i32* @KEY_POWER, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @PWR_PWRON_IRQ, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @input_report_key(%struct.input_dev* %21, i32 %22, i32 %25)
  %27 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %28 = call i32 @input_sync(%struct.input_dev* %27)
  br label %36

29:                                               ; preds = %2
  %30 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %31 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %29, %15
  %37 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %37
}

declare dso_local i32 @twl_i2c_read_u8(i32, i32*, i32) #1

declare dso_local i32 @pm_wakeup_event(i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
