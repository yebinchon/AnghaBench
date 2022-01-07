; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_max8688.c_max8688_read_byte_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_max8688.c_max8688_read_byte_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@MAX8688_MFG_STATUS = common dso_local global i32 0, align 4
@MAX8688_STATUS_UV_WARNING = common dso_local global i32 0, align 4
@PB_VOLTAGE_UV_WARNING = common dso_local global i32 0, align 4
@MAX8688_STATUS_UV_FAULT = common dso_local global i32 0, align 4
@PB_VOLTAGE_UV_FAULT = common dso_local global i32 0, align 4
@MAX8688_STATUS_OV_WARNING = common dso_local global i32 0, align 4
@PB_VOLTAGE_OV_WARNING = common dso_local global i32 0, align 4
@MAX8688_STATUS_OV_FAULT = common dso_local global i32 0, align 4
@PB_VOLTAGE_OV_FAULT = common dso_local global i32 0, align 4
@MAX8688_STATUS_UC_FAULT = common dso_local global i32 0, align 4
@PB_IOUT_UC_FAULT = common dso_local global i32 0, align 4
@MAX8688_STATUS_OC_WARNING = common dso_local global i32 0, align 4
@PB_IOUT_OC_WARNING = common dso_local global i32 0, align 4
@MAX8688_STATUS_OC_FAULT = common dso_local global i32 0, align 4
@PB_IOUT_OC_FAULT = common dso_local global i32 0, align 4
@MAX8688_STATUS_OT_WARNING = common dso_local global i32 0, align 4
@PB_TEMP_OT_WARNING = common dso_local global i32 0, align 4
@MAX8688_STATUS_OT_FAULT = common dso_local global i32 0, align 4
@PB_TEMP_OT_FAULT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @max8688_read_byte_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8688_read_byte_data(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @ENXIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %130

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %125 [
    i32 128, label %17
    i32 130, label %62
    i32 129, label %98
  ]

17:                                               ; preds = %15
  %18 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %19 = load i32, i32* @MAX8688_MFG_STATUS, align 4
  %20 = call i32 @pmbus_read_word_data(%struct.i2c_client* %18, i32 0, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %130

25:                                               ; preds = %17
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @MAX8688_STATUS_UV_WARNING, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @PB_VOLTAGE_UV_WARNING, align 4
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @MAX8688_STATUS_UV_FAULT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @PB_VOLTAGE_UV_FAULT, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @MAX8688_STATUS_OV_WARNING, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @PB_VOLTAGE_OV_WARNING, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @MAX8688_STATUS_OV_FAULT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @PB_VOLTAGE_OV_FAULT, align 4
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %57, %52
  br label %128

62:                                               ; preds = %15
  %63 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %64 = load i32, i32* @MAX8688_MFG_STATUS, align 4
  %65 = call i32 @pmbus_read_word_data(%struct.i2c_client* %63, i32 0, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %4, align 4
  br label %130

70:                                               ; preds = %62
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @MAX8688_STATUS_UC_FAULT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* @PB_IOUT_UC_FAULT, align 4
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %75, %70
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @MAX8688_STATUS_OC_WARNING, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @PB_IOUT_OC_WARNING, align 4
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %84, %79
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @MAX8688_STATUS_OC_FAULT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* @PB_IOUT_OC_FAULT, align 4
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %93, %88
  br label %128

98:                                               ; preds = %15
  %99 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %100 = load i32, i32* @MAX8688_MFG_STATUS, align 4
  %101 = call i32 @pmbus_read_word_data(%struct.i2c_client* %99, i32 0, i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %4, align 4
  br label %130

106:                                              ; preds = %98
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @MAX8688_STATUS_OT_WARNING, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* @PB_TEMP_OT_WARNING, align 4
  %113 = load i32, i32* %8, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %111, %106
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @MAX8688_STATUS_OT_FAULT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* @PB_TEMP_OT_FAULT, align 4
  %122 = load i32, i32* %8, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %120, %115
  br label %128

125:                                              ; preds = %15
  %126 = load i32, i32* @ENODATA, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %125, %124, %97, %61
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %128, %104, %68, %23, %12
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @pmbus_read_word_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
