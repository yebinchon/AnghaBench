; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_colibri-vf50-ts.c_vf50_ts_irq_bh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_colibri-vf50-ts.c_vf50_ts_irq_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vf50_touch_device = type { i32, i32, i32, i32, i32*, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@VF_ADC_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Measured values: x: %d, y: %d, z1: %d, z2: %d, p: %d\0A\00", align 1
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@COLI_PULLUP_MIN_DELAY_US = common dso_local global i32 0, align 4
@COLI_PULLUP_MAX_DELAY_US = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vf50_ts_irq_bh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf50_ts_irq_bh(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vf50_touch_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.vf50_touch_device*
  store %struct.vf50_touch_device* %15, %struct.vf50_touch_device** %5, align 8
  %16 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %5, align 8
  %17 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %16, i32 0, i32 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %20 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %5, align 8
  %21 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @gpiod_set_value(i32 %22, i32 0)
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = call i32 @pinctrl_pm_select_default_state(%struct.device* %24)
  br label %26

26:                                               ; preds = %166, %2
  %27 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %5, align 8
  %28 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %170

32:                                               ; preds = %26
  %33 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %5, align 8
  %34 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %5, align 8
  %38 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %5, align 8
  %41 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @adc_ts_measure(i32* %36, i32 %39, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  br label %170

47:                                               ; preds = %32
  %48 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %5, align 8
  %49 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %5, align 8
  %53 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %5, align 8
  %56 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @adc_ts_measure(i32* %51, i32 %54, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  br label %170

62:                                               ; preds = %47
  %63 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %5, align 8
  %64 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %5, align 8
  %68 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %5, align 8
  %71 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @adc_ts_measure(i32* %66, i32 %69, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  br label %170

77:                                               ; preds = %62
  %78 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %5, align 8
  %79 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  %82 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %5, align 8
  %83 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %5, align 8
  %86 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @adc_ts_measure(i32* %81, i32 %84, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %77
  br label %170

92:                                               ; preds = %77
  %93 = load i32, i32* %9, align 4
  %94 = icmp sgt i32 %93, 64
  br i1 %94, label %95, label %110

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = icmp sgt i32 %96, 64
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load i32, i32* %7, align 4
  %100 = mul nsw i32 1000, %99
  %101 = load i32, i32* @VF_ADC_MAX, align 4
  %102 = sdiv i32 %100, %101
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %10, align 4
  %105 = mul nsw i32 %103, %104
  %106 = load i32, i32* %9, align 4
  %107 = sdiv i32 %105, %106
  %108 = load i32, i32* %13, align 4
  %109 = sub nsw i32 %107, %108
  store i32 %109, i32* %11, align 4
  br label %111

110:                                              ; preds = %95, %92
  store i32 2000, i32* %11, align 4
  br label %111

111:                                              ; preds = %110, %98
  %112 = load i32, i32* %11, align 4
  %113 = sub nsw i32 2000, %112
  store i32 %113, i32* %11, align 4
  %114 = load %struct.device*, %struct.device** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @dev_dbg(%struct.device* %114, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %115, i32 %116, i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* %11, align 4
  %122 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %5, align 8
  %123 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %129, label %126

126:                                              ; preds = %111
  %127 = load i32, i32* %11, align 4
  %128 = icmp sgt i32 %127, 2000
  br i1 %128, label %129, label %130

129:                                              ; preds = %126, %111
  br label %170

130:                                              ; preds = %126
  %131 = load i32, i32* %12, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  store i32 0, i32* %12, align 4
  br label %166

134:                                              ; preds = %130
  %135 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %5, align 8
  %136 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @ABS_X, align 4
  %139 = load i32, i32* @VF_ADC_MAX, align 4
  %140 = load i32, i32* %7, align 4
  %141 = sub nsw i32 %139, %140
  %142 = call i32 @input_report_abs(i32 %137, i32 %138, i32 %141)
  %143 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %5, align 8
  %144 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @ABS_Y, align 4
  %147 = load i32, i32* @VF_ADC_MAX, align 4
  %148 = load i32, i32* %8, align 4
  %149 = sub nsw i32 %147, %148
  %150 = call i32 @input_report_abs(i32 %145, i32 %146, i32 %149)
  %151 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %5, align 8
  %152 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @ABS_PRESSURE, align 4
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @input_report_abs(i32 %153, i32 %154, i32 %155)
  %157 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %5, align 8
  %158 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @BTN_TOUCH, align 4
  %161 = call i32 @input_report_key(i32 %159, i32 %160, i32 1)
  %162 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %5, align 8
  %163 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @input_sync(i32 %164)
  br label %166

166:                                              ; preds = %134, %133
  %167 = load i32, i32* @COLI_PULLUP_MIN_DELAY_US, align 4
  %168 = load i32, i32* @COLI_PULLUP_MAX_DELAY_US, align 4
  %169 = call i32 @usleep_range(i32 %167, i32 %168)
  br label %26

170:                                              ; preds = %129, %91, %76, %61, %46, %26
  %171 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %5, align 8
  %172 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @ABS_PRESSURE, align 4
  %175 = call i32 @input_report_abs(i32 %173, i32 %174, i32 0)
  %176 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %5, align 8
  %177 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @BTN_TOUCH, align 4
  %180 = call i32 @input_report_key(i32 %178, i32 %179, i32 0)
  %181 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %5, align 8
  %182 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @input_sync(i32 %183)
  %185 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %5, align 8
  %186 = call i32 @vf50_ts_enable_touch_detection(%struct.vf50_touch_device* %185)
  %187 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %187
}

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @pinctrl_pm_select_default_state(%struct.device*) #1

declare dso_local i32 @adc_ts_measure(i32*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @vf50_ts_enable_touch_detection(%struct.vf50_touch_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
