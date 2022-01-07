; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83793.c_watchdog_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83793.c_watchdog_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83793_data = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@W83793_REG_WDT_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w83793_data*)* @watchdog_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watchdog_disable(%struct.w83793_data* %0) #0 {
  %2 = alloca %struct.w83793_data*, align 8
  %3 = alloca i32, align 4
  store %struct.w83793_data* %0, %struct.w83793_data** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.w83793_data*, %struct.w83793_data** %2, align 8
  %5 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.w83793_data*, %struct.w83793_data** %2, align 8
  %8 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.w83793_data*, %struct.w83793_data** %2, align 8
  %16 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @W83793_REG_WDT_LOCK, align 4
  %19 = call i32 @w83793_write_value(i32 %17, i32 %18, i32 170)
  br label %20

20:                                               ; preds = %14, %11
  %21 = load %struct.w83793_data*, %struct.w83793_data** %2, align 8
  %22 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83793_write_value(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
