; ModuleID = '/home/carl/AnghaBench/linux/drivers/gnss/extr_mtk.c_mtk_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gnss/extr_mtk.c_mtk_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { i32 }
%struct.gnss_serial = type { i32 }
%struct.mtk_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serdev_device*)* @mtk_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_remove(%struct.serdev_device* %0) #0 {
  %2 = alloca %struct.serdev_device*, align 8
  %3 = alloca %struct.gnss_serial*, align 8
  %4 = alloca %struct.mtk_data*, align 8
  store %struct.serdev_device* %0, %struct.serdev_device** %2, align 8
  %5 = load %struct.serdev_device*, %struct.serdev_device** %2, align 8
  %6 = call %struct.gnss_serial* @serdev_device_get_drvdata(%struct.serdev_device* %5)
  store %struct.gnss_serial* %6, %struct.gnss_serial** %3, align 8
  %7 = load %struct.gnss_serial*, %struct.gnss_serial** %3, align 8
  %8 = call %struct.mtk_data* @gnss_serial_get_drvdata(%struct.gnss_serial* %7)
  store %struct.mtk_data* %8, %struct.mtk_data** %4, align 8
  %9 = load %struct.gnss_serial*, %struct.gnss_serial** %3, align 8
  %10 = call i32 @gnss_serial_deregister(%struct.gnss_serial* %9)
  %11 = load %struct.mtk_data*, %struct.mtk_data** %4, align 8
  %12 = getelementptr inbounds %struct.mtk_data, %struct.mtk_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.mtk_data*, %struct.mtk_data** %4, align 8
  %17 = getelementptr inbounds %struct.mtk_data, %struct.mtk_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @regulator_disable(i64 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.gnss_serial*, %struct.gnss_serial** %3, align 8
  %22 = call i32 @gnss_serial_free(%struct.gnss_serial* %21)
  ret void
}

declare dso_local %struct.gnss_serial* @serdev_device_get_drvdata(%struct.serdev_device*) #1

declare dso_local %struct.mtk_data* @gnss_serial_get_drvdata(%struct.gnss_serial*) #1

declare dso_local i32 @gnss_serial_deregister(%struct.gnss_serial*) #1

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @gnss_serial_free(%struct.gnss_serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
