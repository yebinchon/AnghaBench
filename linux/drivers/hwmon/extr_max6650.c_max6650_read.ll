; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6650.c_max6650_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6650.c_max6650_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.max6650_data = type { i32, i32*, i32, i32, i32, i32, i32 }

@MAX6650_CFG_V12 = common dso_local global i32 0, align 4
@MAX6650_CFG_MODE_MASK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@clock = common dso_local global i32 0, align 4
@MAX6650_ALRM_MIN = common dso_local global i32 0, align 4
@MAX6650_ALRM_MAX = common dso_local global i32 0, align 4
@MAX6650_ALRM_TACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32, i64*)* @max6650_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6650_read(%struct.device* %0, i32 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.max6650_data*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = call %struct.max6650_data* @max6650_update_device(%struct.device* %14)
  store %struct.max6650_data* %15, %struct.max6650_data** %12, align 8
  %16 = load %struct.max6650_data*, %struct.max6650_data** %12, align 8
  %17 = call i64 @IS_ERR(%struct.max6650_data* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load %struct.max6650_data*, %struct.max6650_data** %12, align 8
  %21 = call i32 @PTR_ERR(%struct.max6650_data* %20)
  store i32 %21, i32* %6, align 4
  br label %161

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %157 [
    i32 130, label %24
    i32 137, label %53
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* %9, align 4
  switch i32 %25, label %49 [
    i32 128, label %26
    i32 129, label %37
  ]

26:                                               ; preds = %24
  %27 = load %struct.max6650_data*, %struct.max6650_data** %12, align 8
  %28 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.max6650_data*, %struct.max6650_data** %12, align 8
  %31 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MAX6650_CFG_V12, align 4
  %34 = and i32 %32, %33
  %35 = call i64 @dac_to_pwm(i32 %29, i32 %34)
  %36 = load i64*, i64** %11, align 8
  store i64 %35, i64* %36, align 8
  br label %52

37:                                               ; preds = %24
  %38 = load %struct.max6650_data*, %struct.max6650_data** %12, align 8
  %39 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MAX6650_CFG_MODE_MASK, align 4
  %42 = and i32 %40, %41
  %43 = ashr i32 %42, 4
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = sub nsw i32 4, %44
  %46 = and i32 %45, 3
  %47 = sext i32 %46 to i64
  %48 = load i64*, i64** %11, align 8
  store i64 %47, i64* %48, align 8
  br label %52

49:                                               ; preds = %24
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %161

52:                                               ; preds = %37, %26
  br label %160

53:                                               ; preds = %22
  %54 = load i32, i32* %9, align 4
  switch i32 %54, label %153 [
    i32 134, label %55
    i32 136, label %70
    i32 131, label %77
    i32 132, label %93
    i32 133, label %113
    i32 135, label %133
  ]

55:                                               ; preds = %53
  %56 = load %struct.max6650_data*, %struct.max6650_data** %12, align 8
  %57 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %62, 120
  %64 = load %struct.max6650_data*, %struct.max6650_data** %12, align 8
  %65 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @DIV_FROM_REG(i32 %66)
  %68 = call i64 @DIV_ROUND_CLOSEST(i32 %63, i32 %67)
  %69 = load i64*, i64** %11, align 8
  store i64 %68, i64* %69, align 8
  br label %156

70:                                               ; preds = %53
  %71 = load %struct.max6650_data*, %struct.max6650_data** %12, align 8
  %72 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @DIV_FROM_REG(i32 %73)
  %75 = sext i32 %74 to i64
  %76 = load i64*, i64** %11, align 8
  store i64 %75, i64* %76, align 8
  br label %156

77:                                               ; preds = %53
  %78 = load %struct.max6650_data*, %struct.max6650_data** %12, align 8
  %79 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @DIV_FROM_REG(i32 %80)
  %82 = mul nsw i32 60, %81
  %83 = load i32, i32* @clock, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load %struct.max6650_data*, %struct.max6650_data** %12, align 8
  %86 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  %89 = mul nsw i32 256, %88
  %90 = sdiv i32 %84, %89
  %91 = sext i32 %90 to i64
  %92 = load i64*, i64** %11, align 8
  store i64 %91, i64* %92, align 8
  br label %156

93:                                               ; preds = %53
  %94 = load %struct.max6650_data*, %struct.max6650_data** %12, align 8
  %95 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @MAX6650_ALRM_MIN, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = sext i32 %102 to i64
  %104 = load i64*, i64** %11, align 8
  store i64 %103, i64* %104, align 8
  %105 = load i32, i32* @MAX6650_ALRM_MIN, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.max6650_data*, %struct.max6650_data** %12, align 8
  %108 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load %struct.max6650_data*, %struct.max6650_data** %12, align 8
  %112 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %111, i32 0, i32 4
  store i32 0, i32* %112, align 8
  br label %156

113:                                              ; preds = %53
  %114 = load %struct.max6650_data*, %struct.max6650_data** %12, align 8
  %115 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @MAX6650_ALRM_MAX, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = sext i32 %122 to i64
  %124 = load i64*, i64** %11, align 8
  store i64 %123, i64* %124, align 8
  %125 = load i32, i32* @MAX6650_ALRM_MAX, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.max6650_data*, %struct.max6650_data** %12, align 8
  %128 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load %struct.max6650_data*, %struct.max6650_data** %12, align 8
  %132 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %131, i32 0, i32 4
  store i32 0, i32* %132, align 8
  br label %156

133:                                              ; preds = %53
  %134 = load %struct.max6650_data*, %struct.max6650_data** %12, align 8
  %135 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @MAX6650_ALRM_TACH, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = sext i32 %142 to i64
  %144 = load i64*, i64** %11, align 8
  store i64 %143, i64* %144, align 8
  %145 = load i32, i32* @MAX6650_ALRM_TACH, align 4
  %146 = xor i32 %145, -1
  %147 = load %struct.max6650_data*, %struct.max6650_data** %12, align 8
  %148 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, %146
  store i32 %150, i32* %148, align 4
  %151 = load %struct.max6650_data*, %struct.max6650_data** %12, align 8
  %152 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %151, i32 0, i32 4
  store i32 0, i32* %152, align 8
  br label %156

153:                                              ; preds = %53
  %154 = load i32, i32* @EOPNOTSUPP, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %6, align 4
  br label %161

156:                                              ; preds = %133, %113, %93, %77, %70, %55
  br label %160

157:                                              ; preds = %22
  %158 = load i32, i32* @EOPNOTSUPP, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %6, align 4
  br label %161

160:                                              ; preds = %156, %52
  store i32 0, i32* %6, align 4
  br label %161

161:                                              ; preds = %160, %157, %153, %49, %19
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local %struct.max6650_data* @max6650_update_device(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.max6650_data*) #1

declare dso_local i32 @PTR_ERR(%struct.max6650_data*) #1

declare dso_local i64 @dac_to_pwm(i32, i32) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
