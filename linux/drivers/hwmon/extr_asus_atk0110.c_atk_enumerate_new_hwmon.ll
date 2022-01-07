; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_asus_atk0110.c_atk_enumerate_new_hwmon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_asus_atk0110.c_atk_enumerate_new_hwmon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atk_data = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %union.acpi_object* }

@.str = private unnamed_addr constant [27 x i8] c"Enumerating hwmon sensors\0A\00", align 1
@ATK_MUX_HWMON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atk_data*)* @atk_enumerate_new_hwmon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atk_enumerate_new_hwmon(%struct.atk_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atk_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %union.acpi_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.acpi_object*, align 8
  store %struct.atk_data* %0, %struct.atk_data** %3, align 8
  %9 = load %struct.atk_data*, %struct.atk_data** %3, align 8
  %10 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %9, i32 0, i32 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.atk_data*, %struct.atk_data** %3, align 8
  %14 = call i32 @atk_ec_present(%struct.atk_data* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %91

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %19
  %23 = load %struct.atk_data*, %struct.atk_data** %3, align 8
  %24 = call i32 @atk_ec_enabled(%struct.atk_data* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %91

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.atk_data*, %struct.atk_data** %3, align 8
  %32 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.atk_data*, %struct.atk_data** %3, align 8
  %34 = call i32 @atk_ec_ctl(%struct.atk_data* %33, i32 1)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.atk_data*, %struct.atk_data** %3, align 8
  %39 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %91

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %19
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call i32 @dev_dbg(%struct.device* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.atk_data*, %struct.atk_data** %3, align 8
  %46 = load i32, i32* @ATK_MUX_HWMON, align 4
  %47 = call %union.acpi_object* @atk_ggrp(%struct.atk_data* %45, i32 %46)
  store %union.acpi_object* %47, %union.acpi_object** %5, align 8
  %48 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %49 = call i64 @IS_ERR(%union.acpi_object* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %53 = call i32 @PTR_ERR(%union.acpi_object* %52)
  store i32 %53, i32* %2, align 4
  br label %91

54:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %73, %54
  %56 = load i32, i32* %7, align 4
  %57 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %58 = bitcast %union.acpi_object* %57 to %struct.TYPE_4__*
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %56, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %55
  %63 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %64 = bitcast %union.acpi_object* %63 to %struct.TYPE_4__*
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load %union.acpi_object*, %union.acpi_object** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %66, i64 %68
  store %union.acpi_object* %69, %union.acpi_object** %8, align 8
  %70 = load %struct.atk_data*, %struct.atk_data** %3, align 8
  %71 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %72 = call i32 @atk_add_sensor(%struct.atk_data* %70, %union.acpi_object* %71)
  br label %73

73:                                               ; preds = %62
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %55

76:                                               ; preds = %55
  %77 = load %struct.atk_data*, %struct.atk_data** %3, align 8
  %78 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.atk_data*, %struct.atk_data** %3, align 8
  %81 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %79, %82
  %84 = load %struct.atk_data*, %struct.atk_data** %3, align 8
  %85 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %83, %86
  store i32 %87, i32* %6, align 4
  %88 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %89 = call i32 @ACPI_FREE(%union.acpi_object* %88)
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %76, %51, %37, %27, %17
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @atk_ec_present(%struct.atk_data*) #1

declare dso_local i32 @atk_ec_enabled(%struct.atk_data*) #1

declare dso_local i32 @atk_ec_ctl(%struct.atk_data*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local %union.acpi_object* @atk_ggrp(%struct.atk_data*, i32) #1

declare dso_local i64 @IS_ERR(%union.acpi_object*) #1

declare dso_local i32 @PTR_ERR(%union.acpi_object*) #1

declare dso_local i32 @atk_add_sensor(%struct.atk_data*, %union.acpi_object*) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
