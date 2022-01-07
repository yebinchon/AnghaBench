; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_data2reg_linear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_data2reg_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmbus_data = type { i64* }
%struct.pmbus_sensor = type { i64, i64 }

@PSC_VOLTAGE_OUT = common dso_local global i64 0, align 8
@PSC_POWER = common dso_local global i64 0, align 8
@PSC_FAN = common dso_local global i64 0, align 8
@MAX_MANTISSA = common dso_local global i64 0, align 8
@MIN_MANTISSA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pmbus_data*, %struct.pmbus_sensor*, i64)* @pmbus_data2reg_linear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pmbus_data2reg_linear(%struct.pmbus_data* %0, %struct.pmbus_sensor* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.pmbus_data*, align 8
  %6 = alloca %struct.pmbus_sensor*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pmbus_data* %0, %struct.pmbus_data** %5, align 8
  store %struct.pmbus_sensor* %1, %struct.pmbus_sensor** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load i64, i64* %7, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %139

14:                                               ; preds = %3
  %15 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %6, align 8
  %16 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PSC_VOLTAGE_OUT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %63

20:                                               ; preds = %14
  %21 = load i64, i64* %7, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i64 0, i64* %4, align 8
  br label %139

24:                                               ; preds = %20
  %25 = load %struct.pmbus_data*, %struct.pmbus_data** %5, align 8
  %26 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %6, align 8
  %29 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i64, i64* %27, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %24
  %35 = load %struct.pmbus_data*, %struct.pmbus_data** %5, align 8
  %36 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %6, align 8
  %39 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i64, i64* %37, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 0, %42
  %44 = load i64, i64* %7, align 8
  %45 = shl i64 %44, %43
  store i64 %45, i64* %7, align 8
  br label %57

46:                                               ; preds = %24
  %47 = load %struct.pmbus_data*, %struct.pmbus_data** %5, align 8
  %48 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %6, align 8
  %51 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i64, i64* %49, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = ashr i64 %55, %54
  store i64 %56, i64* %7, align 8
  br label %57

57:                                               ; preds = %46, %34
  %58 = load i64, i64* %7, align 8
  %59 = call i8* @DIV_ROUND_CLOSEST(i64 %58, i32 1000)
  %60 = ptrtoint i8* %59 to i64
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = and i64 %61, 65535
  store i64 %62, i64* %4, align 8
  br label %139

63:                                               ; preds = %14
  %64 = load i64, i64* %7, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  store i32 1, i32* %10, align 4
  %67 = load i64, i64* %7, align 8
  %68 = sub nsw i64 0, %67
  store i64 %68, i64* %7, align 8
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %6, align 8
  %71 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PSC_POWER, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i64, i64* %7, align 8
  %77 = call i8* @DIV_ROUND_CLOSEST(i64 %76, i32 1000)
  %78 = ptrtoint i8* %77 to i64
  store i64 %78, i64* %7, align 8
  br label %79

79:                                               ; preds = %75, %69
  %80 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %6, align 8
  %81 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @PSC_FAN, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i64, i64* %7, align 8
  %87 = mul nsw i64 %86, 1000
  store i64 %87, i64* %7, align 8
  br label %88

88:                                               ; preds = %85, %79
  br label %89

89:                                               ; preds = %98, %88
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* @MAX_MANTISSA, align 8
  %92 = icmp sge i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %94, 15
  br label %96

96:                                               ; preds = %93, %89
  %97 = phi i1 [ false, %89 ], [ %95, %93 ]
  br i1 %97, label %98, label %103

98:                                               ; preds = %96
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  %101 = load i64, i64* %7, align 8
  %102 = ashr i64 %101, 1
  store i64 %102, i64* %7, align 8
  br label %89

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %113, %103
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* @MIN_MANTISSA, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* %8, align 4
  %110 = icmp sgt i32 %109, -15
  br label %111

111:                                              ; preds = %108, %104
  %112 = phi i1 [ false, %104 ], [ %110, %108 ]
  br i1 %112, label %113, label %118

113:                                              ; preds = %111
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %8, align 4
  %116 = load i64, i64* %7, align 8
  %117 = shl i64 %116, 1
  store i64 %117, i64* %7, align 8
  br label %104

118:                                              ; preds = %111
  %119 = load i64, i64* %7, align 8
  %120 = call i8* @DIV_ROUND_CLOSEST(i64 %119, i32 1000)
  %121 = ptrtoint i8* %120 to i32
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp sgt i32 %122, 1023
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  store i32 1023, i32* %9, align 4
  br label %125

125:                                              ; preds = %124, %118
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, i32* %9, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i32, i32* %9, align 4
  %133 = and i32 %132, 2047
  %134 = load i32, i32* %8, align 4
  %135 = shl i32 %134, 11
  %136 = and i32 %135, 63488
  %137 = or i32 %133, %136
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %4, align 8
  br label %139

139:                                              ; preds = %131, %57, %23, %13
  %140 = load i64, i64* %4, align 8
  ret i64 %140
}

declare dso_local i8* @DIV_ROUND_CLOSEST(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
