; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_fschmd.c_watchdog_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_fschmd.c_watchdog_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fschmd_data = type { i64, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@FSCHMD_WDOG_CONTROL_TRIGGER = common dso_local global i32 0, align 4
@FSCHMD_REG_WDOG_CONTROL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fschmd_data*)* @watchdog_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watchdog_trigger(%struct.fschmd_data* %0) #0 {
  %2 = alloca %struct.fschmd_data*, align 8
  %3 = alloca i32, align 4
  store %struct.fschmd_data* %0, %struct.fschmd_data** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.fschmd_data*, %struct.fschmd_data** %2, align 8
  %5 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.fschmd_data*, %struct.fschmd_data** %2, align 8
  %8 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %33

14:                                               ; preds = %1
  %15 = load i32, i32* @FSCHMD_WDOG_CONTROL_TRIGGER, align 4
  %16 = load %struct.fschmd_data*, %struct.fschmd_data** %2, align 8
  %17 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.fschmd_data*, %struct.fschmd_data** %2, align 8
  %21 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** @FSCHMD_REG_WDOG_CONTROL, align 8
  %24 = load %struct.fschmd_data*, %struct.fschmd_data** %2, align 8
  %25 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fschmd_data*, %struct.fschmd_data** %2, align 8
  %30 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @i2c_smbus_write_byte_data(i32 %22, i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %14, %11
  %34 = load %struct.fschmd_data*, %struct.fschmd_data** %2, align 8
  %35 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %34, i32 0, i32 1
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* %3, align 4
  ret i32 %37
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
