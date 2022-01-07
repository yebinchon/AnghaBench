; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_asus_atk0110.c_atk_ec_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_asus_atk0110.c_atk_ec_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atk_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%union.acpi_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.atk_acpi_input_buf = type { i32, i64, i32 }
%struct.atk_acpi_ret_buffer = type { i64 }

@ATK_EC_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to %sable the EC\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"EC %sabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atk_data*, i32)* @atk_ec_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atk_ec_ctl(%struct.atk_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atk_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca %struct.atk_acpi_input_buf, align 8
  %9 = alloca %struct.atk_acpi_ret_buffer*, align 8
  %10 = alloca i32, align 4
  store %struct.atk_data* %0, %struct.atk_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.atk_data*, %struct.atk_data** %4, align 8
  %12 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %6, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @ATK_EC_ID, align 4
  %16 = getelementptr inbounds %struct.atk_acpi_input_buf, %struct.atk_acpi_input_buf* %8, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds %struct.atk_acpi_input_buf, %struct.atk_acpi_input_buf* %8, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.atk_acpi_input_buf, %struct.atk_acpi_input_buf* %8, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.atk_data*, %struct.atk_data** %4, align 8
  %21 = call %union.acpi_object* @atk_sitm(%struct.atk_data* %20, %struct.atk_acpi_input_buf* %8)
  store %union.acpi_object* %21, %union.acpi_object** %7, align 8
  %22 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %23 = call i64 @IS_ERR(%union.acpi_object* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %31 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %33 = call i32 @PTR_ERR(%union.acpi_object* %32)
  store i32 %33, i32* %3, align 4
  br label %64

34:                                               ; preds = %2
  %35 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %36 = bitcast %union.acpi_object* %35 to %struct.TYPE_3__*
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.atk_acpi_ret_buffer*
  store %struct.atk_acpi_ret_buffer* %39, %struct.atk_acpi_ret_buffer** %9, align 8
  %40 = load %struct.atk_acpi_ret_buffer*, %struct.atk_acpi_ret_buffer** %9, align 8
  %41 = getelementptr inbounds %struct.atk_acpi_ret_buffer, %struct.atk_acpi_ret_buffer* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %34
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %50 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %10, align 4
  br label %60

53:                                               ; preds = %34
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %59 = call i32 @dev_info(%struct.device* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %53, %44
  %61 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %62 = call i32 @ACPI_FREE(%union.acpi_object* %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %25
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %union.acpi_object* @atk_sitm(%struct.atk_data*, %struct.atk_acpi_input_buf*) #1

declare dso_local i64 @IS_ERR(%union.acpi_object*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*) #1

declare dso_local i32 @PTR_ERR(%union.acpi_object*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
