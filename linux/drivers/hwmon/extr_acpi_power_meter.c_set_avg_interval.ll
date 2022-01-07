; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_acpi_power_meter.c_set_avg_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_acpi_power_meter.c_set_avg_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.acpi_device = type { %struct.acpi_power_meter_resource* }
%struct.acpi_power_meter_resource = type { i64, i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }
%union.acpi_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }

@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_PAI\00", align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Evaluating _PAI\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_avg_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_avg_interval(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.acpi_device*, align 8
  %11 = alloca %struct.acpi_power_meter_resource*, align 8
  %12 = alloca %union.acpi_object, align 8
  %13 = alloca %struct.acpi_object_list, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.acpi_device* @to_acpi_device(%struct.device* %18)
  store %struct.acpi_device* %19, %struct.acpi_device** %10, align 8
  %20 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  %21 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %20, i32 0, i32 0
  %22 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %21, align 8
  store %struct.acpi_power_meter_resource* %22, %struct.acpi_power_meter_resource** %11, align 8
  %23 = bitcast %union.acpi_object* %12 to %struct.TYPE_5__*
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %24, align 8
  %27 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %13, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %13, i32 0, i32 1
  store %union.acpi_object* %12, %union.acpi_object** %28, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @kstrtoul(i8* %29, i32 10, i64* %15)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %5, align 4
  br label %94

35:                                               ; preds = %4
  %36 = load i64, i64* %15, align 8
  %37 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %11, align 8
  %38 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ugt i64 %36, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = load i64, i64* %15, align 8
  %44 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %11, align 8
  %45 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %43, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %42, %35
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %94

52:                                               ; preds = %42
  %53 = load i64, i64* %15, align 8
  %54 = bitcast %union.acpi_object* %12 to %struct.TYPE_5__*
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %11, align 8
  %57 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %56, i32 0, i32 1
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %11, align 8
  %60 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @acpi_evaluate_integer(i32 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %13, i64* %16)
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = call i64 @ACPI_FAILURE(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %52
  %69 = load i64, i64* %15, align 8
  %70 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %11, align 8
  %71 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %68, %52
  %73 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %11, align 8
  %74 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %73, i32 0, i32 1
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %17, align 4
  %77 = call i64 @ACPI_FAILURE(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i32, i32* @AE_INFO, align 4
  %81 = load i32, i32* %17, align 4
  %82 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([16 x i8]* @.str.1 to i32))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %94

85:                                               ; preds = %72
  %86 = load i64, i64* %16, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %94

91:                                               ; preds = %85
  %92 = load i64, i64* %9, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %91, %88, %79, %49, %33
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local %struct.acpi_device* @to_acpi_device(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, %struct.acpi_object_list*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
