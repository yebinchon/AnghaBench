; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95245.c_lm95245_write_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95245.c_lm95245_write_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.lm95245_data = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }

@LM95245_REG_RW_REMOTE_OS_LIMIT = common dso_local global i32 0, align 4
@LM95245_REG_RW_REMOTE_TCRIT_LIMIT = common dso_local global i32 0, align 4
@LM95245_REG_RW_LOCAL_OS_TCRIT_LIMIT = common dso_local global i32 0, align 4
@LM95245_REG_RW_COMMON_HYSTERESIS = common dso_local global i32 0, align 4
@LM95245_REG_RW_REMOTE_OFFL = common dso_local global i32 0, align 4
@LM95245_REG_RW_REMOTE_OFFH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LM95245_REG_RW_CONFIG2 = common dso_local global i32 0, align 4
@CFG2_REMOTE_TT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64)* @lm95245_write_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm95245_write_temp(%struct.device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.lm95245_data*, align 8
  %11 = alloca %struct.regmap*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.lm95245_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.lm95245_data* %16, %struct.lm95245_data** %10, align 8
  %17 = load %struct.lm95245_data*, %struct.lm95245_data** %10, align 8
  %18 = getelementptr inbounds %struct.lm95245_data, %struct.lm95245_data* %17, i32 0, i32 1
  %19 = load %struct.regmap*, %struct.regmap** %18, align 8
  store %struct.regmap* %19, %struct.regmap** %11, align 8
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %137 [
    i32 130, label %21
    i32 132, label %30
    i32 131, label %51
    i32 129, label %83
    i32 128, label %115
  ]

21:                                               ; preds = %4
  %22 = load i64, i64* %9, align 8
  %23 = sdiv i64 %22, 1000
  %24 = call i64 @clamp_val(i64 %23, i32 0, i32 255)
  store i64 %24, i64* %9, align 8
  %25 = load %struct.regmap*, %struct.regmap** %11, align 8
  %26 = load i32, i32* @LM95245_REG_RW_REMOTE_OS_LIMIT, align 4
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @regmap_write(%struct.regmap* %25, i32 %26, i64 %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %5, align 4
  br label %140

30:                                               ; preds = %4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @LM95245_REG_RW_REMOTE_TCRIT_LIMIT, align 4
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @LM95245_REG_RW_LOCAL_OS_TCRIT_LIMIT, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %14, align 4
  %39 = load i64, i64* %9, align 8
  %40 = sdiv i64 %39, 1000
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 255, i32 127
  %45 = call i64 @clamp_val(i64 %40, i32 0, i32 %44)
  store i64 %45, i64* %9, align 8
  %46 = load %struct.regmap*, %struct.regmap** %11, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @regmap_write(%struct.regmap* %46, i32 %47, i64 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %5, align 4
  br label %140

51:                                               ; preds = %4
  %52 = load %struct.lm95245_data*, %struct.lm95245_data** %10, align 8
  %53 = getelementptr inbounds %struct.lm95245_data, %struct.lm95245_data* %52, i32 0, i32 0
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.regmap*, %struct.regmap** %11, align 8
  %56 = load i32, i32* @LM95245_REG_RW_LOCAL_OS_TCRIT_LIMIT, align 4
  %57 = call i32 @regmap_read(%struct.regmap* %55, i32 %56, i32* %12)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %51
  %61 = load %struct.lm95245_data*, %struct.lm95245_data** %10, align 8
  %62 = getelementptr inbounds %struct.lm95245_data, %struct.lm95245_data* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %5, align 4
  br label %140

65:                                               ; preds = %51
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @clamp_val(i64 %66, i32 -1000000, i32 1000000)
  store i64 %67, i64* %9, align 8
  %68 = load i32, i32* %12, align 4
  %69 = zext i32 %68 to i64
  %70 = load i64, i64* %9, align 8
  %71 = sdiv i64 %70, 1000
  %72 = sub nsw i64 %69, %71
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i64 @clamp_val(i64 %73, i32 0, i32 31)
  store i64 %74, i64* %9, align 8
  %75 = load %struct.regmap*, %struct.regmap** %11, align 8
  %76 = load i32, i32* @LM95245_REG_RW_COMMON_HYSTERESIS, align 4
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @regmap_write(%struct.regmap* %75, i32 %76, i64 %77)
  store i32 %78, i32* %13, align 4
  %79 = load %struct.lm95245_data*, %struct.lm95245_data** %10, align 8
  %80 = getelementptr inbounds %struct.lm95245_data, %struct.lm95245_data* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %5, align 4
  br label %140

83:                                               ; preds = %4
  %84 = load i64, i64* %9, align 8
  %85 = call i64 @clamp_val(i64 %84, i32 -128000, i32 127875)
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* %9, align 8
  %87 = mul nsw i64 %86, 256
  %88 = sdiv i64 %87, 1000
  store i64 %88, i64* %9, align 8
  %89 = load %struct.lm95245_data*, %struct.lm95245_data** %10, align 8
  %90 = getelementptr inbounds %struct.lm95245_data, %struct.lm95245_data* %89, i32 0, i32 0
  %91 = call i32 @mutex_lock(i32* %90)
  %92 = load %struct.regmap*, %struct.regmap** %11, align 8
  %93 = load i32, i32* @LM95245_REG_RW_REMOTE_OFFL, align 4
  %94 = load i64, i64* %9, align 8
  %95 = and i64 %94, 224
  %96 = call i32 @regmap_write(%struct.regmap* %92, i32 %93, i64 %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %83
  %100 = load %struct.lm95245_data*, %struct.lm95245_data** %10, align 8
  %101 = getelementptr inbounds %struct.lm95245_data, %struct.lm95245_data* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* %5, align 4
  br label %140

104:                                              ; preds = %83
  %105 = load %struct.regmap*, %struct.regmap** %11, align 8
  %106 = load i32, i32* @LM95245_REG_RW_REMOTE_OFFH, align 4
  %107 = load i64, i64* %9, align 8
  %108 = ashr i64 %107, 8
  %109 = and i64 %108, 255
  %110 = call i32 @regmap_write(%struct.regmap* %105, i32 %106, i64 %109)
  store i32 %110, i32* %13, align 4
  %111 = load %struct.lm95245_data*, %struct.lm95245_data** %10, align 8
  %112 = getelementptr inbounds %struct.lm95245_data, %struct.lm95245_data* %111, i32 0, i32 0
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load i32, i32* %13, align 4
  store i32 %114, i32* %5, align 4
  br label %140

115:                                              ; preds = %4
  %116 = load i64, i64* %9, align 8
  %117 = icmp ne i64 %116, 1
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load i64, i64* %9, align 8
  %120 = icmp ne i64 %119, 2
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %5, align 4
  br label %140

124:                                              ; preds = %118, %115
  %125 = load %struct.regmap*, %struct.regmap** %11, align 8
  %126 = load i32, i32* @LM95245_REG_RW_CONFIG2, align 4
  %127 = load i32, i32* @CFG2_REMOTE_TT, align 4
  %128 = load i64, i64* %9, align 8
  %129 = icmp eq i64 %128, 1
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load i32, i32* @CFG2_REMOTE_TT, align 4
  br label %133

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132, %130
  %134 = phi i32 [ %131, %130 ], [ 0, %132 ]
  %135 = call i32 @regmap_update_bits(%struct.regmap* %125, i32 %126, i32 %127, i32 %134)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  store i32 %136, i32* %5, align 4
  br label %140

137:                                              ; preds = %4
  %138 = load i32, i32* @EOPNOTSUPP, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %137, %133, %121, %104, %99, %65, %60, %37, %21
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local %struct.lm95245_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
