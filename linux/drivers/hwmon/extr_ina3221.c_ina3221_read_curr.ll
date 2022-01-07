; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina3221.c_ina3221_read_curr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina3221.c_ina3221_read_curr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ina3221_data = type { i32*, i32, i32, i32, %struct.ina3221_input* }
%struct.ina3221_input = type { i32 }

@ina3221_curr_reg = common dso_local global i64** null, align 8
@ENODATA = common dso_local global i32 0, align 4
@INA3221_CONFIG = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64, i32, i64*)* @ina3221_read_curr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina3221_read_curr(%struct.device* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ina3221_data*, align 8
  %11 = alloca %struct.ina3221_input*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.ina3221_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.ina3221_data* %18, %struct.ina3221_data** %10, align 8
  %19 = load %struct.ina3221_data*, %struct.ina3221_data** %10, align 8
  %20 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %19, i32 0, i32 4
  %21 = load %struct.ina3221_input*, %struct.ina3221_input** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ina3221_input, %struct.ina3221_input* %21, i64 %23
  store %struct.ina3221_input* %24, %struct.ina3221_input** %11, align 8
  %25 = load %struct.ina3221_input*, %struct.ina3221_input** %11, align 8
  %26 = getelementptr inbounds %struct.ina3221_input, %struct.ina3221_input* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i64**, i64*** @ina3221_curr_reg, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i64*, i64** %28, i64 %29
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %13, align 8
  %36 = load i64, i64* %7, align 8
  switch i64 %36, label %105 [
    i64 130, label %37
    i64 132, label %67
    i64 129, label %67
    i64 131, label %82
    i64 128, label %82
  ]

37:                                               ; preds = %4
  %38 = load %struct.ina3221_data*, %struct.ina3221_data** %10, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @ina3221_is_enabled(%struct.ina3221_data* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENODATA, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %108

45:                                               ; preds = %37
  %46 = load %struct.ina3221_data*, %struct.ina3221_data** %10, align 8
  %47 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.ina3221_data*, %struct.ina3221_data** %10, align 8
  %52 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @INA3221_CONFIG, align 4
  %55 = load %struct.ina3221_data*, %struct.ina3221_data** %10, align 8
  %56 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @regmap_write(i32 %53, i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %50, %45
  %60 = load %struct.ina3221_data*, %struct.ina3221_data** %10, align 8
  %61 = call i32 @ina3221_wait_for_data(%struct.ina3221_data* %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %16, align 4
  store i32 %65, i32* %5, align 4
  br label %108

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %4, %4, %66
  %68 = load %struct.ina3221_data*, %struct.ina3221_data** %10, align 8
  %69 = load i64, i64* %13, align 8
  %70 = call i32 @ina3221_read_value(%struct.ina3221_data* %68, i64 %69, i32* %14)
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %16, align 4
  store i32 %74, i32* %5, align 4
  br label %108

75:                                               ; preds = %67
  %76 = load i32, i32* %14, align 4
  %77 = mul nsw i32 %76, 40000
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i64 @DIV_ROUND_CLOSEST(i32 %78, i32 %79)
  %81 = load i64*, i64** %9, align 8
  store i64 %80, i64* %81, align 8
  store i32 0, i32* %5, align 4
  br label %108

82:                                               ; preds = %4, %4
  %83 = load %struct.ina3221_data*, %struct.ina3221_data** %10, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @ina3221_is_enabled(%struct.ina3221_data* %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = load i64*, i64** %9, align 8
  store i64 0, i64* %88, align 8
  store i32 0, i32* %5, align 4
  br label %108

89:                                               ; preds = %82
  %90 = load %struct.ina3221_data*, %struct.ina3221_data** %10, align 8
  %91 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %13, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @regmap_field_read(i32 %95, i32* %14)
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %89
  %100 = load i32, i32* %16, align 4
  store i32 %100, i32* %5, align 4
  br label %108

101:                                              ; preds = %89
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = load i64*, i64** %9, align 8
  store i64 %103, i64* %104, align 8
  store i32 0, i32* %5, align 4
  br label %108

105:                                              ; preds = %4
  %106 = load i32, i32* @EOPNOTSUPP, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %105, %101, %99, %87, %75, %73, %64, %42
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local %struct.ina3221_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ina3221_is_enabled(%struct.ina3221_data*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @ina3221_wait_for_data(%struct.ina3221_data*) #1

declare dso_local i32 @ina3221_read_value(%struct.ina3221_data*, i64, i32*) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @regmap_field_read(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
