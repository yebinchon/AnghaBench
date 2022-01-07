; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_soc_button_array.c_soc_device_check_MSHW0040.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_soc_button_array.c_soc_device_check_MSHW0040.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MSHW0040_DSM_UUID = common dso_local global i32 0, align 4
@MSHW0040_DSM_REVISION = common dso_local global i32 0, align 4
@MSHW0040_DSM_GET_OMPR = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"OEM Platform Revision %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @soc_device_check_MSHW0040 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_device_check_MSHW0040(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_object*, align 8
  %6 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call i32 @ACPI_HANDLE(%struct.device* %7)
  store i32 %8, i32* %4, align 4
  store i64 0, i64* %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MSHW0040_DSM_REVISION, align 4
  %11 = load i32, i32* @MSHW0040_DSM_GET_OMPR, align 4
  %12 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %13 = call %union.acpi_object* @acpi_evaluate_dsm_typed(i32 %9, i32* @MSHW0040_DSM_UUID, i32 %10, i32 %11, i32* null, i32 %12)
  store %union.acpi_object* %13, %union.acpi_object** %5, align 8
  %14 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %15 = icmp ne %union.acpi_object* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %18 = bitcast %union.acpi_object* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  %21 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %22 = call i32 @ACPI_FREE(%union.acpi_object* %21)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load i64, i64* %6, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %33

29:                                               ; preds = %23
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @dev_dbg(%struct.device* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @ACPI_HANDLE(%struct.device*) #1

declare dso_local %union.acpi_object* @acpi_evaluate_dsm_typed(i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
