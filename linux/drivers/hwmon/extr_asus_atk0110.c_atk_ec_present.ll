; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_asus_atk0110.c_atk_ec_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_asus_atk0110.c_atk_ec_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atk_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%union.acpi_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %union.acpi_object* }
%struct.TYPE_6__ = type { i64 }

@ATK_MUX_MGMT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Class %#llx not found\0A\00", align 1
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@ATK_EC_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"EC not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atk_data*)* @atk_ec_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atk_ec_present(%struct.atk_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atk_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %union.acpi_object*, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_object*, align 8
  %10 = alloca %union.acpi_object*, align 8
  store %struct.atk_data* %0, %struct.atk_data** %3, align 8
  %11 = load %struct.atk_data*, %struct.atk_data** %3, align 8
  %12 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.atk_data*, %struct.atk_data** %3, align 8
  %16 = load i32, i32* @ATK_MUX_MGMT, align 4
  %17 = call %union.acpi_object* @atk_ggrp(%struct.atk_data* %15, i32 %16)
  store %union.acpi_object* %17, %union.acpi_object** %5, align 8
  %18 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %19 = call i64 @IS_ERR(%union.acpi_object* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %1
  %22 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %23 = call i32 @PTR_ERR(%union.acpi_object* %22)
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* @ATK_MUX_MGMT, align 4
  %30 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 0, i32* %2, align 4
  br label %94

31:                                               ; preds = %21
  %32 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %33 = call i32 @PTR_ERR(%union.acpi_object* %32)
  store i32 %33, i32* %2, align 4
  br label %94

34:                                               ; preds = %1
  store %union.acpi_object* null, %union.acpi_object** %6, align 8
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %78, %34
  %36 = load i32, i32* %8, align 4
  %37 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %38 = bitcast %union.acpi_object* %37 to %struct.TYPE_5__*
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %81

42:                                               ; preds = %35
  %43 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %44 = bitcast %union.acpi_object* %43 to %struct.TYPE_5__*
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load %union.acpi_object*, %union.acpi_object** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %46, i64 %48
  store %union.acpi_object* %49, %union.acpi_object** %9, align 8
  %50 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %51 = bitcast %union.acpi_object* %50 to i64*
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  br label %78

56:                                               ; preds = %42
  %57 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %58 = bitcast %union.acpi_object* %57 to %struct.TYPE_5__*
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load %union.acpi_object*, %union.acpi_object** %59, align 8
  %61 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %60, i64 0
  store %union.acpi_object* %61, %union.acpi_object** %10, align 8
  %62 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %63 = bitcast %union.acpi_object* %62 to i64*
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %78

68:                                               ; preds = %56
  %69 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %70 = bitcast %union.acpi_object* %69 to %struct.TYPE_6__*
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ATK_EC_ID, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  store %union.acpi_object* %76, %union.acpi_object** %6, align 8
  br label %81

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77, %67, %55
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %35

81:                                               ; preds = %75, %35
  %82 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %83 = icmp ne %union.acpi_object* %82, null
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %81
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %81
  %91 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %92 = call i32 @ACPI_FREE(%union.acpi_object* %91)
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %90, %31, %27
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %union.acpi_object* @atk_ggrp(%struct.atk_data*, i32) #1

declare dso_local i64 @IS_ERR(%union.acpi_object*) #1

declare dso_local i32 @PTR_ERR(%union.acpi_object*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
