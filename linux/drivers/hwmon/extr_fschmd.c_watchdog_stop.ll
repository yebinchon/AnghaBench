; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_fschmd.c_watchdog_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_fschmd.c_watchdog_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fschmd_data = type { i32, i64, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@FSCHMD_WDOG_CONTROL_STARTED = common dso_local global i32 0, align 4
@FSCHMD_REG_WDOG_CONTROL = common dso_local global i32* null, align 8
@FSCHMD_WDOG_CONTROL_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fschmd_data*)* @watchdog_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watchdog_stop(%struct.fschmd_data* %0) #0 {
  %2 = alloca %struct.fschmd_data*, align 8
  %3 = alloca i32, align 4
  store %struct.fschmd_data* %0, %struct.fschmd_data** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.fschmd_data*, %struct.fschmd_data** %2, align 8
  %5 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %4, i32 0, i32 2
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.fschmd_data*, %struct.fschmd_data** %2, align 8
  %8 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %36

14:                                               ; preds = %1
  %15 = load i32, i32* @FSCHMD_WDOG_CONTROL_STARTED, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.fschmd_data*, %struct.fschmd_data** %2, align 8
  %18 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.fschmd_data*, %struct.fschmd_data** %2, align 8
  %22 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** @FSCHMD_REG_WDOG_CONTROL, align 8
  %25 = load %struct.fschmd_data*, %struct.fschmd_data** %2, align 8
  %26 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.fschmd_data*, %struct.fschmd_data** %2, align 8
  %31 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @FSCHMD_WDOG_CONTROL_STOP, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @i2c_smbus_write_byte_data(i32 %23, i32 %29, i32 %34)
  br label %36

36:                                               ; preds = %14, %11
  %37 = load %struct.fschmd_data*, %struct.fschmd_data** %2, align 8
  %38 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %37, i32 0, i32 2
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
