; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp55xx-common.c_lp55xx_detect_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp55xx-common.c_lp55xx_detect_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp55xx_chip = type { %struct.lp55xx_device_config* }
%struct.lp55xx_device_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp55xx_chip*)* @lp55xx_detect_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp55xx_detect_device(%struct.lp55xx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lp55xx_chip*, align 8
  %4 = alloca %struct.lp55xx_device_config*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.lp55xx_chip* %0, %struct.lp55xx_chip** %3, align 8
  %8 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %9 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %8, i32 0, i32 0
  %10 = load %struct.lp55xx_device_config*, %struct.lp55xx_device_config** %9, align 8
  store %struct.lp55xx_device_config* %10, %struct.lp55xx_device_config** %4, align 8
  %11 = load %struct.lp55xx_device_config*, %struct.lp55xx_device_config** %4, align 8
  %12 = getelementptr inbounds %struct.lp55xx_device_config, %struct.lp55xx_device_config* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load %struct.lp55xx_device_config*, %struct.lp55xx_device_config** %4, align 8
  %16 = getelementptr inbounds %struct.lp55xx_device_config, %struct.lp55xx_device_config* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  %19 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @lp55xx_write(%struct.lp55xx_chip* %19, i64 %20, i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %47

27:                                               ; preds = %1
  %28 = call i32 @usleep_range(i32 1000, i32 2000)
  %29 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @lp55xx_read(%struct.lp55xx_chip* %29, i64 %30, i64* %6)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %47

36:                                               ; preds = %27
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.lp55xx_device_config*, %struct.lp55xx_device_config** %4, align 8
  %39 = getelementptr inbounds %struct.lp55xx_device_config, %struct.lp55xx_device_config* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %37, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %47

46:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %43, %34, %25
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @lp55xx_write(%struct.lp55xx_chip*, i64, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @lp55xx_read(%struct.lp55xx_chip*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
