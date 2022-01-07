; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_bus.c_ishtp_cl_device_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_bus.c_ishtp_cl_device_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl_device = type { %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.ishtp_cl_driver = type { i32 (%struct.ishtp_cl_device.0*)* }
%struct.ishtp_cl_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ishtp_cl_device*)* @ishtp_cl_device_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ishtp_cl_device_reset(%struct.ishtp_cl_device* %0) #0 {
  %2 = alloca %struct.ishtp_cl_device*, align 8
  %3 = alloca %struct.ishtp_cl_driver*, align 8
  %4 = alloca i32, align 4
  store %struct.ishtp_cl_device* %0, %struct.ishtp_cl_device** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %2, align 8
  %6 = getelementptr inbounds %struct.ishtp_cl_device, %struct.ishtp_cl_device* %5, i32 0, i32 2
  store i32* null, i32** %6, align 8
  %7 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %2, align 8
  %8 = getelementptr inbounds %struct.ishtp_cl_device, %struct.ishtp_cl_device* %7, i32 0, i32 1
  %9 = call i32 @cancel_work_sync(i32* %8)
  %10 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %2, align 8
  %11 = getelementptr inbounds %struct.ishtp_cl_device, %struct.ishtp_cl_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.ishtp_cl_driver* @to_ishtp_cl_driver(i32 %13)
  store %struct.ishtp_cl_driver* %14, %struct.ishtp_cl_driver** %3, align 8
  %15 = load %struct.ishtp_cl_driver*, %struct.ishtp_cl_driver** %3, align 8
  %16 = icmp ne %struct.ishtp_cl_driver* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.ishtp_cl_driver*, %struct.ishtp_cl_driver** %3, align 8
  %19 = getelementptr inbounds %struct.ishtp_cl_driver, %struct.ishtp_cl_driver* %18, i32 0, i32 0
  %20 = load i32 (%struct.ishtp_cl_device.0*)*, i32 (%struct.ishtp_cl_device.0*)** %19, align 8
  %21 = icmp ne i32 (%struct.ishtp_cl_device.0*)* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.ishtp_cl_driver*, %struct.ishtp_cl_driver** %3, align 8
  %24 = getelementptr inbounds %struct.ishtp_cl_driver, %struct.ishtp_cl_driver* %23, i32 0, i32 0
  %25 = load i32 (%struct.ishtp_cl_device.0*)*, i32 (%struct.ishtp_cl_device.0*)** %24, align 8
  %26 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %2, align 8
  %27 = bitcast %struct.ishtp_cl_device* %26 to %struct.ishtp_cl_device.0*
  %28 = call i32 %25(%struct.ishtp_cl_device.0* %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %22, %17, %1
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local %struct.ishtp_cl_driver* @to_ishtp_cl_driver(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
