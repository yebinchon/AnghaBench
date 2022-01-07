; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83793.c_watchdog_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83793.c_watchdog_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83793_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@W83793_REG_WDT_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w83793_data*, i32)* @watchdog_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watchdog_set_timeout(%struct.w83793_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.w83793_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.w83793_data* %0, %struct.w83793_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @DIV_ROUND_UP(i32 %8, i32 60)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ugt i32 %10, 255
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %45

15:                                               ; preds = %2
  %16 = load %struct.w83793_data*, %struct.w83793_data** %4, align 8
  %17 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.w83793_data*, %struct.w83793_data** %4, align 8
  %20 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %40

26:                                               ; preds = %15
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.w83793_data*, %struct.w83793_data** %4, align 8
  %29 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.w83793_data*, %struct.w83793_data** %4, align 8
  %31 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @W83793_REG_WDT_TIMEOUT, align 4
  %34 = load %struct.w83793_data*, %struct.w83793_data** %4, align 8
  %35 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @w83793_write_value(i32 %32, i32 %33, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = mul i32 %38, 60
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %26, %23
  %41 = load %struct.w83793_data*, %struct.w83793_data** %4, align 8
  %42 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %40, %12
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83793_write_value(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
