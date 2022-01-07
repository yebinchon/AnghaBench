; ModuleID = '/home/carl/AnghaBench/linux/drivers/gnss/extr_serial.c_gnss_serial_deregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gnss/extr_serial.c_gnss_serial_deregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gnss_serial = type { i32, %struct.serdev_device* }
%struct.serdev_device = type { i32 }

@CONFIG_PM = common dso_local global i32 0, align 4
@GNSS_SERIAL_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gnss_serial_deregister(%struct.gnss_serial* %0) #0 {
  %2 = alloca %struct.gnss_serial*, align 8
  %3 = alloca %struct.serdev_device*, align 8
  store %struct.gnss_serial* %0, %struct.gnss_serial** %2, align 8
  %4 = load %struct.gnss_serial*, %struct.gnss_serial** %2, align 8
  %5 = getelementptr inbounds %struct.gnss_serial, %struct.gnss_serial* %4, i32 0, i32 1
  %6 = load %struct.serdev_device*, %struct.serdev_device** %5, align 8
  store %struct.serdev_device* %6, %struct.serdev_device** %3, align 8
  %7 = load %struct.gnss_serial*, %struct.gnss_serial** %2, align 8
  %8 = getelementptr inbounds %struct.gnss_serial, %struct.gnss_serial* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @gnss_deregister_device(i32 %9)
  %11 = load i32, i32* @CONFIG_PM, align 4
  %12 = call i64 @IS_ENABLED(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %16 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %15, i32 0, i32 0
  %17 = call i32 @pm_runtime_disable(i32* %16)
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.gnss_serial*, %struct.gnss_serial** %2, align 8
  %20 = load i32, i32* @GNSS_SERIAL_OFF, align 4
  %21 = call i32 @gnss_serial_set_power(%struct.gnss_serial* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %14
  ret void
}

declare dso_local i32 @gnss_deregister_device(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @gnss_serial_set_power(%struct.gnss_serial*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
