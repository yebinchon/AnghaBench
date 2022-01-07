; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads1015.c_ads1015_get_adc_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads1015.c_ads1015_get_adc_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ads1015_data = type { i32, i32, i32, i32*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@ADS1015_CHANNELS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ADS1015_CFG_REG = common dso_local global i32 0, align 4
@ADS1015_CFG_MUX_MASK = common dso_local global i32 0, align 4
@ADS1015_CFG_PGA_MASK = common dso_local global i32 0, align 4
@ADS1015_CFG_DR_MASK = common dso_local global i32 0, align 4
@ADS1015_CFG_MUX_SHIFT = common dso_local global i32 0, align 4
@ADS1015_CFG_PGA_SHIFT = common dso_local global i32 0, align 4
@ADS1015_CFG_DR_SHIFT = common dso_local global i32 0, align 4
@ADS1015_CFG_COMP_QUE_MASK = common dso_local global i32 0, align 4
@ADS1015_CFG_COMP_MODE_MASK = common dso_local global i32 0, align 4
@ADS1015_CFG_COMP_QUE_SHIFT = common dso_local global i32 0, align 4
@ADS1015_CFG_COMP_MODE_SHIFT = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@ADS1015_CONV_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ads1015_data*, i32, i32*)* @ads1015_get_adc_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads1015_get_adc_result(%struct.ads1015_data* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ads1015_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ads1015_data* %0, %struct.ads1015_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @ADS1015_CHANNELS, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %169

25:                                               ; preds = %18
  %26 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %27 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ADS1015_CFG_REG, align 4
  %30 = call i32 (i32, i32, ...) @regmap_read(i32 %28, i32 %29, i32* %13)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %169

35:                                               ; preds = %25
  %36 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %37 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %36, i32 0, i32 5
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  %44 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %45 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %44, i32 0, i32 5
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* @ADS1015_CFG_MUX_MASK, align 4
  %53 = load i32, i32* @ADS1015_CFG_PGA_MASK, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @ADS1015_CFG_DR_MASK, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @ADS1015_CFG_MUX_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @ADS1015_CFG_PGA_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = or i32 %59, %62
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @ADS1015_CFG_DR_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = or i32 %63, %66
  store i32 %67, i32* %15, align 4
  %68 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %69 = call i64 @ads1015_event_channel_enabled(%struct.ads1015_data* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %35
  %72 = load i32, i32* @ADS1015_CFG_COMP_QUE_MASK, align 4
  %73 = load i32, i32* @ADS1015_CFG_COMP_MODE_MASK, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %14, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %14, align 4
  %77 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %78 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %77, i32 0, i32 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ADS1015_CFG_COMP_QUE_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %88 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @ADS1015_CFG_COMP_MODE_SHIFT, align 4
  %91 = shl i32 %89, %90
  %92 = or i32 %86, %91
  %93 = load i32, i32* %15, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %71, %35
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %14, align 4
  %98 = xor i32 %97, -1
  %99 = and i32 %96, %98
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %14, align 4
  %102 = and i32 %100, %101
  %103 = or i32 %99, %102
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %95
  %108 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %109 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @ADS1015_CFG_REG, align 4
  %112 = load i32, i32* %15, align 4
  %113 = call i32 @regmap_write(i32 %110, i32 %111, i32 %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %107
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %4, align 4
  br label %169

118:                                              ; preds = %107
  %119 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %120 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %119, i32 0, i32 1
  store i32 1, i32* %120, align 4
  br label %121

121:                                              ; preds = %118, %95
  %122 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %123 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %162

126:                                              ; preds = %121
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* @ADS1015_CFG_DR_MASK, align 4
  %129 = and i32 %127, %128
  %130 = load i32, i32* @ADS1015_CFG_DR_SHIFT, align 4
  %131 = lshr i32 %129, %130
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* @USEC_PER_SEC, align 4
  %133 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %134 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @DIV_ROUND_UP(i32 %132, i32 %139)
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* @USEC_PER_SEC, align 4
  %142 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %143 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @DIV_ROUND_UP(i32 %141, i32 %148)
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = sdiv i32 %152, 10
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %12, align 4
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 1
  %159 = call i32 @usleep_range(i32 %156, i32 %158)
  %160 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %161 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %160, i32 0, i32 1
  store i32 0, i32* %161, align 4
  br label %162

162:                                              ; preds = %126, %121
  %163 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %164 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @ADS1015_CONV_REG, align 4
  %167 = load i32*, i32** %7, align 8
  %168 = call i32 (i32, i32, ...) @regmap_read(i32 %165, i32 %166, i32* %167)
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %162, %116, %33, %22
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i32 @regmap_read(i32, i32, ...) #1

declare dso_local i64 @ads1015_event_channel_enabled(%struct.ads1015_data*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
