; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-acpi.c_i2c_acpi_find_bus_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-acpi.c_i2c_acpi_find_bus_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_acpi_lookup = type { i64, i32, %struct.i2c_board_info*, i32 }
%struct.i2c_board_info = type { i32 }

@UINT_MAX = common dso_local global i64 0, align 8
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@ACPI_ROOT_OBJECT = common dso_local global i32 0, align 4
@I2C_ACPI_MAX_SCAN_DEPTH = common dso_local global i32 0, align 4
@i2c_acpi_lookup_speed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"unable to find I2C bus speed from ACPI\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i2c_acpi_find_bus_speed(%struct.device* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.i2c_acpi_lookup, align 8
  %5 = alloca %struct.i2c_board_info, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call i32 @has_acpi_companion(%struct.device* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %42

11:                                               ; preds = %1
  %12 = call i32 @memset(%struct.i2c_acpi_lookup* %4, i32 0, i32 32)
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i32 @ACPI_HANDLE(%struct.device* %13)
  %15 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %4, i32 0, i32 3
  store i32 %14, i32* %15, align 8
  %16 = load i64, i64* @UINT_MAX, align 8
  %17 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %4, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %4, i32 0, i32 2
  store %struct.i2c_board_info* %5, %struct.i2c_board_info** %18, align 8
  %19 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %4, i32 0, i32 1
  store i32 -1, i32* %19, align 8
  %20 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %21 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %22 = load i32, i32* @I2C_ACPI_MAX_SCAN_DEPTH, align 4
  %23 = load i32, i32* @i2c_acpi_lookup_speed, align 4
  %24 = call i32 @acpi_walk_namespace(i32 %20, i32 %21, i32 %22, i32 %23, i32* null, %struct.i2c_acpi_lookup* %4, i32* null)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @ACPI_FAILURE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %11
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = call i32 @dev_warn(%struct.device* %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  br label %42

31:                                               ; preds = %11
  %32 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %4, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @UINT_MAX, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %4, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  br label %40

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi i64 [ %38, %36 ], [ 0, %39 ]
  store i64 %41, i64* %2, align 8
  br label %42

42:                                               ; preds = %40, %28, %10
  %43 = load i64, i64* %2, align 8
  ret i64 %43
}

declare dso_local i32 @has_acpi_companion(%struct.device*) #1

declare dso_local i32 @memset(%struct.i2c_acpi_lookup*, i32, i32) #1

declare dso_local i32 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i32 @acpi_walk_namespace(i32, i32, i32, i32, i32*, %struct.i2c_acpi_lookup*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
