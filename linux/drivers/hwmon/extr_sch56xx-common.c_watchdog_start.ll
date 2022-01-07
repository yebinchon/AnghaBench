; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sch56xx-common.c_watchdog_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sch56xx-common.c_watchdog_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.sch56xx_watchdog_data = type { i32, i32, i32, i64 }

@SCH56XX_REG_WDOG_PRESET = common dso_local global i32 0, align 4
@SCH56XX_WDOG_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@SCH56XX_REG_WDOG_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @watchdog_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watchdog_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.sch56xx_watchdog_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %7 = call %struct.sch56xx_watchdog_data* @watchdog_get_drvdata(%struct.watchdog_device* %6)
  store %struct.sch56xx_watchdog_data* %7, %struct.sch56xx_watchdog_data** %3, align 8
  %8 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %3, align 8
  %9 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @mutex_lock(i32 %10)
  %12 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %3, align 8
  %13 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @SCH56XX_REG_WDOG_PRESET, align 4
  %16 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %3, align 8
  %17 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @sch56xx_write_virtual_reg(i64 %14, i32 %15, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %57

23:                                               ; preds = %1
  %24 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %3, align 8
  %25 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SCH56XX_WDOG_OUTPUT_ENABLE, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %5, align 4
  %29 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %3, align 8
  %30 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @SCH56XX_REG_WDOG_OUTPUT_ENABLE, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @sch56xx_write_virtual_reg(i64 %31, i32 %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %57

38:                                               ; preds = %23
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %3, align 8
  %41 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %3, align 8
  %43 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 9
  %46 = call i32 @inb(i64 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %38
  %51 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %3, align 8
  %52 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 9
  %55 = call i32 @outb(i32 1, i64 %54)
  br label %56

56:                                               ; preds = %50, %38
  br label %57

57:                                               ; preds = %56, %37, %22
  %58 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %3, align 8
  %59 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @mutex_unlock(i32 %60)
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.sch56xx_watchdog_data* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @sch56xx_write_virtual_reg(i64, i32, i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
