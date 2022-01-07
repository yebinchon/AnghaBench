; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mvebu.c_mvebu_gpio_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mvebu.c_mvebu_gpio_resume.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mvebu_gpio_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_gpio_resume(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mvebu_gpio_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.mvebu_gpio_chip* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.mvebu_gpio_chip* %6, %struct.mvebu_gpio_chip** %3, align 8
  %7 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %8 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load i64, i64* @GPIO_OUT_OFF, align 8
  %11 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %12 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  %15 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %16 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @regmap_write(i32 %9, i64 %14, i32 %17)
  %19 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %20 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* @GPIO_IO_CONF_OFF, align 8
  %23 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %24 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %28 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @regmap_write(i32 %21, i64 %26, i32 %29)
  %31 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %32 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* @GPIO_BLINK_EN_OFF, align 8
  %35 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %36 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %40 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @regmap_write(i32 %33, i64 %38, i32 %41)
  %43 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %44 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* @GPIO_IN_POL_OFF, align 8
  %47 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %48 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %52 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @regmap_write(i32 %45, i64 %50, i32 %53)
  %55 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %56 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %157 [
    i32 128, label %58
    i32 131, label %58
    i32 129, label %87
    i32 130, label %122
  ]

58:                                               ; preds = %1, %1
  %59 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %60 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* @GPIO_EDGE_MASK_OFF, align 8
  %63 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %64 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %68 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @regmap_write(i32 %61, i64 %66, i32 %71)
  %73 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %74 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* @GPIO_LEVEL_MASK_OFF, align 8
  %77 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %78 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %82 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @regmap_write(i32 %75, i64 %80, i32 %85)
  br label %159

87:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %118, %87
  %89 = load i32, i32* %4, align 4
  %90 = icmp slt i32 %89, 2
  br i1 %90, label %91, label %121

91:                                               ; preds = %88
  %92 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %93 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = call i64 @GPIO_EDGE_MASK_MV78200_OFF(i32 %95)
  %97 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %98 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @regmap_write(i32 %94, i64 %96, i32 %103)
  %105 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %106 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = call i64 @GPIO_LEVEL_MASK_MV78200_OFF(i32 %108)
  %110 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %111 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @regmap_write(i32 %107, i64 %109, i32 %116)
  br label %118

118:                                              ; preds = %91
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %88

121:                                              ; preds = %88
  br label %159

122:                                              ; preds = %1
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %153, %122
  %124 = load i32, i32* %4, align 4
  %125 = icmp slt i32 %124, 4
  br i1 %125, label %126, label %156

126:                                              ; preds = %123
  %127 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %128 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %4, align 4
  %131 = call i64 @GPIO_EDGE_MASK_ARMADAXP_OFF(i32 %130)
  %132 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %133 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @regmap_write(i32 %129, i64 %131, i32 %138)
  %140 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %141 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = call i64 @GPIO_LEVEL_MASK_ARMADAXP_OFF(i32 %143)
  %145 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %146 = getelementptr inbounds %struct.mvebu_gpio_chip, %struct.mvebu_gpio_chip* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @regmap_write(i32 %142, i64 %144, i32 %151)
  br label %153

153:                                              ; preds = %126
  %154 = load i32, i32* %4, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %4, align 4
  br label %123

156:                                              ; preds = %123
  br label %159

157:                                              ; preds = %1
  %158 = call i32 (...) @BUG()
  br label %159

159:                                              ; preds = %157, %156, %121, %58
  %160 = load i32, i32* @CONFIG_PWM, align 4
  %161 = call i64 @IS_ENABLED(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load %struct.mvebu_gpio_chip*, %struct.mvebu_gpio_chip** %3, align 8
  %165 = call i32 @mvebu_pwm_resume(%struct.mvebu_gpio_chip* %164)
  br label %166

166:                                              ; preds = %163, %159
  ret i32 0
}

declare dso_local %struct.mvebu_gpio_chip* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i64 @GPIO_EDGE_MASK_MV78200_OFF(i32) #1

declare dso_local i64 @GPIO_LEVEL_MASK_MV78200_OFF(i32) #1

declare dso_local i64 @GPIO_EDGE_MASK_ARMADAXP_OFF(i32) #1

declare dso_local i64 @GPIO_LEVEL_MASK_ARMADAXP_OFF(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @mvebu_pwm_resume(%struct.mvebu_gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
