; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_chipone_icn8505.c_icn8505_probe_acpi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_chipone_icn8505.c_icn8505_probe_acpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icn8505_data = type { i32 }
%struct.device = type { i32 }
%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }
%union.acpi_object = type { i64 }
%struct.acpi_device = type { i32 }
%struct.TYPE_2__ = type { i8* }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"_SUB\00", align 1
@ACPI_TYPE_STRING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Warning ACPI _SUB did not return a string\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Warning ACPI _SUB failed: %#x\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"chipone/icn8505-%s.fw\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icn8505_data*, %struct.device*)* @icn8505_probe_acpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icn8505_probe_acpi(%struct.icn8505_data* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.icn8505_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.acpi_buffer, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.acpi_device*, align 8
  %9 = alloca %union.acpi_object*, align 8
  %10 = alloca i32, align 4
  store %struct.icn8505_data* %0, %struct.icn8505_data** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %11 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %12 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %union.acpi_object*
  store %union.acpi_object* %14, %union.acpi_object** %11, align 8
  %15 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 2
  store i32 0, i32* %16, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.acpi_device* @ACPI_COMPANION(%struct.device* %17)
  store %struct.acpi_device* %18, %struct.acpi_device** %8, align 8
  %19 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %20 = icmp ne %struct.acpi_device* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %63

24:                                               ; preds = %2
  %25 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %26 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @acpi_evaluate_object(i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, %struct.acpi_buffer* %6)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @ACPI_SUCCESS(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %34 = load %union.acpi_object*, %union.acpi_object** %33, align 8
  store %union.acpi_object* %34, %union.acpi_object** %9, align 8
  %35 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %36 = bitcast %union.acpi_object* %35 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ACPI_TYPE_STRING, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %42 = bitcast %union.acpi_object* %41 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %7, align 8
  br label %48

45:                                               ; preds = %32
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %40
  br label %54

49:                                               ; preds = %24
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  store %union.acpi_object* null, %union.acpi_object** %53, align 8
  br label %54

54:                                               ; preds = %49, %48
  %55 = load %struct.icn8505_data*, %struct.icn8505_data** %4, align 8
  %56 = getelementptr inbounds %struct.icn8505_data, %struct.icn8505_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @snprintf(i32 %57, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  %60 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %61 = load %union.acpi_object*, %union.acpi_object** %60, align 8
  %62 = call i32 @kfree(%union.acpi_object* %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %54, %21
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(%struct.device*) #1

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
