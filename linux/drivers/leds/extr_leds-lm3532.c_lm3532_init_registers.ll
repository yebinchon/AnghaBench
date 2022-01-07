; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3532.c_lm3532_init_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3532.c_lm3532_init_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3532_led = type { i32, i32, i32, i32, i32, i32*, %struct.lm3532_data* }
%struct.lm3532_data = type { i32, i32, i32, i64 }

@LM3532_REG_ZONE_CFG_A = common dso_local global i32 0, align 4
@LM3532_ZONE_MASK = common dso_local global i32 0, align 4
@LM3532_REG_CTRL_A_FS_CURR = common dso_local global i32 0, align 4
@LM3532_FS_CURR_MIN = common dso_local global i32 0, align 4
@LM3532_FS_CURR_STEP = common dso_local global i32 0, align 4
@LM3532_OUTPUT_CFG_MASK = common dso_local global i32 0, align 4
@LM3532_REG_OUTPUT_CFG = common dso_local global i32 0, align 4
@LM3532_RAMP_DOWN_SHIFT = common dso_local global i32 0, align 4
@LM3532_REG_RT_RAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3532_led*)* @lm3532_init_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3532_init_registers(%struct.lm3532_led* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lm3532_led*, align 8
  %4 = alloca %struct.lm3532_data*, align 8
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
  store %struct.lm3532_led* %0, %struct.lm3532_led** %3, align 8
  %15 = load %struct.lm3532_led*, %struct.lm3532_led** %3, align 8
  %16 = getelementptr inbounds %struct.lm3532_led, %struct.lm3532_led* %15, i32 0, i32 6
  %17 = load %struct.lm3532_data*, %struct.lm3532_data** %16, align 8
  store %struct.lm3532_data* %17, %struct.lm3532_data** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load %struct.lm3532_data*, %struct.lm3532_data** %4, align 8
  %19 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.lm3532_data*, %struct.lm3532_data** %4, align 8
  %24 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @gpiod_direction_output(i64 %25, i32 1)
  br label %27

27:                                               ; preds = %22, %1
  %28 = load i32, i32* @LM3532_REG_ZONE_CFG_A, align 4
  %29 = load %struct.lm3532_led*, %struct.lm3532_led** %3, align 8
  %30 = getelementptr inbounds %struct.lm3532_led, %struct.lm3532_led* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %31, 2
  %33 = add nsw i32 %28, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.lm3532_data*, %struct.lm3532_data** %4, align 8
  %35 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.lm3532_led*, %struct.lm3532_led** %3, align 8
  %39 = getelementptr inbounds %struct.lm3532_led, %struct.lm3532_led* %38, i32 0, i32 1
  %40 = call i32 @regmap_read(i32 %36, i32 %37, i32* %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %27
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %2, align 4
  br label %157

45:                                               ; preds = %27
  %46 = load i32, i32* @LM3532_ZONE_MASK, align 4
  %47 = load %struct.lm3532_led*, %struct.lm3532_led** %3, align 8
  %48 = getelementptr inbounds %struct.lm3532_led, %struct.lm3532_led* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.lm3532_led*, %struct.lm3532_led** %3, align 8
  %52 = getelementptr inbounds %struct.lm3532_led, %struct.lm3532_led* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.lm3532_led*, %struct.lm3532_led** %3, align 8
  %55 = getelementptr inbounds %struct.lm3532_led, %struct.lm3532_led* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %53, %56
  store i32 %57, i32* %10, align 4
  %58 = load %struct.lm3532_data*, %struct.lm3532_data** %4, align 8
  %59 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @regmap_write(i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %45
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %2, align 4
  br label %157

68:                                               ; preds = %45
  %69 = load %struct.lm3532_led*, %struct.lm3532_led** %3, align 8
  %70 = getelementptr inbounds %struct.lm3532_led, %struct.lm3532_led* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %68
  %74 = load i32, i32* @LM3532_REG_CTRL_A_FS_CURR, align 4
  %75 = load %struct.lm3532_led*, %struct.lm3532_led** %3, align 8
  %76 = getelementptr inbounds %struct.lm3532_led, %struct.lm3532_led* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 %77, 2
  %79 = add nsw i32 %74, %78
  store i32 %79, i32* %11, align 4
  %80 = load %struct.lm3532_led*, %struct.lm3532_led** %3, align 8
  %81 = getelementptr inbounds %struct.lm3532_led, %struct.lm3532_led* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @LM3532_FS_CURR_MIN, align 4
  %84 = sub nsw i32 %82, %83
  %85 = load i32, i32* @LM3532_FS_CURR_STEP, align 4
  %86 = sdiv i32 %84, %85
  store i32 %86, i32* %12, align 4
  %87 = load %struct.lm3532_data*, %struct.lm3532_data** %4, align 8
  %88 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @regmap_write(i32 %89, i32 %90, i32 %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %73
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %2, align 4
  br label %157

97:                                               ; preds = %73
  br label %98

98:                                               ; preds = %97, %68
  store i32 0, i32* %14, align 4
  br label %99

99:                                               ; preds = %126, %98
  %100 = load i32, i32* %14, align 4
  %101 = load %struct.lm3532_led*, %struct.lm3532_led** %3, align 8
  %102 = getelementptr inbounds %struct.lm3532_led, %struct.lm3532_led* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %129

105:                                              ; preds = %99
  %106 = load %struct.lm3532_led*, %struct.lm3532_led** %3, align 8
  %107 = getelementptr inbounds %struct.lm3532_led, %struct.lm3532_led* %106, i32 0, i32 5
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %112, 2
  store i32 %113, i32* %7, align 4
  %114 = load %struct.lm3532_led*, %struct.lm3532_led** %3, align 8
  %115 = getelementptr inbounds %struct.lm3532_led, %struct.lm3532_led* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = shl i32 %116, %117
  %119 = load i32, i32* %6, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* @LM3532_OUTPUT_CFG_MASK, align 4
  %122 = load i32, i32* %7, align 4
  %123 = shl i32 %121, %122
  %124 = load i32, i32* %8, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %105
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %99

129:                                              ; preds = %99
  %130 = load %struct.lm3532_data*, %struct.lm3532_data** %4, align 8
  %131 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @LM3532_REG_OUTPUT_CFG, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @regmap_update_bits(i32 %132, i32 %133, i32 %134, i32 %135)
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %129
  %140 = load i32, i32* %13, align 4
  store i32 %140, i32* %2, align 4
  br label %157

141:                                              ; preds = %129
  %142 = load %struct.lm3532_data*, %struct.lm3532_data** %4, align 8
  %143 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.lm3532_data*, %struct.lm3532_data** %4, align 8
  %146 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @LM3532_RAMP_DOWN_SHIFT, align 4
  %149 = shl i32 %147, %148
  %150 = or i32 %144, %149
  store i32 %150, i32* %5, align 4
  %151 = load %struct.lm3532_data*, %struct.lm3532_data** %4, align 8
  %152 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @LM3532_REG_RT_RAMP, align 4
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @regmap_write(i32 %153, i32 %154, i32 %155)
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %141, %139, %95, %66, %43
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @gpiod_direction_output(i64, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
