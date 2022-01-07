; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/ms_sensors/extr_ms_sensors_i2c.c_ms_sensors_read_temp_and_pressure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/ms_sensors/extr_ms_sensors_i2c.c_ms_sensors_read_temp_and_pressure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ms_tp_dev = type { i32*, i64, i32, i32 }

@ms_sensors_tp_conversion_time = common dso_local global i32* null, align 8
@MS_SENSORS_TP_T_CONVERSION_START = common dso_local global i64 0, align 8
@MS_SENSORS_TP_ADC_READ = common dso_local global i32 0, align 4
@MS_SENSORS_TP_P_CONVERSION_START = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ms_sensors_read_temp_and_pressure(%struct.ms_tp_dev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ms_tp_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ms_tp_dev* %0, %struct.ms_tp_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %22 = load %struct.ms_tp_dev*, %struct.ms_tp_dev** %5, align 8
  %23 = getelementptr inbounds %struct.ms_tp_dev, %struct.ms_tp_dev* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %18, align 8
  %25 = load %struct.ms_tp_dev*, %struct.ms_tp_dev** %5, align 8
  %26 = getelementptr inbounds %struct.ms_tp_dev, %struct.ms_tp_dev* %25, i32 0, i32 2
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i32*, i32** @ms_sensors_tp_conversion_time, align 8
  %29 = load %struct.ms_tp_dev*, %struct.ms_tp_dev** %5, align 8
  %30 = getelementptr inbounds %struct.ms_tp_dev, %struct.ms_tp_dev* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %19, align 4
  %34 = load %struct.ms_tp_dev*, %struct.ms_tp_dev** %5, align 8
  %35 = getelementptr inbounds %struct.ms_tp_dev, %struct.ms_tp_dev* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* @MS_SENSORS_TP_T_CONVERSION_START, align 8
  %38 = load %struct.ms_tp_dev*, %struct.ms_tp_dev** %5, align 8
  %39 = getelementptr inbounds %struct.ms_tp_dev, %struct.ms_tp_dev* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = mul i64 %40, 2
  %42 = add i64 %37, %41
  %43 = load i32, i32* @MS_SENSORS_TP_ADC_READ, align 4
  %44 = load i32, i32* %19, align 4
  %45 = call i32 @ms_sensors_convert_and_read(i32 %36, i64 %42, i32 %43, i32 %44, i32* %9)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %3
  %49 = load %struct.ms_tp_dev*, %struct.ms_tp_dev** %5, align 8
  %50 = getelementptr inbounds %struct.ms_tp_dev, %struct.ms_tp_dev* %49, i32 0, i32 2
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %173

53:                                               ; preds = %3
  %54 = load %struct.ms_tp_dev*, %struct.ms_tp_dev** %5, align 8
  %55 = getelementptr inbounds %struct.ms_tp_dev, %struct.ms_tp_dev* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* @MS_SENSORS_TP_P_CONVERSION_START, align 8
  %58 = load %struct.ms_tp_dev*, %struct.ms_tp_dev** %5, align 8
  %59 = getelementptr inbounds %struct.ms_tp_dev, %struct.ms_tp_dev* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = mul i64 %60, 2
  %62 = add i64 %57, %61
  %63 = load i32, i32* @MS_SENSORS_TP_ADC_READ, align 4
  %64 = load i32, i32* %19, align 4
  %65 = call i32 @ms_sensors_convert_and_read(i32 %56, i64 %62, i32 %63, i32 %64, i32* %10)
  store i32 %65, i32* %8, align 4
  %66 = load %struct.ms_tp_dev*, %struct.ms_tp_dev** %5, align 8
  %67 = getelementptr inbounds %struct.ms_tp_dev, %struct.ms_tp_dev* %66, i32 0, i32 2
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %53
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %4, align 4
  br label %173

73:                                               ; preds = %53
  %74 = load i32, i32* %9, align 4
  %75 = load i32*, i32** %18, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 5
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 8
  %79 = sub nsw i32 %74, %78
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32*, i32** %18, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 6
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %80, %83
  %85 = ashr i32 %84, 23
  %86 = add nsw i32 2000, %85
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp slt i32 %87, 2000
  br i1 %88, label %89, label %125

89:                                               ; preds = %73
  %90 = load i32, i32* %12, align 4
  %91 = sub nsw i32 %90, 2000
  store i32 %91, i32* %20, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = mul nsw i32 %92, %93
  %95 = mul nsw i32 3, %94
  %96 = ashr i32 %95, 33
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %20, align 4
  %98 = mul nsw i32 61, %97
  %99 = load i32, i32* %20, align 4
  %100 = mul nsw i32 %98, %99
  %101 = ashr i32 %100, 4
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %20, align 4
  %103 = mul nsw i32 29, %102
  %104 = load i32, i32* %20, align 4
  %105 = mul nsw i32 %103, %104
  %106 = ashr i32 %105, 4
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp slt i32 %107, -1500
  br i1 %108, label %109, label %124

109:                                              ; preds = %89
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1500
  store i32 %111, i32* %21, align 4
  %112 = load i32, i32* %21, align 4
  %113 = mul nsw i32 17, %112
  %114 = load i32, i32* %21, align 4
  %115 = mul nsw i32 %113, %114
  %116 = load i32, i32* %16, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %21, align 4
  %119 = mul nsw i32 9, %118
  %120 = load i32, i32* %21, align 4
  %121 = mul nsw i32 %119, %120
  %122 = load i32, i32* %17, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %17, align 4
  br label %124

124:                                              ; preds = %109, %89
  br label %131

125:                                              ; preds = %73
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = mul nsw i32 %126, %127
  %129 = mul nsw i32 5, %128
  %130 = ashr i32 %129, 38
  store i32 %130, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %131

131:                                              ; preds = %125, %124
  %132 = load i32*, i32** %18, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 2
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 %134, 17
  %136 = load i32*, i32** %18, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 4
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %11, align 4
  %140 = mul nsw i32 %138, %139
  %141 = ashr i32 %140, 6
  %142 = add nsw i32 %135, %141
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %13, align 4
  %145 = sub nsw i32 %144, %143
  store i32 %145, i32* %13, align 4
  %146 = load i32*, i32** %18, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = shl i32 %148, 16
  %150 = load i32*, i32** %18, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 3
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %11, align 4
  %154 = mul nsw i32 %152, %153
  %155 = ashr i32 %154, 7
  %156 = add nsw i32 %149, %155
  store i32 %156, i32* %14, align 4
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* %14, align 4
  %159 = sub nsw i32 %158, %157
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %15, align 4
  %162 = sub nsw i32 %160, %161
  %163 = mul nsw i32 %162, 10
  %164 = load i32*, i32** %6, align 8
  store i32 %163, i32* %164, align 4
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %14, align 4
  %167 = mul nsw i32 %165, %166
  %168 = ashr i32 %167, 21
  %169 = load i32, i32* %13, align 4
  %170 = sub nsw i32 %168, %169
  %171 = ashr i32 %170, 15
  %172 = load i32*, i32** %7, align 8
  store i32 %171, i32* %172, align 4
  store i32 0, i32* %4, align 4
  br label %173

173:                                              ; preds = %131, %71, %48
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ms_sensors_convert_and_read(i32, i64, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
