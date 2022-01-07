; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_asus_atk0110.c_atk_read_value_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_asus_atk0110.c_atk_read_value_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atk_sensor_data = type { i32, %struct.atk_data* }
%struct.atk_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%union.acpi_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.atk_acpi_ret_buffer = type { i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Read failed, sensor = %#llx\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atk_sensor_data*, i32*)* @atk_read_value_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atk_read_value_new(%struct.atk_sensor_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atk_sensor_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.atk_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %union.acpi_object*, align 8
  %9 = alloca %struct.atk_acpi_ret_buffer*, align 8
  %10 = alloca i32, align 4
  store %struct.atk_sensor_data* %0, %struct.atk_sensor_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.atk_sensor_data*, %struct.atk_sensor_data** %4, align 8
  %12 = getelementptr inbounds %struct.atk_sensor_data, %struct.atk_sensor_data* %11, i32 0, i32 1
  %13 = load %struct.atk_data*, %struct.atk_data** %12, align 8
  store %struct.atk_data* %13, %struct.atk_data** %6, align 8
  %14 = load %struct.atk_data*, %struct.atk_data** %6, align 8
  %15 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %7, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.atk_data*, %struct.atk_data** %6, align 8
  %19 = load %struct.atk_sensor_data*, %struct.atk_sensor_data** %4, align 8
  %20 = getelementptr inbounds %struct.atk_sensor_data, %struct.atk_sensor_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %union.acpi_object* @atk_gitm(%struct.atk_data* %18, i32 %21)
  store %union.acpi_object* %22, %union.acpi_object** %8, align 8
  %23 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %24 = call i64 @IS_ERR(%union.acpi_object* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %28 = call i32 @PTR_ERR(%union.acpi_object* %27)
  store i32 %28, i32* %3, align 4
  br label %56

29:                                               ; preds = %2
  %30 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %31 = bitcast %union.acpi_object* %30 to %struct.TYPE_3__*
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.atk_acpi_ret_buffer*
  store %struct.atk_acpi_ret_buffer* %34, %struct.atk_acpi_ret_buffer** %9, align 8
  %35 = load %struct.atk_acpi_ret_buffer*, %struct.atk_acpi_ret_buffer** %9, align 8
  %36 = getelementptr inbounds %struct.atk_acpi_ret_buffer, %struct.atk_acpi_ret_buffer* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %29
  %40 = load %struct.device*, %struct.device** %7, align 8
  %41 = load %struct.atk_sensor_data*, %struct.atk_sensor_data** %4, align 8
  %42 = getelementptr inbounds %struct.atk_sensor_data, %struct.atk_sensor_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_warn(%struct.device* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %10, align 4
  br label %52

47:                                               ; preds = %29
  %48 = load %struct.atk_acpi_ret_buffer*, %struct.atk_acpi_ret_buffer** %9, align 8
  %49 = getelementptr inbounds %struct.atk_acpi_ret_buffer, %struct.atk_acpi_ret_buffer* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %39
  %53 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %54 = call i32 @ACPI_FREE(%union.acpi_object* %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %26
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %union.acpi_object* @atk_gitm(%struct.atk_data*, i32) #1

declare dso_local i64 @IS_ERR(%union.acpi_object*) #1

declare dso_local i32 @PTR_ERR(%union.acpi_object*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
