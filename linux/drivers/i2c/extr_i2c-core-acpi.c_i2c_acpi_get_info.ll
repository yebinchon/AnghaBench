; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-acpi.c_i2c_acpi_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-acpi.c_i2c_acpi_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_board_info = type { i32, i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_acpi_lookup = type { i32, i64, %struct.i2c_board_info* }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, %struct.i2c_board_info*, %struct.i2c_adapter*, i64*)* @i2c_acpi_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_acpi_get_info(%struct.acpi_device* %0, %struct.i2c_board_info* %1, %struct.i2c_adapter* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.i2c_acpi_lookup, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %6, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %7, align 8
  store %struct.i2c_adapter* %2, %struct.i2c_adapter** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = call i32 @memset(%struct.i2c_acpi_lookup* %10, i32 0, i32 24)
  %14 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %15 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %10, i32 0, i32 2
  store %struct.i2c_board_info* %14, %struct.i2c_board_info** %15, align 8
  %16 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %10, i32 0, i32 0
  store i32 -1, i32* %16, align 8
  %17 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %18 = call i64 @acpi_device_enumerated(%struct.acpi_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %86

23:                                               ; preds = %4
  %24 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %25 = call i32 @i2c_acpi_do_lookup(%struct.acpi_device* %24, %struct.i2c_acpi_lookup* %10)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %5, align 4
  br label %86

30:                                               ; preds = %23
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %32 = icmp ne %struct.i2c_adapter* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %35 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %34, i32 0, i32 0
  %36 = call i64 @ACPI_HANDLE(i32* %35)
  %37 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %10, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %86

43:                                               ; preds = %33
  br label %66

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %10, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @acpi_bus_get_device(i64 %46, %struct.acpi_device** %12)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %86

52:                                               ; preds = %44
  %53 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %54 = call i64 @acpi_bus_get_status(%struct.acpi_device* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load %struct.acpi_device*, %struct.acpi_device** %12, align 8
  %58 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %56, %52
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %86

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %43
  %67 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %68 = call i32 @acpi_fwnode_handle(%struct.acpi_device* %67)
  %69 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %70 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i64*, i64** %9, align 8
  %72 = icmp ne i64* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %10, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %9, align 8
  store i64 %75, i64* %76, align 8
  br label %77

77:                                               ; preds = %73, %66
  %78 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %79 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %80 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %79, i32 0, i32 0
  %81 = call i32 @dev_name(i32* %80)
  %82 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %83 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @acpi_set_modalias(%struct.acpi_device* %78, i32 %81, i32 %84, i32 4)
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %77, %62, %49, %40, %28, %20
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @memset(%struct.i2c_acpi_lookup*, i32, i32) #1

declare dso_local i64 @acpi_device_enumerated(%struct.acpi_device*) #1

declare dso_local i32 @i2c_acpi_do_lookup(%struct.acpi_device*, %struct.i2c_acpi_lookup*) #1

declare dso_local i64 @ACPI_HANDLE(i32*) #1

declare dso_local i64 @acpi_bus_get_device(i64, %struct.acpi_device**) #1

declare dso_local i64 @acpi_bus_get_status(%struct.acpi_device*) #1

declare dso_local i32 @acpi_fwnode_handle(%struct.acpi_device*) #1

declare dso_local i32 @acpi_set_modalias(%struct.acpi_device*, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
