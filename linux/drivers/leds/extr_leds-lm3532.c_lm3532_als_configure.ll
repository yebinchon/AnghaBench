; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3532.c_lm3532_als_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3532.c_lm3532_als_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3532_data = type { i32, %struct.lm3532_als_data* }
%struct.lm3532_als_data = type { i32, i32, i32*, i32*, i32, i32, i32 }
%struct.lm3532_led = type { i32 }

@LM3532_REG_ZN_0_HI = common dso_local global i32 0, align 4
@LM3532_ALS_ZB_MAX = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4
@LM3532_ALS_OFFSET_mV = common dso_local global i32 0, align 4
@LM3532_ENABLE_ALS = common dso_local global i32 0, align 4
@LM3532_ALS_SEL_SHIFT = common dso_local global i32 0, align 4
@LM3532_ALS_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3532_data*, %struct.lm3532_led*)* @lm3532_als_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3532_als_configure(%struct.lm3532_data* %0, %struct.lm3532_led* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lm3532_data*, align 8
  %5 = alloca %struct.lm3532_led*, align 8
  %6 = alloca %struct.lm3532_als_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.lm3532_data* %0, %struct.lm3532_data** %4, align 8
  store %struct.lm3532_led* %1, %struct.lm3532_led** %5, align 8
  %13 = load %struct.lm3532_data*, %struct.lm3532_data** %4, align 8
  %14 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %13, i32 0, i32 1
  %15 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %14, align 8
  store %struct.lm3532_als_data* %15, %struct.lm3532_als_data** %6, align 8
  %16 = load i32, i32* @LM3532_REG_ZN_0_HI, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %6, align 8
  %18 = getelementptr inbounds %struct.lm3532_als_data, %struct.lm3532_als_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %6, align 8
  %21 = getelementptr inbounds %struct.lm3532_als_data, %struct.lm3532_als_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %23, %24
  %26 = load i32, i32* @LM3532_ALS_ZB_MAX, align 4
  %27 = add nsw i32 %26, 1
  %28 = mul nsw i32 %27, 2
  %29 = sdiv i32 %25, %28
  store i32 %29, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %109, %2
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @LM3532_ALS_ZB_MAX, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %112

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %9, align 4
  %40 = mul nsw i32 %38, %39
  %41 = add nsw i32 %37, %40
  %42 = load i32, i32* @LED_FULL, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sdiv i32 %43, 1000
  %45 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %6, align 8
  %46 = getelementptr inbounds %struct.lm3532_als_data, %struct.lm3532_als_data* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @LM3532_ALS_OFFSET_mV, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %9, align 4
  %58 = mul nsw i32 %56, %57
  %59 = add nsw i32 %55, %58
  %60 = load i32, i32* @LED_FULL, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sdiv i32 %61, 1000
  %63 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %6, align 8
  %64 = getelementptr inbounds %struct.lm3532_als_data, %struct.lm3532_als_data* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  %69 = load i32, i32* @LM3532_REG_ZN_0_HI, align 4
  %70 = load i32, i32* %12, align 4
  %71 = mul nsw i32 %70, 2
  %72 = add nsw i32 %69, %71
  store i32 %72, i32* %10, align 4
  %73 = load %struct.lm3532_data*, %struct.lm3532_data** %4, align 8
  %74 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %6, align 8
  %78 = getelementptr inbounds %struct.lm3532_als_data, %struct.lm3532_als_data* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @regmap_write(i32 %75, i32 %76, i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %34
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %3, align 4
  br label %134

89:                                               ; preds = %34
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  %92 = load %struct.lm3532_data*, %struct.lm3532_data** %4, align 8
  %93 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %6, align 8
  %97 = getelementptr inbounds %struct.lm3532_als_data, %struct.lm3532_als_data* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @regmap_write(i32 %94, i32 %95, i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %89
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %3, align 4
  br label %134

108:                                              ; preds = %89
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %30

112:                                              ; preds = %30
  %113 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %6, align 8
  %114 = getelementptr inbounds %struct.lm3532_als_data, %struct.lm3532_als_data* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @LM3532_ENABLE_ALS, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %6, align 8
  %119 = getelementptr inbounds %struct.lm3532_als_data, %struct.lm3532_als_data* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @LM3532_ALS_SEL_SHIFT, align 4
  %122 = shl i32 %120, %121
  %123 = or i32 %117, %122
  %124 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %6, align 8
  %125 = getelementptr inbounds %struct.lm3532_als_data, %struct.lm3532_als_data* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 8
  %126 = load %struct.lm3532_data*, %struct.lm3532_data** %4, align 8
  %127 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @LM3532_ALS_CONFIG, align 4
  %130 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %6, align 8
  %131 = getelementptr inbounds %struct.lm3532_als_data, %struct.lm3532_als_data* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @regmap_write(i32 %128, i32 %129, i32 %132)
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %112, %106, %87
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
