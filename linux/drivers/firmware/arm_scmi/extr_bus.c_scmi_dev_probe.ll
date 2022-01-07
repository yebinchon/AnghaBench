; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_bus.c_scmi_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_bus.c_scmi_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scmi_driver = type { i32 (%struct.scmi_device*)* }
%struct.scmi_device = type opaque
%struct.scmi_device.0 = type { i32, i32 }
%struct.scmi_device_id = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @scmi_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_dev_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.scmi_driver*, align 8
  %5 = alloca %struct.scmi_device.0*, align 8
  %6 = alloca %struct.scmi_device_id*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.scmi_driver* @to_scmi_driver(i32 %10)
  store %struct.scmi_driver* %11, %struct.scmi_driver** %4, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call %struct.scmi_device.0* @to_scmi_dev(%struct.device* %12)
  store %struct.scmi_device.0* %13, %struct.scmi_device.0** %5, align 8
  %14 = load %struct.scmi_device.0*, %struct.scmi_device.0** %5, align 8
  %15 = load %struct.scmi_driver*, %struct.scmi_driver** %4, align 8
  %16 = call %struct.scmi_device_id* @scmi_dev_match_id(%struct.scmi_device.0* %14, %struct.scmi_driver* %15)
  store %struct.scmi_device_id* %16, %struct.scmi_device_id** %6, align 8
  %17 = load %struct.scmi_device_id*, %struct.scmi_device_id** %6, align 8
  %18 = icmp ne %struct.scmi_device_id* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %49

22:                                               ; preds = %1
  %23 = load %struct.scmi_device.0*, %struct.scmi_device.0** %5, align 8
  %24 = getelementptr inbounds %struct.scmi_device.0, %struct.scmi_device.0* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @EPROBE_DEFER, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %49

30:                                               ; preds = %22
  %31 = load %struct.scmi_device.0*, %struct.scmi_device.0** %5, align 8
  %32 = getelementptr inbounds %struct.scmi_device.0, %struct.scmi_device.0* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.scmi_device.0*, %struct.scmi_device.0** %5, align 8
  %35 = getelementptr inbounds %struct.scmi_device.0, %struct.scmi_device.0* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @scmi_protocol_init(i32 %33, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %49

42:                                               ; preds = %30
  %43 = load %struct.scmi_driver*, %struct.scmi_driver** %4, align 8
  %44 = getelementptr inbounds %struct.scmi_driver, %struct.scmi_driver* %43, i32 0, i32 0
  %45 = load i32 (%struct.scmi_device*)*, i32 (%struct.scmi_device*)** %44, align 8
  %46 = load %struct.scmi_device.0*, %struct.scmi_device.0** %5, align 8
  %47 = bitcast %struct.scmi_device.0* %46 to %struct.scmi_device*
  %48 = call i32 %45(%struct.scmi_device* %47)
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %42, %40, %27, %19
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.scmi_driver* @to_scmi_driver(i32) #1

declare dso_local %struct.scmi_device.0* @to_scmi_dev(%struct.device*) #1

declare dso_local %struct.scmi_device_id* @scmi_dev_match_id(%struct.scmi_device.0*, %struct.scmi_driver*) #1

declare dso_local i32 @scmi_protocol_init(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
