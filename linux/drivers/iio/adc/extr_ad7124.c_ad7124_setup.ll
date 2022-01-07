; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7124.c_ad7124_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7124.c_ad7124_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7124_state = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ad7124_master_clk_freq_hz = common dso_local global i32* null, align 8
@AD7124_ADC_CTRL_PWR_MSK = common dso_local global i32 0, align 4
@AD7124_ADC_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7124_state*)* @ad7124_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7124_setup(%struct.ad7124_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ad7124_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ad7124_state* %0, %struct.ad7124_state** %3, align 8
  %10 = load %struct.ad7124_state*, %struct.ad7124_state** %3, align 8
  %11 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @clk_get_rate(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %164

19:                                               ; preds = %1
  %20 = load i32*, i32** @ad7124_master_clk_freq_hz, align 8
  %21 = load i32*, i32** @ad7124_master_clk_freq_hz, align 8
  %22 = call i32 @ARRAY_SIZE(i32* %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ad7124_find_closest_match(i32* %20, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32*, i32** @ad7124_master_clk_freq_hz, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %25, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %19
  %33 = load %struct.ad7124_state*, %struct.ad7124_state** %3, align 8
  %34 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @clk_set_rate(i32 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %2, align 4
  br label %164

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %19
  %44 = load i32, i32* @AD7124_ADC_CTRL_PWR_MSK, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.ad7124_state*, %struct.ad7124_state** %3, align 8
  %47 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @AD7124_ADC_CTRL_PWR(i32 %50)
  %52 = load %struct.ad7124_state*, %struct.ad7124_state** %3, align 8
  %53 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.ad7124_state*, %struct.ad7124_state** %3, align 8
  %57 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %56, i32 0, i32 2
  %58 = load i32, i32* @AD7124_ADC_CONTROL, align 4
  %59 = load %struct.ad7124_state*, %struct.ad7124_state** %3, align 8
  %60 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ad_sd_write_reg(i32* %57, i32 %58, i32 2, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %43
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %164

67:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %159, %67
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.ad7124_state*, %struct.ad7124_state** %3, align 8
  %71 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %162

74:                                               ; preds = %68
  %75 = load %struct.ad7124_state*, %struct.ad7124_state** %3, align 8
  %76 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %75, i32 0, i32 3
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @AD7124_CHANNEL_SETUP(i32 %83)
  %85 = or i32 %82, %84
  store i32 %85, i32* %4, align 4
  %86 = load %struct.ad7124_state*, %struct.ad7124_state** %3, align 8
  %87 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %86, i32 0, i32 2
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @AD7124_CHANNEL(i32 %88)
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @ad_sd_write_reg(i32* %87, i32 %89, i32 2, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %74
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %2, align 4
  br label %164

96:                                               ; preds = %74
  %97 = load %struct.ad7124_state*, %struct.ad7124_state** %3, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @ad7124_init_channel_vref(%struct.ad7124_state* %97, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %2, align 4
  br label %164

104:                                              ; preds = %96
  %105 = load %struct.ad7124_state*, %struct.ad7124_state** %3, align 8
  %106 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %105, i32 0, i32 3
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 1
  %114 = load %struct.ad7124_state*, %struct.ad7124_state** %3, align 8
  %115 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %114, i32 0, i32 3
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %113, %121
  store i32 %122, i32* %9, align 4
  %123 = load %struct.ad7124_state*, %struct.ad7124_state** %3, align 8
  %124 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %123, i32 0, i32 3
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @AD7124_CONFIG_BIPOLAR(i32 %130)
  %132 = load %struct.ad7124_state*, %struct.ad7124_state** %3, align 8
  %133 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %132, i32 0, i32 3
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @AD7124_CONFIG_REF_SEL(i32 %139)
  %141 = or i32 %131, %140
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @AD7124_CONFIG_IN_BUFF(i32 %142)
  %144 = or i32 %141, %143
  store i32 %144, i32* %4, align 4
  %145 = load %struct.ad7124_state*, %struct.ad7124_state** %3, align 8
  %146 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %145, i32 0, i32 2
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @AD7124_CONFIG(i32 %147)
  %149 = load i32, i32* %4, align 4
  %150 = call i32 @ad_sd_write_reg(i32* %146, i32 %148, i32 2, i32 %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %104
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %2, align 4
  br label %164

155:                                              ; preds = %104
  %156 = load %struct.ad7124_state*, %struct.ad7124_state** %3, align 8
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @ad7124_set_channel_odr(%struct.ad7124_state* %156, i32 %157, i32 10)
  store i32 %158, i32* %8, align 4
  br label %159

159:                                              ; preds = %155
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %7, align 4
  br label %68

162:                                              ; preds = %68
  %163 = load i32, i32* %8, align 4
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %162, %153, %102, %94, %65, %40, %16
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @ad7124_find_closest_match(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @AD7124_ADC_CTRL_PWR(i32) #1

declare dso_local i32 @ad_sd_write_reg(i32*, i32, i32, i32) #1

declare dso_local i32 @AD7124_CHANNEL_SETUP(i32) #1

declare dso_local i32 @AD7124_CHANNEL(i32) #1

declare dso_local i32 @ad7124_init_channel_vref(%struct.ad7124_state*, i32) #1

declare dso_local i32 @AD7124_CONFIG_BIPOLAR(i32) #1

declare dso_local i32 @AD7124_CONFIG_REF_SEL(i32) #1

declare dso_local i32 @AD7124_CONFIG_IN_BUFF(i32) #1

declare dso_local i32 @AD7124_CONFIG(i32) #1

declare dso_local i32 @ad7124_set_channel_odr(%struct.ad7124_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
