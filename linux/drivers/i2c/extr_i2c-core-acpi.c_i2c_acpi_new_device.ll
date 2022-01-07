; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-acpi.c_i2c_acpi_new_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-acpi.c_i2c_acpi_new_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.device = type { i32 }
%struct.i2c_board_info = type { i32 }
%struct.i2c_acpi_lookup = type { i32, i32, i32, %struct.i2c_board_info* }
%struct.i2c_adapter = type { i32 }
%struct.acpi_device = type { i32 }

@resource_list = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@i2c_acpi_fill_info = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i2c_client* @i2c_acpi_new_device(%struct.device* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca %struct.i2c_acpi_lookup, align 8
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.acpi_device*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  %13 = load i32, i32* @resource_list, align 4
  %14 = call i32 @LIST_HEAD(i32 %13)
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.acpi_device* @ACPI_COMPANION(%struct.device* %15)
  store %struct.acpi_device* %16, %struct.acpi_device** %11, align 8
  %17 = load %struct.acpi_device*, %struct.acpi_device** %11, align 8
  %18 = icmp ne %struct.acpi_device* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.i2c_client* @ERR_PTR(i32 %21)
  store %struct.i2c_client* %22, %struct.i2c_client** %4, align 8
  br label %72

23:                                               ; preds = %3
  %24 = call i32 @memset(%struct.i2c_acpi_lookup* %8, i32 0, i32 24)
  %25 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %26 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %8, i32 0, i32 3
  store %struct.i2c_board_info* %25, %struct.i2c_board_info** %26, align 8
  %27 = load %struct.acpi_device*, %struct.acpi_device** %11, align 8
  %28 = call i32 @acpi_device_handle(%struct.acpi_device* %27)
  %29 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %8, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %8, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load %struct.acpi_device*, %struct.acpi_device** %11, align 8
  %33 = load i32, i32* @i2c_acpi_fill_info, align 4
  %34 = call i32 @acpi_dev_get_resources(%struct.acpi_device* %32, i32* @resource_list, i32 %33, %struct.i2c_acpi_lookup* %8)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = load i32, i32* %12, align 4
  %39 = call %struct.i2c_client* @ERR_PTR(i32 %38)
  store %struct.i2c_client* %39, %struct.i2c_client** %4, align 8
  br label %72

40:                                               ; preds = %23
  %41 = call i32 @acpi_dev_free_resource_list(i32* @resource_list)
  %42 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %43 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @EADDRNOTAVAIL, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.i2c_client* @ERR_PTR(i32 %48)
  store %struct.i2c_client* %49, %struct.i2c_client** %4, align 8
  br label %72

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %8, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.i2c_adapter* @i2c_acpi_find_adapter_by_handle(i32 %52)
  store %struct.i2c_adapter* %53, %struct.i2c_adapter** %9, align 8
  %54 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %55 = icmp ne %struct.i2c_adapter* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @EPROBE_DEFER, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.i2c_client* @ERR_PTR(i32 %58)
  store %struct.i2c_client* %59, %struct.i2c_client** %4, align 8
  br label %72

60:                                               ; preds = %50
  %61 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %62 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %63 = call %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter* %61, %struct.i2c_board_info* %62)
  store %struct.i2c_client* %63, %struct.i2c_client** %10, align 8
  %64 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %65 = icmp ne %struct.i2c_client* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  %69 = call %struct.i2c_client* @ERR_PTR(i32 %68)
  store %struct.i2c_client* %69, %struct.i2c_client** %4, align 8
  br label %72

70:                                               ; preds = %60
  %71 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %71, %struct.i2c_client** %4, align 8
  br label %72

72:                                               ; preds = %70, %66, %56, %46, %37, %19
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  ret %struct.i2c_client* %73
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local %struct.acpi_device* @ACPI_COMPANION(%struct.device*) #1

declare dso_local %struct.i2c_client* @ERR_PTR(i32) #1

declare dso_local i32 @memset(%struct.i2c_acpi_lookup*, i32, i32) #1

declare dso_local i32 @acpi_device_handle(%struct.acpi_device*) #1

declare dso_local i32 @acpi_dev_get_resources(%struct.acpi_device*, i32*, i32, %struct.i2c_acpi_lookup*) #1

declare dso_local i32 @acpi_dev_free_resource_list(i32*) #1

declare dso_local %struct.i2c_adapter* @i2c_acpi_find_adapter_by_handle(i32) #1

declare dso_local %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
