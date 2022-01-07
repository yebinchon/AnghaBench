; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina3221.c_ina3221_probe_child_from_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina3221.c_ina3221_probe_child_from_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.ina3221_data = type { %struct.ina3221_input* }
%struct.ina3221_input = type { i32, i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"missing reg property of %pOFn\0A\00", align 1
@INA3221_CHANNEL3 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"invalid reg %d of %pOFn\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"shunt-resistor-micro-ohms\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"invalid shunt resistor value %u of %pOFn\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_node*, %struct.ina3221_data*)* @ina3221_probe_child_from_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina3221_probe_child_from_dt(%struct.device* %0, %struct.device_node* %1, %struct.ina3221_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.ina3221_data*, align 8
  %8 = alloca %struct.ina3221_input*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.ina3221_data* %2, %struct.ina3221_data** %7, align 8
  %11 = load %struct.device_node*, %struct.device_node** %6, align 8
  %12 = call i32 @of_property_read_u32(%struct.device_node* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %9)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = ptrtoint %struct.device_node* %17 to i64
  %19 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %71

21:                                               ; preds = %3
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @INA3221_CHANNEL3, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.device_node*, %struct.device_node** %6, align 8
  %29 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %27, %struct.device_node* %28)
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %4, align 4
  br label %71

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.ina3221_data*, %struct.ina3221_data** %7, align 8
  %34 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %33, i32 0, i32 0
  %35 = load %struct.ina3221_input*, %struct.ina3221_input** %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds %struct.ina3221_input, %struct.ina3221_input* %35, i64 %36
  store %struct.ina3221_input* %37, %struct.ina3221_input** %8, align 8
  %38 = load %struct.device_node*, %struct.device_node** %6, align 8
  %39 = call i32 @of_device_is_available(%struct.device_node* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  %42 = load %struct.ina3221_input*, %struct.ina3221_input** %8, align 8
  %43 = getelementptr inbounds %struct.ina3221_input, %struct.ina3221_input* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  store i32 0, i32* %4, align 4
  br label %71

44:                                               ; preds = %32
  %45 = load %struct.device_node*, %struct.device_node** %6, align 8
  %46 = load %struct.ina3221_input*, %struct.ina3221_input** %8, align 8
  %47 = getelementptr inbounds %struct.ina3221_input, %struct.ina3221_input* %46, i32 0, i32 2
  %48 = call i32 @of_property_read_string(%struct.device_node* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %47)
  %49 = load %struct.device_node*, %struct.device_node** %6, align 8
  %50 = call i32 @of_property_read_u32(%struct.device_node* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64* %9)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %70, label %52

52:                                               ; preds = %44
  %53 = load i64, i64* %9, align 8
  %54 = icmp ult i64 %53, 1
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* @INT_MAX, align 8
  %58 = icmp ugt i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55, %52
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.device_node*, %struct.device_node** %6, align 8
  %63 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %61, %struct.device_node* %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %71

66:                                               ; preds = %55
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.ina3221_input*, %struct.ina3221_input** %8, align 8
  %69 = getelementptr inbounds %struct.ina3221_input, %struct.ina3221_input* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %44
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %59, %41, %25, %15
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, ...) #1

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
