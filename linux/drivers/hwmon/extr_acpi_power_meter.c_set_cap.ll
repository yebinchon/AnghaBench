; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_acpi_power_meter.c_set_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_acpi_power_meter.c_set_cap.c"
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
@.str = private unnamed_addr constant [5 x i8] c"_SHL\00", align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Evaluating _SHL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_cap(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  br label %96

35:                                               ; preds = %4
  %36 = load i64, i64* %15, align 8
  %37 = call i64 @DIV_ROUND_CLOSEST(i64 %36, i32 1000)
  store i64 %37, i64* %15, align 8
  %38 = load i64, i64* %15, align 8
  %39 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %11, align 8
  %40 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ugt i64 %38, %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %35
  %45 = load i64, i64* %15, align 8
  %46 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %11, align 8
  %47 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %45, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44, %35
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %96

54:                                               ; preds = %44
  %55 = load i64, i64* %15, align 8
  %56 = bitcast %union.acpi_object* %12 to %struct.TYPE_5__*
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %11, align 8
  %59 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %58, i32 0, i32 1
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %11, align 8
  %62 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @acpi_evaluate_integer(i32 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %13, i64* %16)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = call i64 @ACPI_FAILURE(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %54
  %71 = load i64, i64* %15, align 8
  %72 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %11, align 8
  %73 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %70, %54
  %75 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %11, align 8
  %76 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %75, i32 0, i32 1
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %17, align 4
  %79 = call i64 @ACPI_FAILURE(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load i32, i32* @AE_INFO, align 4
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([16 x i8]* @.str.1 to i32))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %96

87:                                               ; preds = %74
  %88 = load i64, i64* %16, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %96

93:                                               ; preds = %87
  %94 = load i64, i64* %9, align 8
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %93, %90, %81, %51, %33
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.acpi_device* @to_acpi_device(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

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
