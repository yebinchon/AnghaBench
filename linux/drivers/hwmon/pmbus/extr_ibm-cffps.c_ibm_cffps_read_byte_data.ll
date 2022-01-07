; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ibm-cffps.c_ibm_cffps_read_byte_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ibm-cffps.c_ibm_cffps_read_byte_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@PMBUS_STATUS_MFR_SPECIFIC = common dso_local global i32 0, align 4
@CFFPS_MFR_FAN_FAULT = common dso_local global i32 0, align 4
@PB_FAN_FAN1_FAULT = common dso_local global i32 0, align 4
@CFFPS_MFR_THERMAL_FAULT = common dso_local global i32 0, align 4
@PB_TEMP_OT_FAULT = common dso_local global i32 0, align 4
@CFFPS_MFR_OV_FAULT = common dso_local global i32 0, align 4
@CFFPS_MFR_VAUX_FAULT = common dso_local global i32 0, align 4
@PB_VOLTAGE_OV_FAULT = common dso_local global i32 0, align 4
@CFFPS_MFR_UV_FAULT = common dso_local global i32 0, align 4
@PB_VOLTAGE_UV_FAULT = common dso_local global i32 0, align 4
@CFFPS_MFR_OC_FAULT = common dso_local global i32 0, align 4
@PB_IOUT_OC_FAULT = common dso_local global i32 0, align 4
@CFFPS_MFR_CURRENT_SHARE_WARNING = common dso_local global i32 0, align 4
@PB_CURRENT_SHARE_FAULT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @ibm_cffps_read_byte_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibm_cffps_read_byte_data(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %105 [
    i32 128, label %11
    i32 130, label %11
    i32 129, label %11
    i32 131, label %11
  ]

11:                                               ; preds = %3, %3, %3, %3
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @pmbus_read_byte_data(%struct.i2c_client* %12, i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %110

20:                                               ; preds = %11
  %21 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PMBUS_STATUS_MFR_SPECIFIC, align 4
  %24 = call i32 @pmbus_read_byte_data(%struct.i2c_client* %21, i32 %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %110

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 131
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @CFFPS_MFR_FAN_FAULT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @PB_FAN_FAN1_FAULT, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %37, %32
  br label %104

42:                                               ; preds = %29
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 129
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @CFFPS_MFR_THERMAL_FAULT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @PB_TEMP_OT_FAULT, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %45
  br label %103

55:                                               ; preds = %42
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 128
  br i1 %57, label %58, label %79

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @CFFPS_MFR_OV_FAULT, align 4
  %61 = load i32, i32* @CFFPS_MFR_VAUX_FAULT, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* @PB_VOLTAGE_OV_FAULT, align 4
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %65, %58
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @CFFPS_MFR_UV_FAULT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @PB_VOLTAGE_UV_FAULT, align 4
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %74, %69
  br label %102

79:                                               ; preds = %55
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, 130
  br i1 %81, label %82, label %101

82:                                               ; preds = %79
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @CFFPS_MFR_OC_FAULT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i32, i32* @PB_IOUT_OC_FAULT, align 4
  %89 = load i32, i32* %8, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %87, %82
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @CFFPS_MFR_CURRENT_SHARE_WARNING, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i32, i32* @PB_CURRENT_SHARE_FAULT, align 4
  %98 = load i32, i32* %8, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %96, %91
  br label %101

101:                                              ; preds = %100, %79
  br label %102

102:                                              ; preds = %101, %78
  br label %103

103:                                              ; preds = %102, %54
  br label %104

104:                                              ; preds = %103, %41
  br label %108

105:                                              ; preds = %3
  %106 = load i32, i32* @ENODATA, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %105, %104
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %108, %27, %18
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @pmbus_read_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
