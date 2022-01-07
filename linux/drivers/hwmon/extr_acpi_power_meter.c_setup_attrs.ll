; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_acpi_power_meter.c_setup_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_acpi_power_meter.c_setup_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_power_meter_resource = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@POWER_METER_CAN_MEASURE = common dso_local global i32 0, align 4
@meter_attrs = common dso_local global i32 0, align 4
@POWER_METER_CAN_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Ignoring unsafe software power cap!\0A\00", align 1
@rw_cap_attrs = common dso_local global i32 0, align 4
@ro_cap_attrs = common dso_local global i32 0, align 4
@misc_cap_attrs = common dso_local global i32 0, align 4
@POWER_METER_CAN_TRIP = common dso_local global i32 0, align 4
@trip_attrs = common dso_local global i32 0, align 4
@misc_attrs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_power_meter_resource*)* @setup_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_attrs(%struct.acpi_power_meter_resource* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_power_meter_resource*, align 8
  %4 = alloca i32, align 4
  store %struct.acpi_power_meter_resource* %0, %struct.acpi_power_meter_resource** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %6 = call i32 @read_domain_devices(%struct.acpi_power_meter_resource* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %100

11:                                               ; preds = %1
  %12 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @POWER_METER_CAN_MEASURE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %21 = load i32, i32* @meter_attrs, align 4
  %22 = call i32 @register_attrs(%struct.acpi_power_meter_resource* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %96

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %11
  %28 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %29 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @POWER_METER_CAN_CAP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %70

35:                                               ; preds = %27
  %36 = call i32 (...) @can_cap_in_hardware()
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %40 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @dev_warn(i32* %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %71

44:                                               ; preds = %35
  %45 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %46 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %52 = load i32, i32* @rw_cap_attrs, align 4
  %53 = call i32 @register_attrs(%struct.acpi_power_meter_resource* %51, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %58

54:                                               ; preds = %44
  %55 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %56 = load i32, i32* @ro_cap_attrs, align 4
  %57 = call i32 @register_attrs(%struct.acpi_power_meter_resource* %55, i32 %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %96

62:                                               ; preds = %58
  %63 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %64 = load i32, i32* @misc_cap_attrs, align 4
  %65 = call i32 @register_attrs(%struct.acpi_power_meter_resource* %63, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %96

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %27
  br label %71

71:                                               ; preds = %70, %38
  %72 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %73 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @POWER_METER_CAN_TRIP, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %71
  %80 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %81 = load i32, i32* @trip_attrs, align 4
  %82 = call i32 @register_attrs(%struct.acpi_power_meter_resource* %80, i32 %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %96

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %71
  %88 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %89 = load i32, i32* @misc_attrs, align 4
  %90 = call i32 @register_attrs(%struct.acpi_power_meter_resource* %88, i32 %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %96

94:                                               ; preds = %87
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %2, align 4
  br label %100

96:                                               ; preds = %93, %85, %68, %61, %25
  %97 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %98 = call i32 @remove_attrs(%struct.acpi_power_meter_resource* %97)
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %96, %94, %9
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @read_domain_devices(%struct.acpi_power_meter_resource*) #1

declare dso_local i32 @register_attrs(%struct.acpi_power_meter_resource*, i32) #1

declare dso_local i32 @can_cap_in_hardware(...) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @remove_attrs(%struct.acpi_power_meter_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
