; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_identify_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_identify_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_data = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@PMBUS_VOUT_MODE = common dso_local global i32 0, align 4
@PSC_VOLTAGE_OUT = common dso_local global i64 0, align 8
@linear = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@vid = common dso_local global i32 0, align 4
@direct = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.pmbus_data*, i32)* @pmbus_identify_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmbus_identify_common(%struct.i2c_client* %0, %struct.pmbus_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.pmbus_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store %struct.pmbus_data* %1, %struct.pmbus_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @PMBUS_VOUT_MODE, align 4
  %12 = call i64 @pmbus_check_byte_register(%struct.i2c_client* %9, i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PMBUS_VOUT_MODE, align 4
  %18 = call i32 @_pmbus_read_byte_data(%struct.i2c_client* %15, i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %14, %3
  %20 = load i32, i32* %8, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %86

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 255
  br i1 %24, label %25, label %86

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = ashr i32 %26, 5
  switch i32 %27, label %82 [
    i32 0, label %28
    i32 1, label %52
    i32 2, label %67
  ]

28:                                               ; preds = %25
  %29 = load %struct.pmbus_data*, %struct.pmbus_data** %6, align 8
  %30 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @PSC_VOLTAGE_OUT, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @linear, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %90

42:                                               ; preds = %28
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 %43, 3
  %45 = ashr i32 %44, 3
  %46 = load %struct.pmbus_data*, %struct.pmbus_data** %6, align 8
  %47 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  br label %85

52:                                               ; preds = %25
  %53 = load %struct.pmbus_data*, %struct.pmbus_data** %6, align 8
  %54 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @PSC_VOLTAGE_OUT, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @vid, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %90

66:                                               ; preds = %52
  br label %85

67:                                               ; preds = %25
  %68 = load %struct.pmbus_data*, %struct.pmbus_data** %6, align 8
  %69 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @PSC_VOLTAGE_OUT, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @direct, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %67
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %90

81:                                               ; preds = %67
  br label %85

82:                                               ; preds = %25
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %90

85:                                               ; preds = %81, %66, %42
  br label %86

86:                                               ; preds = %85, %22, %19
  %87 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @pmbus_clear_fault_page(%struct.i2c_client* %87, i32 %88)
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %86, %82, %78, %63, %39
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i64 @pmbus_check_byte_register(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @_pmbus_read_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @pmbus_clear_fault_page(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
