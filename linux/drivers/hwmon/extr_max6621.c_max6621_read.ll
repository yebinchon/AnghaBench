; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6621.c_max6621_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6621.c_max6621_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.max6621_data = type { i32*, i32, i32 }

@MAX6621_REG_TEMP_SHIFT = common dso_local global i64 0, align 8
@MAX6621_CONFIG2_REG = common dso_local global i32 0, align 4
@MAX6621_TEMP_ALERT_CHAN_SHIFT = common dso_local global i32 0, align 4
@max6621_temp_alert_chan2reg = common dso_local global i32* null, align 8
@MAX6621_TEMP_ALERT_CAUSE_REG = common dso_local global i32 0, align 4
@MAX6621_ALERT_DIS = common dso_local global i64 0, align 8
@MAX6621_CLEAR_ALERT_REG = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i64, i32, i64*)* @max6621_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6621_read(%struct.device* %0, i32 %1, i64 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.max6621_data*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = call %struct.max6621_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.max6621_data* %18, %struct.max6621_data** %12, align 8
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %158 [
    i32 132, label %20
  ]

20:                                               ; preds = %5
  %21 = load i64, i64* %9, align 8
  switch i64 %21, label %154 [
    i64 129, label %22
    i64 128, label %54
    i64 131, label %78
    i64 130, label %108
  ]

22:                                               ; preds = %20
  %23 = load %struct.max6621_data*, %struct.max6621_data** %12, align 8
  %24 = getelementptr inbounds %struct.max6621_data, %struct.max6621_data* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %14, align 4
  %30 = load %struct.max6621_data*, %struct.max6621_data** %12, align 8
  %31 = getelementptr inbounds %struct.max6621_data, %struct.max6621_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @regmap_read(i32 %32, i32 %33, i64* %13)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %22
  %38 = load i32, i32* %16, align 4
  store i32 %38, i32* %6, align 4
  br label %162

39:                                               ; preds = %22
  %40 = load %struct.device*, %struct.device** %7, align 8
  %41 = load i64, i64* %13, align 8
  %42 = call i32 @max6621_verify_reg_data(%struct.device* %40, i64 %41)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %6, align 4
  br label %162

47:                                               ; preds = %39
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* @MAX6621_REG_TEMP_SHIFT, align 8
  %50 = ashr i64 %48, %49
  store i64 %50, i64* %15, align 8
  %51 = load i64, i64* %15, align 8
  %52 = mul nsw i64 %51, 1000
  %53 = load i64*, i64** %11, align 8
  store i64 %52, i64* %53, align 8
  br label %157

54:                                               ; preds = %20
  %55 = load %struct.max6621_data*, %struct.max6621_data** %12, align 8
  %56 = getelementptr inbounds %struct.max6621_data, %struct.max6621_data* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MAX6621_CONFIG2_REG, align 4
  %59 = call i32 @regmap_read(i32 %57, i32 %58, i64* %13)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %6, align 4
  br label %162

64:                                               ; preds = %54
  %65 = load %struct.device*, %struct.device** %7, align 8
  %66 = load i64, i64* %13, align 8
  %67 = call i32 @max6621_verify_reg_data(%struct.device* %65, i64 %66)
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %16, align 4
  store i32 %71, i32* %6, align 4
  br label %162

72:                                               ; preds = %64
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* @MAX6621_REG_TEMP_SHIFT, align 8
  %75 = ashr i64 %73, %74
  %76 = mul nsw i64 %75, 1000
  %77 = load i64*, i64** %11, align 8
  store i64 %76, i64* %77, align 8
  br label %157

78:                                               ; preds = %20
  %79 = load i32, i32* @MAX6621_TEMP_ALERT_CHAN_SHIFT, align 4
  %80 = load i32, i32* %10, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %10, align 4
  %82 = load i32*, i32** @max6621_temp_alert_chan2reg, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %14, align 4
  %87 = load %struct.max6621_data*, %struct.max6621_data** %12, align 8
  %88 = getelementptr inbounds %struct.max6621_data, %struct.max6621_data* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @regmap_read(i32 %89, i32 %90, i64* %13)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %78
  %95 = load i32, i32* %16, align 4
  store i32 %95, i32* %6, align 4
  br label %162

96:                                               ; preds = %78
  %97 = load %struct.device*, %struct.device** %7, align 8
  %98 = load i64, i64* %13, align 8
  %99 = call i32 @max6621_verify_reg_data(%struct.device* %97, i64 %98)
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %16, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* %16, align 4
  store i32 %103, i32* %6, align 4
  br label %162

104:                                              ; preds = %96
  %105 = load i64, i64* %13, align 8
  %106 = mul nsw i64 %105, 1000
  %107 = load i64*, i64** %11, align 8
  store i64 %106, i64* %107, align 8
  br label %157

108:                                              ; preds = %20
  %109 = load i64*, i64** %11, align 8
  store i64 0, i64* %109, align 8
  %110 = load %struct.max6621_data*, %struct.max6621_data** %12, align 8
  %111 = getelementptr inbounds %struct.max6621_data, %struct.max6621_data* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @MAX6621_TEMP_ALERT_CAUSE_REG, align 4
  %114 = call i32 @regmap_read(i32 %112, i32 %113, i64* %13)
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load i32, i32* %16, align 4
  store i32 %118, i32* %6, align 4
  br label %162

119:                                              ; preds = %108
  %120 = load %struct.device*, %struct.device** %7, align 8
  %121 = load i64, i64* %13, align 8
  %122 = call i32 @max6621_verify_reg_data(%struct.device* %120, i64 %121)
  store i32 %122, i32* %16, align 4
  %123 = load i32, i32* %16, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %119
  %126 = load i64, i64* %13, align 8
  %127 = load i64, i64* @MAX6621_ALERT_DIS, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  store i32 0, i32* %6, align 4
  br label %162

130:                                              ; preds = %125
  %131 = load i32, i32* %16, align 4
  store i32 %131, i32* %6, align 4
  br label %162

132:                                              ; preds = %119
  %133 = load i64, i64* %13, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %132
  %136 = load %struct.max6621_data*, %struct.max6621_data** %12, align 8
  %137 = getelementptr inbounds %struct.max6621_data, %struct.max6621_data* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @MAX6621_CLEAR_ALERT_REG, align 4
  %140 = call i32 @i2c_smbus_write_byte(i32 %138, i32 %139)
  store i32 %140, i32* %16, align 4
  %141 = load i32, i32* %16, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %135
  %144 = load i32, i32* %16, align 4
  store i32 %144, i32* %6, align 4
  br label %162

145:                                              ; preds = %135
  br label %146

146:                                              ; preds = %145, %132
  %147 = load i64, i64* %13, align 8
  %148 = icmp ne i64 %147, 0
  %149 = xor i1 %148, true
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = sext i32 %151 to i64
  %153 = load i64*, i64** %11, align 8
  store i64 %152, i64* %153, align 8
  br label %157

154:                                              ; preds = %20
  %155 = load i32, i32* @EOPNOTSUPP, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %6, align 4
  br label %162

157:                                              ; preds = %146, %104, %72, %47
  br label %161

158:                                              ; preds = %5
  %159 = load i32, i32* @EOPNOTSUPP, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %6, align 4
  br label %162

161:                                              ; preds = %157
  store i32 0, i32* %6, align 4
  br label %162

162:                                              ; preds = %161, %158, %154, %143, %130, %129, %117, %102, %94, %70, %62, %45, %37
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

declare dso_local %struct.max6621_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_read(i32, i32, i64*) #1

declare dso_local i32 @max6621_verify_reg_data(%struct.device*, i64) #1

declare dso_local i32 @i2c_smbus_write_byte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
