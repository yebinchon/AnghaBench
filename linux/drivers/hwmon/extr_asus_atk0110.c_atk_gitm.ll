; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_asus_atk0110.c_atk_gitm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_asus_atk0110.c_atk_gitm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.atk_data = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.atk_acpi_input_buf = type { i64, i64, i32 }
%struct.acpi_object_list = type { i32, i8* }
%struct.acpi_buffer = type { %union.acpi_object*, i32 }

@ACPI_TYPE_BUFFER = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"GITM[%#llx] ACPI exception: %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unexpected ASBF length: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.acpi_object* (%struct.atk_data*, i32)* @atk_gitm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.acpi_object* @atk_gitm(%struct.atk_data* %0, i32 %1) #0 {
  %3 = alloca %union.acpi_object*, align 8
  %4 = alloca %struct.atk_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.atk_acpi_input_buf, align 8
  %8 = alloca %union.acpi_object, align 8
  %9 = alloca %struct.acpi_object_list, align 8
  %10 = alloca %struct.acpi_buffer, align 8
  %11 = alloca %union.acpi_object*, align 8
  %12 = alloca i64, align 8
  store %struct.atk_data* %0, %struct.atk_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.atk_data*, %struct.atk_data** %4, align 8
  %14 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds %struct.atk_acpi_input_buf, %struct.atk_acpi_input_buf* %7, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.atk_acpi_input_buf, %struct.atk_acpi_input_buf* %7, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.atk_acpi_input_buf, %struct.atk_acpi_input_buf* %7, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @ACPI_TYPE_BUFFER, align 4
  %22 = bitcast %union.acpi_object* %8 to i32*
  store i32 %21, i32* %22, align 8
  %23 = bitcast %struct.atk_acpi_input_buf* %7 to i32*
  %24 = bitcast %union.acpi_object* %8 to %struct.TYPE_4__*
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = bitcast %union.acpi_object* %8 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 24, i32* %27, align 8
  %28 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %9, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = bitcast %union.acpi_object* %8 to i8*
  %30 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %9, i32 0, i32 1
  store i8* %29, i8** %30, align 8
  %31 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %32 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %10, i32 0, i32 1
  store i32 %31, i32* %32, align 8
  %33 = load %struct.atk_data*, %struct.atk_data** %4, align 8
  %34 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ACPI_TYPE_BUFFER, align 4
  %37 = call i64 @acpi_evaluate_object_typed(i32 %35, i32* null, %struct.acpi_object_list* %9, %struct.acpi_buffer* %10, i32 %36)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* @AE_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %2
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @acpi_format_exception(i64 %44)
  %46 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %45)
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %union.acpi_object* @ERR_PTR(i32 %48)
  store %union.acpi_object* %49, %union.acpi_object** %3, align 8
  br label %72

50:                                               ; preds = %2
  %51 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %10, i32 0, i32 0
  %52 = load %union.acpi_object*, %union.acpi_object** %51, align 8
  store %union.acpi_object* %52, %union.acpi_object** %11, align 8
  %53 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %54 = bitcast %union.acpi_object* %53 to %struct.TYPE_4__*
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %56, 8
  br i1 %57, label %58, label %70

58:                                               ; preds = %50
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %61 = bitcast %union.acpi_object* %60 to %struct.TYPE_4__*
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %66 = call i32 @ACPI_FREE(%union.acpi_object* %65)
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  %69 = call %union.acpi_object* @ERR_PTR(i32 %68)
  store %union.acpi_object* %69, %union.acpi_object** %3, align 8
  br label %72

70:                                               ; preds = %50
  %71 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  store %union.acpi_object* %71, %union.acpi_object** %3, align 8
  br label %72

72:                                               ; preds = %70, %58, %41
  %73 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  ret %union.acpi_object* %73
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
