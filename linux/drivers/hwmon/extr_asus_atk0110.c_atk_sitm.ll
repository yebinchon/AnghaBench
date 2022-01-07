; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_asus_atk0110.c_atk_sitm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_asus_atk0110.c_atk_sitm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.atk_data = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.atk_acpi_input_buf = type { i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.acpi_buffer = type { %union.acpi_object*, i32 }

@ACPI_TYPE_BUFFER = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"SITM[%#x] ACPI exception: %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unexpected ASBF length: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.acpi_object* (%struct.atk_data*, %struct.atk_acpi_input_buf*)* @atk_sitm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.acpi_object* @atk_sitm(%struct.atk_data* %0, %struct.atk_acpi_input_buf* %1) #0 {
  %3 = alloca %union.acpi_object*, align 8
  %4 = alloca %struct.atk_data*, align 8
  %5 = alloca %struct.atk_acpi_input_buf*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.acpi_object_list, align 8
  %8 = alloca %union.acpi_object, align 8
  %9 = alloca %struct.acpi_buffer, align 8
  %10 = alloca %union.acpi_object*, align 8
  %11 = alloca i64, align 8
  store %struct.atk_data* %0, %struct.atk_data** %4, align 8
  store %struct.atk_acpi_input_buf* %1, %struct.atk_acpi_input_buf** %5, align 8
  %12 = load %struct.atk_data*, %struct.atk_data** %4, align 8
  %13 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load i32, i32* @ACPI_TYPE_BUFFER, align 4
  %17 = bitcast %union.acpi_object* %8 to i32*
  store i32 %16, i32* %17, align 8
  %18 = load %struct.atk_acpi_input_buf*, %struct.atk_acpi_input_buf** %5, align 8
  %19 = bitcast %struct.atk_acpi_input_buf* %18 to i32*
  %20 = bitcast %union.acpi_object* %8 to %struct.TYPE_4__*
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  %22 = bitcast %union.acpi_object* %8 to %struct.TYPE_4__*
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 4, i32* %23, align 8
  %24 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %7, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %7, i32 0, i32 1
  store %union.acpi_object* %8, %union.acpi_object** %25, align 8
  %26 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %27 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = load %struct.atk_data*, %struct.atk_data** %4, align 8
  %29 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ACPI_TYPE_BUFFER, align 4
  %32 = call i64 @acpi_evaluate_object_typed(i32 %30, i32* null, %struct.acpi_object_list* %7, %struct.acpi_buffer* %9, i32 %31)
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @AE_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %2
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = load %struct.atk_acpi_input_buf*, %struct.atk_acpi_input_buf** %5, align 8
  %39 = getelementptr inbounds %struct.atk_acpi_input_buf, %struct.atk_acpi_input_buf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @acpi_format_exception(i64 %41)
  %43 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %42)
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %union.acpi_object* @ERR_PTR(i32 %45)
  store %union.acpi_object* %46, %union.acpi_object** %3, align 8
  br label %69

47:                                               ; preds = %2
  %48 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0
  %49 = load %union.acpi_object*, %union.acpi_object** %48, align 8
  store %union.acpi_object* %49, %union.acpi_object** %10, align 8
  %50 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %51 = bitcast %union.acpi_object* %50 to %struct.TYPE_4__*
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %53, 8
  br i1 %54, label %55, label %67

55:                                               ; preds = %47
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %58 = bitcast %union.acpi_object* %57 to %struct.TYPE_4__*
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %63 = call i32 @ACPI_FREE(%union.acpi_object* %62)
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  %66 = call %union.acpi_object* @ERR_PTR(i32 %65)
  store %union.acpi_object* %66, %union.acpi_object** %3, align 8
  br label %69

67:                                               ; preds = %47
  %68 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  store %union.acpi_object* %68, %union.acpi_object** %3, align 8
  br label %69

69:                                               ; preds = %67, %55, %36
  %70 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  ret %union.acpi_object* %70
}

declare dso_local i64 @acpi_evaluate_object_typed(i32, i32*, %struct.acpi_object_list*, %struct.acpi_buffer*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @acpi_format_exception(i64) #1

declare dso_local %union.acpi_object* @ERR_PTR(i32) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
