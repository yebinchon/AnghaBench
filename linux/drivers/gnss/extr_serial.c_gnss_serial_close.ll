; ModuleID = '/home/carl/AnghaBench/linux/drivers/gnss/extr_serial.c_gnss_serial_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gnss/extr_serial.c_gnss_serial_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gnss_device = type { i32 }
%struct.gnss_serial = type { %struct.serdev_device* }
%struct.serdev_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gnss_device*)* @gnss_serial_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gnss_serial_close(%struct.gnss_device* %0) #0 {
  %2 = alloca %struct.gnss_device*, align 8
  %3 = alloca %struct.gnss_serial*, align 8
  %4 = alloca %struct.serdev_device*, align 8
  store %struct.gnss_device* %0, %struct.gnss_device** %2, align 8
  %5 = load %struct.gnss_device*, %struct.gnss_device** %2, align 8
  %6 = call %struct.gnss_serial* @gnss_get_drvdata(%struct.gnss_device* %5)
  store %struct.gnss_serial* %6, %struct.gnss_serial** %3, align 8
  %7 = load %struct.gnss_serial*, %struct.gnss_serial** %3, align 8
  %8 = getelementptr inbounds %struct.gnss_serial, %struct.gnss_serial* %7, i32 0, i32 0
  %9 = load %struct.serdev_device*, %struct.serdev_device** %8, align 8
  store %struct.serdev_device* %9, %struct.serdev_device** %4, align 8
  %10 = load %struct.serdev_device*, %struct.serdev_device** %4, align 8
  %11 = call i32 @serdev_device_close(%struct.serdev_device* %10)
  %12 = load %struct.serdev_device*, %struct.serdev_device** %4, align 8
  %13 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %12, i32 0, i32 0
  %14 = call i32 @pm_runtime_put(i32* %13)
  ret void
}

declare dso_local %struct.gnss_serial* @gnss_get_drvdata(%struct.gnss_device*) #1

declare dso_local i32 @serdev_device_close(%struct.serdev_device*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
