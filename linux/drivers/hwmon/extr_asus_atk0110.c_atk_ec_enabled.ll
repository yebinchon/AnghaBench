; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_asus_atk0110.c_atk_ec_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_asus_atk0110.c_atk_ec_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atk_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%union.acpi_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.atk_acpi_ret_buffer = type { i64, i64 }

@ATK_EC_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unable to query EC status\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"EC is %sabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atk_data*)* @atk_ec_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atk_ec_enabled(%struct.atk_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atk_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %union.acpi_object*, align 8
  %6 = alloca %struct.atk_acpi_ret_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.atk_data* %0, %struct.atk_data** %3, align 8
  %8 = load %struct.atk_data*, %struct.atk_data** %3, align 8
  %9 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.atk_data*, %struct.atk_data** %3, align 8
  %13 = load i32, i32* @ATK_EC_ID, align 4
  %14 = call %union.acpi_object* @atk_gitm(%struct.atk_data* %12, i32 %13)
  store %union.acpi_object* %14, %union.acpi_object** %5, align 8
  %15 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %16 = call i64 @IS_ERR(%union.acpi_object* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %22 = call i32 @PTR_ERR(%union.acpi_object* %21)
  store i32 %22, i32* %2, align 4
  br label %54

23:                                               ; preds = %1
  %24 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %25 = bitcast %union.acpi_object* %24 to %struct.TYPE_3__*
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.atk_acpi_ret_buffer*
  store %struct.atk_acpi_ret_buffer* %28, %struct.atk_acpi_ret_buffer** %6, align 8
  %29 = load %struct.atk_acpi_ret_buffer*, %struct.atk_acpi_ret_buffer** %6, align 8
  %30 = getelementptr inbounds %struct.atk_acpi_ret_buffer, %struct.atk_acpi_ret_buffer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %50

38:                                               ; preds = %23
  %39 = load %struct.atk_acpi_ret_buffer*, %struct.atk_acpi_ret_buffer** %6, align 8
  %40 = getelementptr inbounds %struct.atk_acpi_ret_buffer, %struct.atk_acpi_ret_buffer* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %7, align 4
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %49 = call i32 @dev_dbg(%struct.device* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %38, %33
  %51 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %52 = call i32 @ACPI_FREE(%union.acpi_object* %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %18
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %union.acpi_object* @atk_gitm(%struct.atk_data*, i32) #1

declare dso_local i64 @IS_ERR(%union.acpi_object*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%union.acpi_object*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
