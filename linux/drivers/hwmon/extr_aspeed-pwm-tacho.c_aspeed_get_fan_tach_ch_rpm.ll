; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_aspeed-pwm-tacho.c_aspeed_get_fan_tach_ch_rpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_aspeed-pwm-tacho.c_aspeed_get_fan_tach_ch_rpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_pwm_tacho_data = type { i32*, i32*, i32*, i32*, i32, i32 }

@ASPEED_PTCR_TRIGGER = common dso_local global i32 0, align 4
@ASPEED_PTCR_RESULT = common dso_local global i32 0, align 4
@RESULT_STATUS_MASK = common dso_local global i32 0, align 4
@ASPEED_RPM_STATUS_SLEEP_USEC = common dso_local global i32 0, align 4
@RESULT_VALUE_MASK = common dso_local global i32 0, align 4
@BOTH_EDGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aspeed_pwm_tacho_data*, i32)* @aspeed_get_fan_tach_ch_rpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_get_fan_tach_ch_rpm(%struct.aspeed_pwm_tacho_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aspeed_pwm_tacho_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.aspeed_pwm_tacho_data* %0, %struct.aspeed_pwm_tacho_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %4, align 8
  %18 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ASPEED_PTCR_TRIGGER, align 4
  %21 = call i32 @regmap_write(i32 %19, i32 %20, i32 0)
  %22 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %4, align 8
  %23 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ASPEED_PTCR_TRIGGER, align 4
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 1, %26
  %28 = call i32 @regmap_write(i32 %24, i32 %25, i32 %27)
  %29 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %4, align 8
  %30 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  %36 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %4, align 8
  %37 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %13, align 4
  %43 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %4, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @aspeed_get_fan_tach_ch_measure_period(%struct.aspeed_pwm_tacho_data* %43, i32 %44)
  %46 = sdiv i32 1000, %45
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = mul nsw i32 %47, 1000
  store i32 %48, i32* %10, align 4
  %49 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %4, align 8
  %50 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ASPEED_PTCR_RESULT, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @RESULT_STATUS_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @ASPEED_RPM_STATUS_SLEEP_USEC, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @regmap_read_poll_timeout(i32 %51, i32 %52, i32 %53, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %2
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %3, align 4
  br label %107

64:                                               ; preds = %2
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @RESULT_VALUE_MASK, align 4
  %67 = and i32 %65, %66
  store i32 %67, i32* %6, align 4
  %68 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %4, align 8
  %69 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %7, align 4
  %75 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %4, align 8
  %76 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @BOTH_EDGES, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1, i32 0
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = shl i32 4, %88
  %90 = load i32, i32* %7, align 4
  %91 = mul nsw i32 %90, 2
  %92 = shl i32 %89, %91
  store i32 %92, i32* %7, align 4
  %93 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %4, align 8
  %94 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %107

99:                                               ; preds = %64
  %100 = load i32, i32* %8, align 4
  %101 = mul nsw i32 %100, 60
  %102 = load i32, i32* %6, align 4
  %103 = mul nsw i32 2, %102
  %104 = load i32, i32* %7, align 4
  %105 = mul nsw i32 %103, %104
  %106 = sdiv i32 %101, %105
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %99, %98, %62
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @aspeed_get_fan_tach_ch_measure_period(%struct.aspeed_pwm_tacho_data*, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
