; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_adm1275.c_adm1275_read_word_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_adm1275.c_adm1275_read_word_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_driver_info = type { i32 }
%struct.adm1275_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@ADM1275_IOUT_WARN2_LIMIT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@ADM1075_VAUX_OV_WARN_LIMIT = common dso_local global i32 0, align 4
@ADM1075_VAUX_UV_WARN_LIMIT = common dso_local global i32 0, align 4
@ADM1075_READ_VAUX = common dso_local global i32 0, align 4
@ADM1293_IOUT_MIN = common dso_local global i32 0, align 4
@ADM1275_PEAK_IOUT = common dso_local global i32 0, align 4
@ADM1275_PEAK_VOUT = common dso_local global i32 0, align 4
@ADM1275_PEAK_VIN = common dso_local global i32 0, align 4
@ADM1293_PIN_MIN = common dso_local global i32 0, align 4
@ADM1276_PEAK_PIN = common dso_local global i32 0, align 4
@ADM1278_PEAK_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @adm1275_read_word_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm1275_read_word_data(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pmbus_driver_info*, align 8
  %9 = alloca %struct.adm1275_data*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %12 = call %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client* %11)
  store %struct.pmbus_driver_info* %12, %struct.pmbus_driver_info** %8, align 8
  %13 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %14 = call %struct.adm1275_data* @to_adm1275_data(%struct.pmbus_driver_info* %13)
  store %struct.adm1275_data* %14, %struct.adm1275_data** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %194

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %189 [
    i32 146, label %22
    i32 147, label %34
    i32 129, label %46
    i32 128, label %58
    i32 145, label %70
    i32 140, label %82
    i32 141, label %94
    i32 135, label %98
    i32 136, label %102
    i32 138, label %106
    i32 139, label %118
    i32 137, label %130
    i32 134, label %142
    i32 130, label %142
    i32 131, label %142
    i32 133, label %143
    i32 132, label %152
    i32 142, label %161
    i32 143, label %179
    i32 144, label %179
  ]

22:                                               ; preds = %20
  %23 = load %struct.adm1275_data*, %struct.adm1275_data** %9, align 8
  %24 = getelementptr inbounds %struct.adm1275_data, %struct.adm1275_data* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %194

30:                                               ; preds = %22
  %31 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %32 = load i32, i32* @ADM1275_IOUT_WARN2_LIMIT, align 4
  %33 = call i32 @pmbus_read_word_data(%struct.i2c_client* %31, i32 0, i32 %32)
  store i32 %33, i32* %10, align 4
  br label %192

34:                                               ; preds = %20
  %35 = load %struct.adm1275_data*, %struct.adm1275_data** %9, align 8
  %36 = getelementptr inbounds %struct.adm1275_data, %struct.adm1275_data* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ENXIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %194

42:                                               ; preds = %34
  %43 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %44 = load i32, i32* @ADM1275_IOUT_WARN2_LIMIT, align 4
  %45 = call i32 @pmbus_read_word_data(%struct.i2c_client* %43, i32 0, i32 %44)
  store i32 %45, i32* %10, align 4
  br label %192

46:                                               ; preds = %20
  %47 = load %struct.adm1275_data*, %struct.adm1275_data** %9, align 8
  %48 = getelementptr inbounds %struct.adm1275_data, %struct.adm1275_data* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @ENODATA, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %194

54:                                               ; preds = %46
  %55 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %56 = load i32, i32* @ADM1075_VAUX_OV_WARN_LIMIT, align 4
  %57 = call i32 @pmbus_read_word_data(%struct.i2c_client* %55, i32 0, i32 %56)
  store i32 %57, i32* %10, align 4
  br label %192

58:                                               ; preds = %20
  %59 = load %struct.adm1275_data*, %struct.adm1275_data** %9, align 8
  %60 = getelementptr inbounds %struct.adm1275_data, %struct.adm1275_data* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @ENODATA, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %194

66:                                               ; preds = %58
  %67 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %68 = load i32, i32* @ADM1075_VAUX_UV_WARN_LIMIT, align 4
  %69 = call i32 @pmbus_read_word_data(%struct.i2c_client* %67, i32 0, i32 %68)
  store i32 %69, i32* %10, align 4
  br label %192

70:                                               ; preds = %20
  %71 = load %struct.adm1275_data*, %struct.adm1275_data** %9, align 8
  %72 = getelementptr inbounds %struct.adm1275_data, %struct.adm1275_data* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @ENODATA, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %194

78:                                               ; preds = %70
  %79 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %80 = load i32, i32* @ADM1075_READ_VAUX, align 4
  %81 = call i32 @pmbus_read_word_data(%struct.i2c_client* %79, i32 0, i32 %80)
  store i32 %81, i32* %10, align 4
  br label %192

82:                                               ; preds = %20
  %83 = load %struct.adm1275_data*, %struct.adm1275_data** %9, align 8
  %84 = getelementptr inbounds %struct.adm1275_data, %struct.adm1275_data* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @ENXIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %194

90:                                               ; preds = %82
  %91 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %92 = load i32, i32* @ADM1293_IOUT_MIN, align 4
  %93 = call i32 @pmbus_read_word_data(%struct.i2c_client* %91, i32 0, i32 %92)
  store i32 %93, i32* %10, align 4
  br label %192

94:                                               ; preds = %20
  %95 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %96 = load i32, i32* @ADM1275_PEAK_IOUT, align 4
  %97 = call i32 @pmbus_read_word_data(%struct.i2c_client* %95, i32 0, i32 %96)
  store i32 %97, i32* %10, align 4
  br label %192

98:                                               ; preds = %20
  %99 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %100 = load i32, i32* @ADM1275_PEAK_VOUT, align 4
  %101 = call i32 @pmbus_read_word_data(%struct.i2c_client* %99, i32 0, i32 %100)
  store i32 %101, i32* %10, align 4
  br label %192

102:                                              ; preds = %20
  %103 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %104 = load i32, i32* @ADM1275_PEAK_VIN, align 4
  %105 = call i32 @pmbus_read_word_data(%struct.i2c_client* %103, i32 0, i32 %104)
  store i32 %105, i32* %10, align 4
  br label %192

106:                                              ; preds = %20
  %107 = load %struct.adm1275_data*, %struct.adm1275_data** %9, align 8
  %108 = getelementptr inbounds %struct.adm1275_data, %struct.adm1275_data* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* @ENXIO, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %194

114:                                              ; preds = %106
  %115 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %116 = load i32, i32* @ADM1293_PIN_MIN, align 4
  %117 = call i32 @pmbus_read_word_data(%struct.i2c_client* %115, i32 0, i32 %116)
  store i32 %117, i32* %10, align 4
  br label %192

118:                                              ; preds = %20
  %119 = load %struct.adm1275_data*, %struct.adm1275_data** %9, align 8
  %120 = getelementptr inbounds %struct.adm1275_data, %struct.adm1275_data* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* @ENXIO, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %4, align 4
  br label %194

126:                                              ; preds = %118
  %127 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %128 = load i32, i32* @ADM1276_PEAK_PIN, align 4
  %129 = call i32 @pmbus_read_word_data(%struct.i2c_client* %127, i32 0, i32 %128)
  store i32 %129, i32* %10, align 4
  br label %192

130:                                              ; preds = %20
  %131 = load %struct.adm1275_data*, %struct.adm1275_data** %9, align 8
  %132 = getelementptr inbounds %struct.adm1275_data, %struct.adm1275_data* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = load i32, i32* @ENXIO, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %4, align 4
  br label %194

138:                                              ; preds = %130
  %139 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %140 = load i32, i32* @ADM1278_PEAK_TEMP, align 4
  %141 = call i32 @pmbus_read_word_data(%struct.i2c_client* %139, i32 0, i32 %140)
  store i32 %141, i32* %10, align 4
  br label %192

142:                                              ; preds = %20, %20, %20
  br label %192

143:                                              ; preds = %20
  %144 = load %struct.adm1275_data*, %struct.adm1275_data** %9, align 8
  %145 = getelementptr inbounds %struct.adm1275_data, %struct.adm1275_data* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %143
  %149 = load i32, i32* @ENXIO, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %4, align 4
  br label %194

151:                                              ; preds = %143
  br label %192

152:                                              ; preds = %20
  %153 = load %struct.adm1275_data*, %struct.adm1275_data** %9, align 8
  %154 = getelementptr inbounds %struct.adm1275_data, %struct.adm1275_data* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %152
  %158 = load i32, i32* @ENXIO, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %4, align 4
  br label %194

160:                                              ; preds = %152
  br label %192

161:                                              ; preds = %20
  %162 = load %struct.adm1275_data*, %struct.adm1275_data** %9, align 8
  %163 = getelementptr inbounds %struct.adm1275_data, %struct.adm1275_data* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %161
  %167 = load i32, i32* @ENXIO, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %4, align 4
  br label %194

169:                                              ; preds = %161
  %170 = load %struct.adm1275_data*, %struct.adm1275_data** %9, align 8
  %171 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %172 = call i32 @adm1275_read_pmon_config(%struct.adm1275_data* %170, %struct.i2c_client* %171, i32 1)
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  br label %192

176:                                              ; preds = %169
  %177 = load i32, i32* %10, align 4
  %178 = call i32 @BIT(i32 %177)
  store i32 %178, i32* %10, align 4
  br label %192

179:                                              ; preds = %20, %20
  %180 = load %struct.adm1275_data*, %struct.adm1275_data** %9, align 8
  %181 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %182 = call i32 @adm1275_read_pmon_config(%struct.adm1275_data* %180, %struct.i2c_client* %181, i32 0)
  store i32 %182, i32* %10, align 4
  %183 = load i32, i32* %10, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  br label %192

186:                                              ; preds = %179
  %187 = load i32, i32* %10, align 4
  %188 = call i32 @BIT(i32 %187)
  store i32 %188, i32* %10, align 4
  br label %192

189:                                              ; preds = %20
  %190 = load i32, i32* @ENODATA, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %10, align 4
  br label %192

192:                                              ; preds = %189, %186, %185, %176, %175, %160, %151, %142, %138, %126, %114, %102, %98, %94, %90, %78, %66, %54, %42, %30
  %193 = load i32, i32* %10, align 4
  store i32 %193, i32* %4, align 4
  br label %194

194:                                              ; preds = %192, %166, %157, %148, %135, %123, %111, %87, %75, %63, %51, %39, %27, %17
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client*) #1

declare dso_local %struct.adm1275_data* @to_adm1275_data(%struct.pmbus_driver_info*) #1

declare dso_local i32 @pmbus_read_word_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @adm1275_read_pmon_config(%struct.adm1275_data*, %struct.i2c_client*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
