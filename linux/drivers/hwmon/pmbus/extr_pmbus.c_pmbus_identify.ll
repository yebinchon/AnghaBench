; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus.c_pmbus_identify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus.c_pmbus_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_driver_info = type { i32, i64*, i32 }

@PMBUS_PAGE = common dso_local global i32 0, align 4
@PMBUS_PAGES = common dso_local global i32 0, align 4
@PMBUS_VOUT_MODE = common dso_local global i32 0, align 4
@vid = common dso_local global i64 0, align 8
@PSC_VOLTAGE_OUT = common dso_local global i64 0, align 8
@vr11 = common dso_local global i32 0, align 4
@direct = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.pmbus_driver_info*)* @pmbus_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmbus_identify(%struct.i2c_client* %0, %struct.pmbus_driver_info* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.pmbus_driver_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.pmbus_driver_info* %1, %struct.pmbus_driver_info** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %9 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %2
  %13 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %14 = load i32, i32* @PMBUS_PAGE, align 4
  %15 = call i64 @pmbus_check_byte_register(%struct.i2c_client* %13, i32 0, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %12
  store i32 1, i32* %6, align 4
  br label %18

18:                                               ; preds = %29, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PMBUS_PAGES, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @pmbus_set_page(%struct.i2c_client* %23, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %32

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %18

32:                                               ; preds = %27, %18
  %33 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %34 = call i64 @pmbus_set_page(%struct.i2c_client* %33, i32 0)
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %37 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %41

38:                                               ; preds = %12
  %39 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %40 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %32
  %42 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %43 = call i32 @pmbus_clear_faults(%struct.i2c_client* %42)
  br label %44

44:                                               ; preds = %41, %2
  %45 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %46 = load i32, i32* @PMBUS_VOUT_MODE, align 4
  %47 = call i64 @pmbus_check_byte_register(%struct.i2c_client* %45, i32 0, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %84

49:                                               ; preds = %44
  %50 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %51 = load i32, i32* @PMBUS_VOUT_MODE, align 4
  %52 = call i32 @pmbus_read_byte_data(%struct.i2c_client* %50, i32 0, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 255
  br i1 %57, label %58, label %83

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = ashr i32 %59, 5
  switch i32 %60, label %79 [
    i32 0, label %61
    i32 1, label %62
    i32 2, label %72
  ]

61:                                               ; preds = %58
  br label %82

62:                                               ; preds = %58
  %63 = load i64, i64* @vid, align 8
  %64 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %65 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* @PSC_VOLTAGE_OUT, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  store i64 %63, i64* %68, align 8
  %69 = load i32, i32* @vr11, align 4
  %70 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %71 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  br label %82

72:                                               ; preds = %58
  %73 = load i64, i64* @direct, align 8
  %74 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %75 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* @PSC_VOLTAGE_OUT, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  store i64 %73, i64* %78, align 8
  br label %82

79:                                               ; preds = %58
  %80 = load i32, i32* @ENODEV, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %100

82:                                               ; preds = %72, %62, %61
  br label %83

83:                                               ; preds = %82, %55, %49
  br label %84

84:                                               ; preds = %83, %44
  %85 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %86 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* @PSC_VOLTAGE_OUT, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @direct, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load i32, i32* @ENODEV, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %100

96:                                               ; preds = %84
  %97 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %98 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %99 = call i32 @pmbus_find_sensor_groups(%struct.i2c_client* %97, %struct.pmbus_driver_info* %98)
  br label %100

100:                                              ; preds = %96, %93, %79
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i64 @pmbus_check_byte_register(%struct.i2c_client*, i32, i32) #1

declare dso_local i64 @pmbus_set_page(%struct.i2c_client*, i32) #1

declare dso_local i32 @pmbus_clear_faults(%struct.i2c_client*) #1

declare dso_local i32 @pmbus_read_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @pmbus_find_sensor_groups(%struct.i2c_client*, %struct.pmbus_driver_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
