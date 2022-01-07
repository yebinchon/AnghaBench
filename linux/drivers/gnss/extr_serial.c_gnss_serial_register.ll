; ModuleID = '/home/carl/AnghaBench/linux/drivers/gnss/extr_serial.c_gnss_serial_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gnss/extr_serial.c_gnss_serial_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gnss_serial = type { i32, %struct.serdev_device* }
%struct.serdev_device = type { i32 }

@CONFIG_PM = common dso_local global i32 0, align 4
@GNSS_SERIAL_ACTIVE = common dso_local global i32 0, align 4
@GNSS_SERIAL_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gnss_serial_register(%struct.gnss_serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gnss_serial*, align 8
  %4 = alloca %struct.serdev_device*, align 8
  %5 = alloca i32, align 4
  store %struct.gnss_serial* %0, %struct.gnss_serial** %3, align 8
  %6 = load %struct.gnss_serial*, %struct.gnss_serial** %3, align 8
  %7 = getelementptr inbounds %struct.gnss_serial, %struct.gnss_serial* %6, i32 0, i32 1
  %8 = load %struct.serdev_device*, %struct.serdev_device** %7, align 8
  store %struct.serdev_device* %8, %struct.serdev_device** %4, align 8
  %9 = load i32, i32* @CONFIG_PM, align 4
  %10 = call i64 @IS_ENABLED(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.serdev_device*, %struct.serdev_device** %4, align 8
  %14 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %13, i32 0, i32 0
  %15 = call i32 @pm_runtime_enable(i32* %14)
  br label %25

16:                                               ; preds = %1
  %17 = load %struct.gnss_serial*, %struct.gnss_serial** %3, align 8
  %18 = load i32, i32* @GNSS_SERIAL_ACTIVE, align 4
  %19 = call i32 @gnss_serial_set_power(%struct.gnss_serial* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %48

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %12
  %26 = load %struct.gnss_serial*, %struct.gnss_serial** %3, align 8
  %27 = getelementptr inbounds %struct.gnss_serial, %struct.gnss_serial* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @gnss_register_device(i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %34

33:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %48

34:                                               ; preds = %32
  %35 = load i32, i32* @CONFIG_PM, align 4
  %36 = call i64 @IS_ENABLED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.serdev_device*, %struct.serdev_device** %4, align 8
  %40 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %39, i32 0, i32 0
  %41 = call i32 @pm_runtime_disable(i32* %40)
  br label %46

42:                                               ; preds = %34
  %43 = load %struct.gnss_serial*, %struct.gnss_serial** %3, align 8
  %44 = load i32, i32* @GNSS_SERIAL_OFF, align 4
  %45 = call i32 @gnss_serial_set_power(%struct.gnss_serial* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %33, %22
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @gnss_serial_set_power(%struct.gnss_serial*, i32) #1

declare dso_local i32 @gnss_register_device(i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
