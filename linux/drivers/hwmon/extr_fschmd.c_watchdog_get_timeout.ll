; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_fschmd.c_watchdog_get_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_fschmd.c_watchdog_get_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fschmd_data = type { i32, i32, i32 }

@FSCHMD_WDOG_CONTROL_RESOLUTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fschmd_data*)* @watchdog_get_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watchdog_get_timeout(%struct.fschmd_data* %0) #0 {
  %2 = alloca %struct.fschmd_data*, align 8
  %3 = alloca i32, align 4
  store %struct.fschmd_data* %0, %struct.fschmd_data** %2, align 8
  %4 = load %struct.fschmd_data*, %struct.fschmd_data** %2, align 8
  %5 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %4, i32 0, i32 2
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.fschmd_data*, %struct.fschmd_data** %2, align 8
  %8 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @FSCHMD_WDOG_CONTROL_RESOLUTION, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.fschmd_data*, %struct.fschmd_data** %2, align 8
  %15 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 60
  store i32 %17, i32* %3, align 4
  br label %23

18:                                               ; preds = %1
  %19 = load %struct.fschmd_data*, %struct.fschmd_data** %2, align 8
  %20 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 2
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.fschmd_data*, %struct.fschmd_data** %2, align 8
  %25 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %24, i32 0, i32 2
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
