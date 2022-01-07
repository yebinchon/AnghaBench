; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_jc42.c_jc42_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_jc42.c_jc42_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.jc42_data = type { i32*, i64 }

@t_input = common dso_local global i64 0, align 8
@t_min = common dso_local global i64 0, align 8
@t_max = common dso_local global i64 0, align 8
@t_crit = common dso_local global i64 0, align 8
@jc42_hysteresis = common dso_local global i32* null, align 8
@JC42_CFG_HYST_MASK = common dso_local global i64 0, align 8
@JC42_CFG_HYST_SHIFT = common dso_local global i64 0, align 8
@JC42_ALARM_MIN_BIT = common dso_local global i32 0, align 4
@JC42_ALARM_MAX_BIT = common dso_local global i32 0, align 4
@JC42_ALARM_CRIT_BIT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32, i64*)* @jc42_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jc42_read(%struct.device* %0, i32 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.jc42_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %15 = load %struct.device*, %struct.device** %7, align 8
  %16 = call %struct.jc42_data* @jc42_update_device(%struct.device* %15)
  store %struct.jc42_data* %16, %struct.jc42_data** %12, align 8
  %17 = load %struct.jc42_data*, %struct.jc42_data** %12, align 8
  %18 = call i64 @IS_ERR(%struct.jc42_data* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load %struct.jc42_data*, %struct.jc42_data** %12, align 8
  %22 = call i32 @PTR_ERR(%struct.jc42_data* %21)
  store i32 %22, i32* %6, align 4
  br label %152

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %149 [
    i32 133, label %25
    i32 129, label %35
    i32 132, label %45
    i32 136, label %55
    i32 130, label %65
    i32 134, label %89
    i32 128, label %113
    i32 131, label %125
    i32 135, label %137
  ]

25:                                               ; preds = %23
  %26 = load %struct.jc42_data*, %struct.jc42_data** %12, align 8
  %27 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @t_input, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @jc42_temp_from_reg(i32 %31)
  %33 = ptrtoint i8* %32 to i64
  %34 = load i64*, i64** %11, align 8
  store i64 %33, i64* %34, align 8
  store i32 0, i32* %6, align 4
  br label %152

35:                                               ; preds = %23
  %36 = load %struct.jc42_data*, %struct.jc42_data** %12, align 8
  %37 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @t_min, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @jc42_temp_from_reg(i32 %41)
  %43 = ptrtoint i8* %42 to i64
  %44 = load i64*, i64** %11, align 8
  store i64 %43, i64* %44, align 8
  store i32 0, i32* %6, align 4
  br label %152

45:                                               ; preds = %23
  %46 = load %struct.jc42_data*, %struct.jc42_data** %12, align 8
  %47 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @t_max, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @jc42_temp_from_reg(i32 %51)
  %53 = ptrtoint i8* %52 to i64
  %54 = load i64*, i64** %11, align 8
  store i64 %53, i64* %54, align 8
  store i32 0, i32* %6, align 4
  br label %152

55:                                               ; preds = %23
  %56 = load %struct.jc42_data*, %struct.jc42_data** %12, align 8
  %57 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @t_crit, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @jc42_temp_from_reg(i32 %61)
  %63 = ptrtoint i8* %62 to i64
  %64 = load i64*, i64** %11, align 8
  store i64 %63, i64* %64, align 8
  store i32 0, i32* %6, align 4
  br label %152

65:                                               ; preds = %23
  %66 = load %struct.jc42_data*, %struct.jc42_data** %12, align 8
  %67 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @t_max, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @jc42_temp_from_reg(i32 %71)
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* %13, align 4
  %74 = load i32*, i32** @jc42_hysteresis, align 8
  %75 = load %struct.jc42_data*, %struct.jc42_data** %12, align 8
  %76 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @JC42_CFG_HYST_MASK, align 8
  %79 = and i64 %77, %78
  %80 = load i64, i64* @JC42_CFG_HYST_SHIFT, align 8
  %81 = lshr i64 %79, %80
  %82 = getelementptr inbounds i32, i32* %74, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %14, align 4
  %86 = sub nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = load i64*, i64** %11, align 8
  store i64 %87, i64* %88, align 8
  store i32 0, i32* %6, align 4
  br label %152

89:                                               ; preds = %23
  %90 = load %struct.jc42_data*, %struct.jc42_data** %12, align 8
  %91 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* @t_crit, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @jc42_temp_from_reg(i32 %95)
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* %13, align 4
  %98 = load i32*, i32** @jc42_hysteresis, align 8
  %99 = load %struct.jc42_data*, %struct.jc42_data** %12, align 8
  %100 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @JC42_CFG_HYST_MASK, align 8
  %103 = and i64 %101, %102
  %104 = load i64, i64* @JC42_CFG_HYST_SHIFT, align 8
  %105 = lshr i64 %103, %104
  %106 = getelementptr inbounds i32, i32* %98, i64 %105
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %14, align 4
  %110 = sub nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = load i64*, i64** %11, align 8
  store i64 %111, i64* %112, align 8
  store i32 0, i32* %6, align 4
  br label %152

113:                                              ; preds = %23
  %114 = load %struct.jc42_data*, %struct.jc42_data** %12, align 8
  %115 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* @t_input, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @JC42_ALARM_MIN_BIT, align 4
  %121 = ashr i32 %119, %120
  %122 = and i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = load i64*, i64** %11, align 8
  store i64 %123, i64* %124, align 8
  store i32 0, i32* %6, align 4
  br label %152

125:                                              ; preds = %23
  %126 = load %struct.jc42_data*, %struct.jc42_data** %12, align 8
  %127 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* @t_input, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @JC42_ALARM_MAX_BIT, align 4
  %133 = ashr i32 %131, %132
  %134 = and i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = load i64*, i64** %11, align 8
  store i64 %135, i64* %136, align 8
  store i32 0, i32* %6, align 4
  br label %152

137:                                              ; preds = %23
  %138 = load %struct.jc42_data*, %struct.jc42_data** %12, align 8
  %139 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i64, i64* @t_input, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @JC42_ALARM_CRIT_BIT, align 4
  %145 = ashr i32 %143, %144
  %146 = and i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = load i64*, i64** %11, align 8
  store i64 %147, i64* %148, align 8
  store i32 0, i32* %6, align 4
  br label %152

149:                                              ; preds = %23
  %150 = load i32, i32* @EOPNOTSUPP, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %6, align 4
  br label %152

152:                                              ; preds = %149, %137, %125, %113, %89, %65, %55, %45, %35, %25, %20
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

declare dso_local %struct.jc42_data* @jc42_update_device(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.jc42_data*) #1

declare dso_local i32 @PTR_ERR(%struct.jc42_data*) #1

declare dso_local i8* @jc42_temp_from_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
