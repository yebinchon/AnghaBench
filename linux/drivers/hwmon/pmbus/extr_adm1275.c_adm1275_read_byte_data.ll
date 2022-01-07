; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_adm1275.c_adm1275_read_byte_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_adm1275.c_adm1275_read_byte_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_driver_info = type { i32 }
%struct.adm1275_data = type { i32, i32, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@PMBUS_STATUS_MFR_SPECIFIC = common dso_local global i32 0, align 4
@ADM1275_MFR_STATUS_IOUT_WARN2 = common dso_local global i32 0, align 4
@PB_IOUT_OC_FAULT = common dso_local global i32 0, align 4
@PB_IOUT_UC_FAULT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@ADM1075_VAUX_STATUS = common dso_local global i32 0, align 4
@ADM1075_VAUX_OV_WARN = common dso_local global i32 0, align 4
@PB_VOLTAGE_OV_WARNING = common dso_local global i32 0, align 4
@ADM1075_VAUX_UV_WARN = common dso_local global i32 0, align 4
@PB_VOLTAGE_UV_WARNING = common dso_local global i32 0, align 4
@ADM1293_MFR_STATUS_VAUX_OV_WARN = common dso_local global i32 0, align 4
@ADM1293_MFR_STATUS_VAUX_UV_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @adm1275_read_byte_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm1275_read_byte_data(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pmbus_driver_info*, align 8
  %9 = alloca %struct.adm1275_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = call %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client* %12)
  store %struct.pmbus_driver_info* %13, %struct.pmbus_driver_info** %8, align 8
  %14 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %15 = call %struct.adm1275_data* @to_adm1275_data(%struct.pmbus_driver_info* %14)
  store %struct.adm1275_data* %15, %struct.adm1275_data** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %149

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %144 [
    i32 129, label %23
    i32 128, label %69
  ]

23:                                               ; preds = %21
  %24 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @pmbus_read_byte_data(%struct.i2c_client* %24, i32 %25, i32 129)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %147

30:                                               ; preds = %23
  %31 = load %struct.adm1275_data*, %struct.adm1275_data** %9, align 8
  %32 = getelementptr inbounds %struct.adm1275_data, %struct.adm1275_data* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load %struct.adm1275_data*, %struct.adm1275_data** %9, align 8
  %37 = getelementptr inbounds %struct.adm1275_data, %struct.adm1275_data* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %147

41:                                               ; preds = %35, %30
  %42 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @PMBUS_STATUS_MFR_SPECIFIC, align 4
  %45 = call i32 @pmbus_read_byte_data(%struct.i2c_client* %42, i32 %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %149

50:                                               ; preds = %41
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @ADM1275_MFR_STATUS_IOUT_WARN2, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load %struct.adm1275_data*, %struct.adm1275_data** %9, align 8
  %57 = getelementptr inbounds %struct.adm1275_data, %struct.adm1275_data* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @PB_IOUT_OC_FAULT, align 4
  br label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @PB_IOUT_UC_FAULT, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = load i32, i32* %11, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %64, %50
  br label %147

69:                                               ; preds = %21
  %70 = load %struct.adm1275_data*, %struct.adm1275_data** %9, align 8
  %71 = getelementptr inbounds %struct.adm1275_data, %struct.adm1275_data* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @ENODATA, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %149

77:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  %78 = load %struct.adm1275_data*, %struct.adm1275_data** %9, align 8
  %79 = getelementptr inbounds %struct.adm1275_data, %struct.adm1275_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %109

82:                                               ; preds = %77
  %83 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %84 = load i32, i32* @ADM1075_VAUX_STATUS, align 4
  %85 = call i32 @pmbus_read_byte_data(%struct.i2c_client* %83, i32 0, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %4, align 4
  br label %149

90:                                               ; preds = %82
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @ADM1075_VAUX_OV_WARN, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* @PB_VOLTAGE_OV_WARNING, align 4
  %97 = load i32, i32* %11, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %95, %90
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @ADM1075_VAUX_UV_WARN, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* @PB_VOLTAGE_UV_WARNING, align 4
  %106 = load i32, i32* %11, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %104, %99
  br label %143

109:                                              ; preds = %77
  %110 = load %struct.adm1275_data*, %struct.adm1275_data** %9, align 8
  %111 = getelementptr inbounds %struct.adm1275_data, %struct.adm1275_data* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %142

114:                                              ; preds = %109
  %115 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @PMBUS_STATUS_MFR_SPECIFIC, align 4
  %118 = call i32 @pmbus_read_byte_data(%struct.i2c_client* %115, i32 %116, i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %4, align 4
  br label %149

123:                                              ; preds = %114
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @ADM1293_MFR_STATUS_VAUX_OV_WARN, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i32, i32* @PB_VOLTAGE_OV_WARNING, align 4
  %130 = load i32, i32* %11, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %11, align 4
  br label %132

132:                                              ; preds = %128, %123
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @ADM1293_MFR_STATUS_VAUX_UV_WARN, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load i32, i32* @PB_VOLTAGE_UV_WARNING, align 4
  %139 = load i32, i32* %11, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %11, align 4
  br label %141

141:                                              ; preds = %137, %132
  br label %142

142:                                              ; preds = %141, %109
  br label %143

143:                                              ; preds = %142, %108
  br label %147

144:                                              ; preds = %21
  %145 = load i32, i32* @ENODATA, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %11, align 4
  br label %147

147:                                              ; preds = %144, %143, %68, %40, %29
  %148 = load i32, i32* %11, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %147, %121, %88, %74, %48, %18
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client*) #1

declare dso_local %struct.adm1275_data* @to_adm1275_data(%struct.pmbus_driver_info*) #1

declare dso_local i32 @pmbus_read_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
