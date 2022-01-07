; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_asus_atk0110.c_atk_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_asus_atk0110.c_atk_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, %struct.atk_data* }
%struct.atk_data = type { i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"removing...\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to disable EC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @atk_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atk_remove(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca %struct.atk_data*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  %4 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %5 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %4, i32 0, i32 1
  %6 = load %struct.atk_data*, %struct.atk_data** %5, align 8
  store %struct.atk_data* %6, %struct.atk_data** %3, align 8
  %7 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %8 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 0
  %9 = call i32 @dev_dbg(i32* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %11 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 1
  store %struct.atk_data* null, %struct.atk_data** %11, align 8
  %12 = load %struct.atk_data*, %struct.atk_data** %3, align 8
  %13 = call i32 @atk_debugfs_cleanup(%struct.atk_data* %12)
  %14 = load %struct.atk_data*, %struct.atk_data** %3, align 8
  %15 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @hwmon_device_unregister(i32 %16)
  %18 = load %struct.atk_data*, %struct.atk_data** %3, align 8
  %19 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.atk_data*, %struct.atk_data** %3, align 8
  %24 = call i64 @atk_ec_ctl(%struct.atk_data* %23, i32 0)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %28 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %26, %22
  br label %31

31:                                               ; preds = %30, %1
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @atk_debugfs_cleanup(%struct.atk_data*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i64 @atk_ec_ctl(%struct.atk_data*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
