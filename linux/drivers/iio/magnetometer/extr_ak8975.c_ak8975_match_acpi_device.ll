; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8975.c_ak8975_match_acpi_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8975.c_ak8975_match_acpi_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_device_id = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, i32*)* @ak8975_match_acpi_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ak8975_match_acpi_device(%struct.device* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.acpi_device_id*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.acpi_device_id* @acpi_match_device(i32 %11, %struct.device* %12)
  store %struct.acpi_device_id* %13, %struct.acpi_device_id** %6, align 8
  %14 = load %struct.acpi_device_id*, %struct.acpi_device_id** %6, align 8
  %15 = icmp ne %struct.acpi_device_id* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.acpi_device_id*, %struct.acpi_device_id** %6, align 8
  %19 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32*, i32** %5, align 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i8* @dev_name(%struct.device* %23)
  store i8* %24, i8** %3, align 8
  br label %25

25:                                               ; preds = %17, %16
  %26 = load i8*, i8** %3, align 8
  ret i8* %26
}

declare dso_local %struct.acpi_device_id* @acpi_match_device(i32, %struct.device*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
