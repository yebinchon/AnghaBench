; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mvebu.c_mvebu_gpio_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mvebu.c_mvebu_gpio_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mvebu_gpio_chip = type { i32, i32*, i32, i32*, i64, i32, i32, i32, i32 }

@GPIO_OUT_OFF = common dso_local global i64 0, align 8
@GPIO_IO_CONF_OFF = common dso_local global i64 0, align 8
@GPIO_BLINK_EN_OFF = common dso_local global i64 0, align 8
@GPIO_IN_POL_OFF = common dso_local global i64 0, align 8
@GPIO_EDGE_MASK_OFF = common dso_local global i64 0, align 8
@GPIO_LEVEL_MASK_OFF = common dso_local global i64 0, align 8
@CONFIG_PWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @mvebu_gpio_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_gpio_suspend(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvebu_gpio_chip*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.mvebu_gpio_chip* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.mvebu_gpio_chip* %8, %struct.mvebu_gpio_chip** %5, align 8
  %9 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %10 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i64, i64* @GPIO_OUT_OFF, align 8
  %13 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %14 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %18 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %17, i32 0, i32 8
  %19 = call i32 @regmap_read(i32 %11, i64 %16, i32* %18)
  %20 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %21 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* @GPIO_IO_CONF_OFF, align 8
  %24 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %25 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %29 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %28, i32 0, i32 7
  %30 = call i32 @regmap_read(i32 %22, i64 %27, i32* %29)
  %31 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %32 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* @GPIO_BLINK_EN_OFF, align 8
  %35 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %36 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %40 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %39, i32 0, i32 6
  %41 = call i32 @regmap_read(i32 %33, i64 %38, i32* %40)
  %42 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %43 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* @GPIO_IN_POL_OFF, align 8
  %46 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %47 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %51 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %50, i32 0, i32 5
  %52 = call i32 @regmap_read(i32 %44, i64 %49, i32* %51)
  %53 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %54 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %149 [
    i32 128, label %56
    i32 131, label %56
    i32 129, label %83
    i32 130, label %116
  ]

56:                                               ; preds = %2, %2
  %57 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %58 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* @GPIO_EDGE_MASK_OFF, align 8
  %61 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %62 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %66 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = call i32 @regmap_read(i32 %59, i64 %64, i32* %68)
  %70 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %71 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* @GPIO_LEVEL_MASK_OFF, align 8
  %74 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %75 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %79 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = call i32 @regmap_read(i32 %72, i64 %77, i32* %81)
  br label %151

83:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %112, %83
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 2
  br i1 %86, label %87, label %115

87:                                               ; preds = %84
  %88 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %89 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i64 @GPIO_EDGE_MASK_MV78200_OFF(i32 %91)
  %93 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %94 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = call i32 @regmap_read(i32 %90, i64 %92, i32* %98)
  %100 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %101 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i64 @GPIO_LEVEL_MASK_MV78200_OFF(i32 %103)
  %105 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %106 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = call i32 @regmap_read(i32 %102, i64 %104, i32* %110)
  br label %112

112:                                              ; preds = %87
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %84

115:                                              ; preds = %84
  br label %151

116:                                              ; preds = %2
  store i32 0, i32* %6, align 4
  br label %117

117:                                              ; preds = %145, %116
  %118 = load i32, i32* %6, align 4
  %119 = icmp slt i32 %118, 4
  br i1 %119, label %120, label %148

120:                                              ; preds = %117
  %121 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %122 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i64 @GPIO_EDGE_MASK_ARMADAXP_OFF(i32 %124)
  %126 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %127 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = call i32 @regmap_read(i32 %123, i64 %125, i32* %131)
  %133 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %134 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = call i64 @GPIO_LEVEL_MASK_ARMADAXP_OFF(i32 %136)
  %138 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %139 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = call i32 @regmap_read(i32 %135, i64 %137, i32* %143)
  br label %145

145:                                              ; preds = %120
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %6, align 4
  br label %117

148:                                              ; preds = %117
  br label %151

149:                                              ; preds = %2
  %150 = call i32 (...) @BUG()
  br label %151

151:                                              ; preds = %149, %148, %115, %56
  %152 = load i32, i32* @CONFIG_PWM, align 4
  %153 = call i64 @IS_ENABLED(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %5, align 8
  %157 = call i32 @mvebu_pwm_suspend(%struct.mvebu_gpio_chip* %156)
  br label %158

158:                                              ; preds = %155, %151
  ret i32 0
}

declare dso_local %struct.mvebu_gpio_chip* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i64 @GPIO_EDGE_MASK_MV78200_OFF(i32) #1

declare dso_local i64 @GPIO_LEVEL_MASK_MV78200_OFF(i32) #1

declare dso_local i64 @GPIO_EDGE_MASK_ARMADAXP_OFF(i32) #1

declare dso_local i64 @GPIO_LEVEL_MASK_ARMADAXP_OFF(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @mvebu_pwm_suspend(%struct.mvebu_gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
