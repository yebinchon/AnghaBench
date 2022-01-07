; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_hw_gpio.c_dal_hw_gpio_config_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_hw_gpio.c_dal_hw_gpio_config_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_gpio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EN_reg = common dso_local global i32 0, align 4
@EN = common dso_local global i32 0, align 4
@MASK_reg = common dso_local global i32 0, align 4
@MASK = common dso_local global i32 0, align 4
@GPIO_RESULT_OK = common dso_local global i32 0, align 4
@A_reg = common dso_local global i32 0, align 4
@A = common dso_local global i32 0, align 4
@GPIO_RESULT_NON_SPECIFIC_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dal_hw_gpio_config_mode(%struct.hw_gpio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hw_gpio*, align 8
  %5 = alloca i32, align 4
  store %struct.hw_gpio* %0, %struct.hw_gpio** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.hw_gpio*, %struct.hw_gpio** %4, align 8
  %8 = getelementptr inbounds %struct.hw_gpio, %struct.hw_gpio* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 %6, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %45 [
    i32 130, label %11
    i32 128, label %19
    i32 132, label %27
    i32 131, label %35
    i32 129, label %40
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @EN_reg, align 4
  %13 = load i32, i32* @EN, align 4
  %14 = call i32 @REG_UPDATE(i32 %12, i32 %13, i32 0)
  %15 = load i32, i32* @MASK_reg, align 4
  %16 = load i32, i32* @MASK, align 4
  %17 = call i32 @REG_UPDATE(i32 %15, i32 %16, i32 1)
  %18 = load i32, i32* @GPIO_RESULT_OK, align 4
  store i32 %18, i32* %3, align 4
  br label %47

19:                                               ; preds = %2
  %20 = load i32, i32* @A_reg, align 4
  %21 = load i32, i32* @A, align 4
  %22 = call i32 @REG_UPDATE(i32 %20, i32 %21, i32 0)
  %23 = load i32, i32* @MASK_reg, align 4
  %24 = load i32, i32* @MASK, align 4
  %25 = call i32 @REG_UPDATE(i32 %23, i32 %24, i32 1)
  %26 = load i32, i32* @GPIO_RESULT_OK, align 4
  store i32 %26, i32* %3, align 4
  br label %47

27:                                               ; preds = %2
  %28 = load i32, i32* @A_reg, align 4
  %29 = load i32, i32* @A, align 4
  %30 = call i32 @REG_UPDATE(i32 %28, i32 %29, i32 0)
  %31 = load i32, i32* @MASK_reg, align 4
  %32 = load i32, i32* @MASK, align 4
  %33 = call i32 @REG_UPDATE(i32 %31, i32 %32, i32 1)
  %34 = load i32, i32* @GPIO_RESULT_OK, align 4
  store i32 %34, i32* %3, align 4
  br label %47

35:                                               ; preds = %2
  %36 = load i32, i32* @MASK_reg, align 4
  %37 = load i32, i32* @MASK, align 4
  %38 = call i32 @REG_UPDATE(i32 %36, i32 %37, i32 0)
  %39 = load i32, i32* @GPIO_RESULT_OK, align 4
  store i32 %39, i32* %3, align 4
  br label %47

40:                                               ; preds = %2
  %41 = load i32, i32* @MASK_reg, align 4
  %42 = load i32, i32* @MASK, align 4
  %43 = call i32 @REG_UPDATE(i32 %41, i32 %42, i32 0)
  %44 = load i32, i32* @GPIO_RESULT_OK, align 4
  store i32 %44, i32* %3, align 4
  br label %47

45:                                               ; preds = %2
  %46 = load i32, i32* @GPIO_RESULT_NON_SPECIFIC_ERROR, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %40, %35, %27, %19, %11
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
