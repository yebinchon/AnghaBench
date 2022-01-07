; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_config_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_config_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i32 }

@AC97_GPIO_POLARITY = common dso_local global i32 0, align 4
@WM97XX_GPIO_POL_HIGH = common dso_local global i32 0, align 4
@AC97_GPIO_STICKY = common dso_local global i32 0, align 4
@WM97XX_GPIO_STICKY = common dso_local global i32 0, align 4
@AC97_GPIO_WAKEUP = common dso_local global i32 0, align 4
@WM97XX_GPIO_WAKE = common dso_local global i32 0, align 4
@AC97_GPIO_CFG = common dso_local global i32 0, align 4
@WM97XX_GPIO_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wm97xx_config_gpio(%struct.wm97xx* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.wm97xx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.wm97xx*, %struct.wm97xx** %7, align 8
  %15 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.wm97xx*, %struct.wm97xx** %7, align 8
  %18 = load i32, i32* @AC97_GPIO_POLARITY, align 4
  %19 = call i32 @wm97xx_reg_read(%struct.wm97xx* %17, i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @WM97XX_GPIO_POL_HIGH, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %6
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %13, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %13, align 4
  br label %32

27:                                               ; preds = %6
  %28 = load i32, i32* %8, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %13, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %13, align 4
  br label %32

32:                                               ; preds = %27, %23
  %33 = load %struct.wm97xx*, %struct.wm97xx** %7, align 8
  %34 = load i32, i32* @AC97_GPIO_POLARITY, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @wm97xx_reg_write(%struct.wm97xx* %33, i32 %34, i32 %35)
  %37 = load %struct.wm97xx*, %struct.wm97xx** %7, align 8
  %38 = load i32, i32* @AC97_GPIO_STICKY, align 4
  %39 = call i32 @wm97xx_reg_read(%struct.wm97xx* %37, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @WM97XX_GPIO_STICKY, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %13, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %13, align 4
  br label %52

47:                                               ; preds = %32
  %48 = load i32, i32* %8, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %13, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %47, %43
  %53 = load %struct.wm97xx*, %struct.wm97xx** %7, align 8
  %54 = load i32, i32* @AC97_GPIO_STICKY, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @wm97xx_reg_write(%struct.wm97xx* %53, i32 %54, i32 %55)
  %57 = load %struct.wm97xx*, %struct.wm97xx** %7, align 8
  %58 = load i32, i32* @AC97_GPIO_WAKEUP, align 4
  %59 = call i32 @wm97xx_reg_read(%struct.wm97xx* %57, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @WM97XX_GPIO_WAKE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %52
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %13, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %13, align 4
  br label %72

67:                                               ; preds = %52
  %68 = load i32, i32* %8, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %13, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %67, %63
  %73 = load %struct.wm97xx*, %struct.wm97xx** %7, align 8
  %74 = load i32, i32* @AC97_GPIO_WAKEUP, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @wm97xx_reg_write(%struct.wm97xx* %73, i32 %74, i32 %75)
  %77 = load %struct.wm97xx*, %struct.wm97xx** %7, align 8
  %78 = load i32, i32* @AC97_GPIO_CFG, align 4
  %79 = call i32 @wm97xx_reg_read(%struct.wm97xx* %77, i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @WM97XX_GPIO_IN, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %72
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %13, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %13, align 4
  br label %92

87:                                               ; preds = %72
  %88 = load i32, i32* %8, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %13, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %87, %83
  %93 = load %struct.wm97xx*, %struct.wm97xx** %7, align 8
  %94 = load i32, i32* @AC97_GPIO_CFG, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @wm97xx_reg_write(%struct.wm97xx* %93, i32 %94, i32 %95)
  %97 = load %struct.wm97xx*, %struct.wm97xx** %7, align 8
  %98 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %97, i32 0, i32 0
  %99 = call i32 @mutex_unlock(i32* %98)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm97xx_reg_read(%struct.wm97xx*, i32) #1

declare dso_local i32 @wm97xx_reg_write(%struct.wm97xx*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
