; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm75.c_lm75_update_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm75.c_lm75_update_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.lm75_data = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32*, i32*, i64 }

@lm75_sample_set_masks = common dso_local global i32* null, align 8
@LM75_SAMPLE_CLEAR_MASK = common dso_local global i32 0, align 4
@LM75_REG_CONF = common dso_local global i32 0, align 4
@PCT2075_REG_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64)* @lm75_update_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm75_update_interval(%struct.device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.lm75_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.lm75_data* @dev_get_drvdata(%struct.device* %10)
  store %struct.lm75_data* %11, %struct.lm75_data** %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.lm75_data*, %struct.lm75_data** %6, align 8
  %14 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.lm75_data*, %struct.lm75_data** %6, align 8
  %19 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i64 @find_closest(i64 %12, i32* %17, i32 %23)
  store i64 %24, i64* %8, align 8
  %25 = load %struct.lm75_data*, %struct.lm75_data** %6, align 8
  %26 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %28 [
    i32 128, label %69
    i32 129, label %110
  ]

28:                                               ; preds = %2
  %29 = load %struct.lm75_data*, %struct.lm75_data** %6, align 8
  %30 = load i32*, i32** @lm75_sample_set_masks, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @LM75_SAMPLE_CLEAR_MASK, align 4
  %35 = call i32 @lm75_write_config(%struct.lm75_data* %29, i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %3, align 4
  br label %135

40:                                               ; preds = %28
  %41 = load %struct.lm75_data*, %struct.lm75_data** %6, align 8
  %42 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.lm75_data*, %struct.lm75_data** %6, align 8
  %50 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.lm75_data*, %struct.lm75_data** %6, align 8
  %52 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %40
  %58 = load %struct.lm75_data*, %struct.lm75_data** %6, align 8
  %59 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.lm75_data*, %struct.lm75_data** %6, align 8
  %67 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %57, %40
  br label %134

69:                                               ; preds = %2
  %70 = load %struct.lm75_data*, %struct.lm75_data** %6, align 8
  %71 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @LM75_REG_CONF, align 4
  %74 = call i32 @regmap_read(i32 %72, i32 %73, i32* %7)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  br label %135

79:                                               ; preds = %69
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, -193
  store i32 %81, i32* %7, align 4
  %82 = load i64, i64* %8, align 8
  %83 = sub i64 3, %82
  %84 = shl i64 %83, 6
  %85 = load i32, i32* %7, align 4
  %86 = zext i32 %85 to i64
  %87 = or i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %7, align 4
  %89 = load %struct.lm75_data*, %struct.lm75_data** %6, align 8
  %90 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @LM75_REG_CONF, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @regmap_write(i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %79
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %3, align 4
  br label %135

99:                                               ; preds = %79
  %100 = load %struct.lm75_data*, %struct.lm75_data** %6, align 8
  %101 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* %8, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.lm75_data*, %struct.lm75_data** %6, align 8
  %109 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  br label %134

110:                                              ; preds = %2
  %111 = load %struct.lm75_data*, %struct.lm75_data** %6, align 8
  %112 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @PCT2075_REG_IDLE, align 4
  %115 = load i64, i64* %8, align 8
  %116 = add i64 %115, 1
  %117 = trunc i64 %116 to i32
  %118 = call i32 @i2c_smbus_write_byte_data(i32 %113, i32 %114, i32 %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %110
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %3, align 4
  br label %135

123:                                              ; preds = %110
  %124 = load %struct.lm75_data*, %struct.lm75_data** %6, align 8
  %125 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %124, i32 0, i32 1
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* %8, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.lm75_data*, %struct.lm75_data** %6, align 8
  %133 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  br label %134

134:                                              ; preds = %123, %99, %68
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %134, %121, %97, %77, %38
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.lm75_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @find_closest(i64, i32*, i32) #1

declare dso_local i32 @lm75_write_config(%struct.lm75_data*, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
