; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_bus.c_ishtp_cl_device_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_bus.c_ishtp_cl_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ishtp_cl_device = type { i32 }
%struct.ishtp_cl_driver = type { i32 (%struct.ishtp_cl_device.0*)* }
%struct.ishtp_cl_device.0 = type opaque

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ishtp_cl_device_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ishtp_cl_device_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ishtp_cl_device*, align 8
  %5 = alloca %struct.ishtp_cl_driver*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.ishtp_cl_device* @to_ishtp_cl_device(%struct.device* %6)
  store %struct.ishtp_cl_device* %7, %struct.ishtp_cl_device** %4, align 8
  %8 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %4, align 8
  %9 = icmp ne %struct.ishtp_cl_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ishtp_cl_driver* @to_ishtp_cl_driver(i32 %14)
  store %struct.ishtp_cl_driver* %15, %struct.ishtp_cl_driver** %5, align 8
  %16 = load %struct.ishtp_cl_driver*, %struct.ishtp_cl_driver** %5, align 8
  %17 = icmp ne %struct.ishtp_cl_driver* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load %struct.ishtp_cl_driver*, %struct.ishtp_cl_driver** %5, align 8
  %20 = getelementptr inbounds %struct.ishtp_cl_driver, %struct.ishtp_cl_driver* %19, i32 0, i32 0
  %21 = load i32 (%struct.ishtp_cl_device.0*)*, i32 (%struct.ishtp_cl_device.0*)** %20, align 8
  %22 = icmp ne i32 (%struct.ishtp_cl_device.0*)* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18, %11
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %33

26:                                               ; preds = %18
  %27 = load %struct.ishtp_cl_driver*, %struct.ishtp_cl_driver** %5, align 8
  %28 = getelementptr inbounds %struct.ishtp_cl_driver, %struct.ishtp_cl_driver* %27, i32 0, i32 0
  %29 = load i32 (%struct.ishtp_cl_device.0*)*, i32 (%struct.ishtp_cl_device.0*)** %28, align 8
  %30 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %4, align 8
  %31 = bitcast %struct.ishtp_cl_device* %30 to %struct.ishtp_cl_device.0*
  %32 = call i32 %29(%struct.ishtp_cl_device.0* %31)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %26, %23, %10
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.ishtp_cl_device* @to_ishtp_cl_device(%struct.device*) #1

declare dso_local %struct.ishtp_cl_driver* @to_ishtp_cl_driver(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
