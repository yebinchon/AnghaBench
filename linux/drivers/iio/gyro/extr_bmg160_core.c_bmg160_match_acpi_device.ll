; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_match_acpi_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_match_acpi_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_device_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*)* @bmg160_match_acpi_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bmg160_match_acpi_device(%struct.device* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.acpi_device_id*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.acpi_device_id* @acpi_match_device(i32 %9, %struct.device* %10)
  store %struct.acpi_device_id* %11, %struct.acpi_device_id** %4, align 8
  %12 = load %struct.acpi_device_id*, %struct.acpi_device_id** %4, align 8
  %13 = icmp ne %struct.acpi_device_id* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call i8* @dev_name(%struct.device* %16)
  store i8* %17, i8** %2, align 8
  br label %18

18:                                               ; preds = %15, %14
  %19 = load i8*, i8** %2, align 8
  ret i8* %19
}

declare dso_local %struct.acpi_device_id* @acpi_match_device(i32, %struct.device*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
