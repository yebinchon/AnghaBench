; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-acpi.c_i2c_acpi_match_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-acpi.c_i2c_acpi_match_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device_id = type { i32 }
%struct.i2c_client = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.acpi_device_id* @i2c_acpi_match_device(%struct.acpi_device_id* %0, %struct.i2c_client* %1) #0 {
  %3 = alloca %struct.acpi_device_id*, align 8
  %4 = alloca %struct.acpi_device_id*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  store %struct.acpi_device_id* %0, %struct.acpi_device_id** %4, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %5, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %7 = icmp ne %struct.i2c_client* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.acpi_device_id*, %struct.acpi_device_id** %4, align 8
  %10 = icmp ne %struct.acpi_device_id* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %2
  store %struct.acpi_device_id* null, %struct.acpi_device_id** %3, align 8
  br label %17

12:                                               ; preds = %8
  %13 = load %struct.acpi_device_id*, %struct.acpi_device_id** %4, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = call %struct.acpi_device_id* @acpi_match_device(%struct.acpi_device_id* %13, i32* %15)
  store %struct.acpi_device_id* %16, %struct.acpi_device_id** %3, align 8
  br label %17

17:                                               ; preds = %12, %11
  %18 = load %struct.acpi_device_id*, %struct.acpi_device_id** %3, align 8
  ret %struct.acpi_device_id* %18
}

declare dso_local %struct.acpi_device_id* @acpi_match_device(%struct.acpi_device_id*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
