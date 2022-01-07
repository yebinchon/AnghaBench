; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ftsteutates.c_fts_wd_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ftsteutates.c_fts_wd_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.fts_data = type { i32 }

@seconds = common dso_local global i32 0, align 4
@minutes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @fts_wd_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts_wd_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fts_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @seconds, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %11 = call %struct.fts_data* @watchdog_get_drvdata(%struct.watchdog_device* %10)
  store %struct.fts_data* %11, %struct.fts_data** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ugt i32 %12, 255
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @DIV_ROUND_UP(i32 %15, i32 60)
  %17 = mul nsw i32 %16, 60
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @minutes, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.fts_data*, %struct.fts_data** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @fts_wd_set_resolution(%struct.fts_data* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %31

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %30 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %25
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.fts_data* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @fts_wd_set_resolution(%struct.fts_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
