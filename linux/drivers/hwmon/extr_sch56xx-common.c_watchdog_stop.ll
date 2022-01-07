; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sch56xx-common.c_watchdog_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sch56xx-common.c_watchdog_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.sch56xx_watchdog_data = type { i32, i32, i32 }

@SCH56XX_WDOG_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@SCH56XX_REG_WDOG_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @watchdog_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watchdog_stop(%struct.watchdog_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca %struct.sch56xx_watchdog_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %8 = call %struct.sch56xx_watchdog_data* @watchdog_get_drvdata(%struct.watchdog_device* %7)
  store %struct.sch56xx_watchdog_data* %8, %struct.sch56xx_watchdog_data** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %4, align 8
  %10 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SCH56XX_WDOG_OUTPUT_ENABLE, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %4, align 8
  %16 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mutex_lock(i32 %17)
  %19 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %4, align 8
  %20 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SCH56XX_REG_WDOG_OUTPUT_ENABLE, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @sch56xx_write_virtual_reg(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %4, align 8
  %26 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mutex_unlock(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %37

33:                                               ; preds = %1
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %4, align 8
  %36 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %31
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.sch56xx_watchdog_data* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @sch56xx_write_virtual_reg(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
