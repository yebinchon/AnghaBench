; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-sc27xx-bltc.c_sc27xx_led_pattern_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-sc27xx-bltc.c_sc27xx_led_pattern_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.led_pattern = type { i32, i32 }
%struct.sc27xx_led = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, %struct.regmap* }
%struct.regmap = type { i32 }

@SC27XX_LEDS_CTRL = common dso_local global i64 0, align 8
@SC27XX_CTRL_SHIFT = common dso_local global i32 0, align 4
@SC27XX_LEDS_PATTERN_CNT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SC27XX_LEDS_CURVE0 = common dso_local global i64 0, align 8
@SC27XX_CURVE_L_MASK = common dso_local global i32 0, align 4
@SC27XX_LEDS_STEP = common dso_local global i32 0, align 4
@SC27XX_LEDS_CURVE1 = common dso_local global i64 0, align 8
@SC27XX_CURVE_H_MASK = common dso_local global i32 0, align 4
@SC27XX_CURVE_SHIFT = common dso_local global i32 0, align 4
@SC27XX_LEDS_DUTY = common dso_local global i64 0, align 8
@SC27XX_DUTY_MASK = common dso_local global i32 0, align 4
@SC27XX_DUTY_SHIFT = common dso_local global i32 0, align 4
@SC27XX_MOD_MASK = common dso_local global i32 0, align 4
@SC27XX_LED_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, %struct.led_pattern*, i64, i32)* @sc27xx_led_pattern_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_led_pattern_set(%struct.led_classdev* %0, %struct.led_pattern* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.led_classdev*, align 8
  %7 = alloca %struct.led_pattern*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sc27xx_led*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.regmap*, align 8
  %15 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %6, align 8
  store %struct.led_pattern* %1, %struct.led_pattern** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %17 = call %struct.sc27xx_led* @to_sc27xx_led(%struct.led_classdev* %16)
  store %struct.sc27xx_led* %17, %struct.sc27xx_led** %10, align 8
  %18 = load %struct.sc27xx_led*, %struct.sc27xx_led** %10, align 8
  %19 = call i64 @sc27xx_led_get_offset(%struct.sc27xx_led* %18)
  store i64 %19, i64* %11, align 8
  %20 = load %struct.sc27xx_led*, %struct.sc27xx_led** %10, align 8
  %21 = getelementptr inbounds %struct.sc27xx_led, %struct.sc27xx_led* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SC27XX_LEDS_CTRL, align 8
  %26 = add nsw i64 %24, %25
  store i64 %26, i64* %12, align 8
  %27 = load i32, i32* @SC27XX_CTRL_SHIFT, align 4
  %28 = load %struct.sc27xx_led*, %struct.sc27xx_led** %10, align 8
  %29 = getelementptr inbounds %struct.sc27xx_led, %struct.sc27xx_led* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %27, %30
  store i32 %31, i32* %13, align 4
  %32 = load %struct.sc27xx_led*, %struct.sc27xx_led** %10, align 8
  %33 = getelementptr inbounds %struct.sc27xx_led, %struct.sc27xx_led* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load %struct.regmap*, %struct.regmap** %35, align 8
  store %struct.regmap* %36, %struct.regmap** %14, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @SC27XX_LEDS_PATTERN_CNT, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %4
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %177

43:                                               ; preds = %4
  %44 = load %struct.sc27xx_led*, %struct.sc27xx_led** %10, align 8
  %45 = getelementptr inbounds %struct.sc27xx_led, %struct.sc27xx_led* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.led_pattern*, %struct.led_pattern** %7, align 8
  %50 = getelementptr inbounds %struct.led_pattern, %struct.led_pattern* %49, i64 0
  %51 = getelementptr inbounds %struct.led_pattern, %struct.led_pattern* %50, i32 0, i32 0
  %52 = call i32 @sc27xx_led_clamp_align_delta_t(i32* %51)
  %53 = load %struct.regmap*, %struct.regmap** %14, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @SC27XX_LEDS_CURVE0, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i32, i32* @SC27XX_CURVE_L_MASK, align 4
  %58 = load %struct.led_pattern*, %struct.led_pattern** %7, align 8
  %59 = getelementptr inbounds %struct.led_pattern, %struct.led_pattern* %58, i64 0
  %60 = getelementptr inbounds %struct.led_pattern, %struct.led_pattern* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SC27XX_LEDS_STEP, align 4
  %63 = sdiv i32 %61, %62
  %64 = call i32 @regmap_update_bits(%struct.regmap* %53, i64 %56, i32 %57, i32 %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %43
  br label %170

68:                                               ; preds = %43
  %69 = load %struct.led_pattern*, %struct.led_pattern** %7, align 8
  %70 = getelementptr inbounds %struct.led_pattern, %struct.led_pattern* %69, i64 1
  %71 = getelementptr inbounds %struct.led_pattern, %struct.led_pattern* %70, i32 0, i32 0
  %72 = call i32 @sc27xx_led_clamp_align_delta_t(i32* %71)
  %73 = load %struct.regmap*, %struct.regmap** %14, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* @SC27XX_LEDS_CURVE1, align 8
  %76 = add nsw i64 %74, %75
  %77 = load i32, i32* @SC27XX_CURVE_L_MASK, align 4
  %78 = load %struct.led_pattern*, %struct.led_pattern** %7, align 8
  %79 = getelementptr inbounds %struct.led_pattern, %struct.led_pattern* %78, i64 1
  %80 = getelementptr inbounds %struct.led_pattern, %struct.led_pattern* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @SC27XX_LEDS_STEP, align 4
  %83 = sdiv i32 %81, %82
  %84 = call i32 @regmap_update_bits(%struct.regmap* %73, i64 %76, i32 %77, i32 %83)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %68
  br label %170

88:                                               ; preds = %68
  %89 = load %struct.led_pattern*, %struct.led_pattern** %7, align 8
  %90 = getelementptr inbounds %struct.led_pattern, %struct.led_pattern* %89, i64 2
  %91 = getelementptr inbounds %struct.led_pattern, %struct.led_pattern* %90, i32 0, i32 0
  %92 = call i32 @sc27xx_led_clamp_align_delta_t(i32* %91)
  %93 = load %struct.regmap*, %struct.regmap** %14, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* @SC27XX_LEDS_CURVE0, align 8
  %96 = add nsw i64 %94, %95
  %97 = load i32, i32* @SC27XX_CURVE_H_MASK, align 4
  %98 = load %struct.led_pattern*, %struct.led_pattern** %7, align 8
  %99 = getelementptr inbounds %struct.led_pattern, %struct.led_pattern* %98, i64 2
  %100 = getelementptr inbounds %struct.led_pattern, %struct.led_pattern* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @SC27XX_LEDS_STEP, align 4
  %103 = sdiv i32 %101, %102
  %104 = load i32, i32* @SC27XX_CURVE_SHIFT, align 4
  %105 = shl i32 %103, %104
  %106 = call i32 @regmap_update_bits(%struct.regmap* %93, i64 %96, i32 %97, i32 %105)
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %88
  br label %170

110:                                              ; preds = %88
  %111 = load %struct.led_pattern*, %struct.led_pattern** %7, align 8
  %112 = getelementptr inbounds %struct.led_pattern, %struct.led_pattern* %111, i64 3
  %113 = getelementptr inbounds %struct.led_pattern, %struct.led_pattern* %112, i32 0, i32 0
  %114 = call i32 @sc27xx_led_clamp_align_delta_t(i32* %113)
  %115 = load %struct.regmap*, %struct.regmap** %14, align 8
  %116 = load i64, i64* %11, align 8
  %117 = load i64, i64* @SC27XX_LEDS_CURVE1, align 8
  %118 = add nsw i64 %116, %117
  %119 = load i32, i32* @SC27XX_CURVE_H_MASK, align 4
  %120 = load %struct.led_pattern*, %struct.led_pattern** %7, align 8
  %121 = getelementptr inbounds %struct.led_pattern, %struct.led_pattern* %120, i64 3
  %122 = getelementptr inbounds %struct.led_pattern, %struct.led_pattern* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @SC27XX_LEDS_STEP, align 4
  %125 = sdiv i32 %123, %124
  %126 = load i32, i32* @SC27XX_CURVE_SHIFT, align 4
  %127 = shl i32 %125, %126
  %128 = call i32 @regmap_update_bits(%struct.regmap* %115, i64 %118, i32 %119, i32 %127)
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %15, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %110
  br label %170

132:                                              ; preds = %110
  %133 = load %struct.regmap*, %struct.regmap** %14, align 8
  %134 = load i64, i64* %11, align 8
  %135 = load i64, i64* @SC27XX_LEDS_DUTY, align 8
  %136 = add nsw i64 %134, %135
  %137 = load i32, i32* @SC27XX_DUTY_MASK, align 4
  %138 = load %struct.led_pattern*, %struct.led_pattern** %7, align 8
  %139 = getelementptr inbounds %struct.led_pattern, %struct.led_pattern* %138, i64 1
  %140 = getelementptr inbounds %struct.led_pattern, %struct.led_pattern* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @SC27XX_DUTY_SHIFT, align 4
  %143 = shl i32 %141, %142
  %144 = load i32, i32* @SC27XX_MOD_MASK, align 4
  %145 = or i32 %143, %144
  %146 = call i32 @regmap_update_bits(%struct.regmap* %133, i64 %136, i32 %137, i32 %145)
  store i32 %146, i32* %15, align 4
  %147 = load i32, i32* %15, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %132
  br label %170

150:                                              ; preds = %132
  %151 = load %struct.regmap*, %struct.regmap** %14, align 8
  %152 = load i64, i64* %12, align 8
  %153 = load i32, i32* @SC27XX_LED_RUN, align 4
  %154 = load i32, i32* %13, align 4
  %155 = shl i32 %153, %154
  %156 = load i32, i32* @SC27XX_LED_RUN, align 4
  %157 = load i32, i32* %13, align 4
  %158 = shl i32 %156, %157
  %159 = call i32 @regmap_update_bits(%struct.regmap* %151, i64 %152, i32 %155, i32 %158)
  store i32 %159, i32* %15, align 4
  %160 = load i32, i32* %15, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %169, label %162

162:                                              ; preds = %150
  %163 = load %struct.led_pattern*, %struct.led_pattern** %7, align 8
  %164 = getelementptr inbounds %struct.led_pattern, %struct.led_pattern* %163, i64 1
  %165 = getelementptr inbounds %struct.led_pattern, %struct.led_pattern* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %168 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %162, %150
  br label %170

170:                                              ; preds = %169, %149, %131, %109, %87, %67
  %171 = load %struct.sc27xx_led*, %struct.sc27xx_led** %10, align 8
  %172 = getelementptr inbounds %struct.sc27xx_led, %struct.sc27xx_led* %171, i32 0, i32 1
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 1
  %175 = call i32 @mutex_unlock(i32* %174)
  %176 = load i32, i32* %15, align 4
  store i32 %176, i32* %5, align 4
  br label %177

177:                                              ; preds = %170, %40
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local %struct.sc27xx_led* @to_sc27xx_led(%struct.led_classdev*) #1

declare dso_local i64 @sc27xx_led_get_offset(%struct.sc27xx_led*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sc27xx_led_clamp_align_delta_t(i32*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i64, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
