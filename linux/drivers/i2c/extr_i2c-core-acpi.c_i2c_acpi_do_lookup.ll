; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-acpi.c_i2c_acpi_do_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-acpi.c_i2c_acpi_do_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_acpi_lookup = type { i32, %struct.i2c_board_info* }
%struct.i2c_board_info = type { i32 }
%struct.list_head = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@i2c_acpi_ignored_device_ids = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@i2c_acpi_fill_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, %struct.i2c_acpi_lookup*)* @i2c_acpi_do_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_acpi_do_lookup(%struct.acpi_device* %0, %struct.i2c_acpi_lookup* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %struct.i2c_acpi_lookup*, align 8
  %6 = alloca %struct.i2c_board_info*, align 8
  %7 = alloca %struct.list_head, align 4
  %8 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store %struct.i2c_acpi_lookup* %1, %struct.i2c_acpi_lookup** %5, align 8
  %9 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %5, align 8
  %10 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %9, i32 0, i32 1
  %11 = load %struct.i2c_board_info*, %struct.i2c_board_info** %10, align 8
  store %struct.i2c_board_info* %11, %struct.i2c_board_info** %6, align 8
  %12 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %13 = call i64 @acpi_bus_get_status(%struct.acpi_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %17 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15, %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %56

24:                                               ; preds = %15
  %25 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %26 = load i32, i32* @i2c_acpi_ignored_device_ids, align 4
  %27 = call i64 @acpi_match_device_ids(%struct.acpi_device* %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %56

32:                                               ; preds = %24
  %33 = load %struct.i2c_board_info*, %struct.i2c_board_info** %6, align 8
  %34 = call i32 @memset(%struct.i2c_board_info* %33, i32 0, i32 4)
  %35 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %36 = call i32 @acpi_device_handle(%struct.acpi_device* %35)
  %37 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %5, align 8
  %38 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = call i32 @INIT_LIST_HEAD(%struct.list_head* %7)
  %40 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %41 = load i32, i32* @i2c_acpi_fill_info, align 4
  %42 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %5, align 8
  %43 = call i32 @acpi_dev_get_resources(%struct.acpi_device* %40, %struct.list_head* %7, i32 %41, %struct.i2c_acpi_lookup* %42)
  store i32 %43, i32* %8, align 4
  %44 = call i32 @acpi_dev_free_resource_list(%struct.list_head* %7)
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %32
  %48 = load %struct.i2c_board_info*, %struct.i2c_board_info** %6, align 8
  %49 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47, %32
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %52, %29, %21
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @acpi_bus_get_status(%struct.acpi_device*) #1

declare dso_local i64 @acpi_match_device_ids(%struct.acpi_device*, i32) #1

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #1

declare dso_local i32 @acpi_device_handle(%struct.acpi_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @acpi_dev_get_resources(%struct.acpi_device*, %struct.list_head*, i32, %struct.i2c_acpi_lookup*) #1

declare dso_local i32 @acpi_dev_free_resource_list(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
