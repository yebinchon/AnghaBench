; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-aspeed.c_aspeed_gpio_copro_grab_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-aspeed.c_aspeed_gpio_copro_grab_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.aspeed_gpio = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.aspeed_gpio_bank = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GPIO_CMDSRC_COLDFIRE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aspeed_gpio_copro_grab_gpio(%struct.gpio_desc* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.gpio_chip*, align 8
  %11 = alloca %struct.aspeed_gpio*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.aspeed_gpio_bank*, align 8
  %16 = alloca i64, align 8
  store %struct.gpio_desc* %0, %struct.gpio_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %18 = call %struct.gpio_chip* @gpiod_to_chip(%struct.gpio_desc* %17)
  store %struct.gpio_chip* %18, %struct.gpio_chip** %10, align 8
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %10, align 8
  %20 = call %struct.aspeed_gpio* @gpiochip_get_data(%struct.gpio_chip* %19)
  store %struct.aspeed_gpio* %20, %struct.aspeed_gpio** %11, align 8
  store i32 0, i32* %12, align 4
  %21 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %22 = call i32 @gpio_chip_hwgpio(%struct.gpio_desc* %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = call %struct.aspeed_gpio_bank* @to_bank(i32 %23)
  store %struct.aspeed_gpio_bank* %24, %struct.aspeed_gpio_bank** %15, align 8
  %25 = load %struct.aspeed_gpio*, %struct.aspeed_gpio** %11, align 8
  %26 = getelementptr inbounds %struct.aspeed_gpio, %struct.aspeed_gpio* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %4
  %30 = load %struct.aspeed_gpio*, %struct.aspeed_gpio** %11, align 8
  %31 = getelementptr inbounds %struct.aspeed_gpio, %struct.aspeed_gpio* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 3
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32* @kzalloc(i32 %34, i32 %35)
  %37 = load %struct.aspeed_gpio*, %struct.aspeed_gpio** %11, align 8
  %38 = getelementptr inbounds %struct.aspeed_gpio, %struct.aspeed_gpio* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  br label %39

39:                                               ; preds = %29, %4
  %40 = load %struct.aspeed_gpio*, %struct.aspeed_gpio** %11, align 8
  %41 = getelementptr inbounds %struct.aspeed_gpio, %struct.aspeed_gpio* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %131

47:                                               ; preds = %39
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.aspeed_gpio*, %struct.aspeed_gpio** %11, align 8
  %53 = getelementptr inbounds %struct.aspeed_gpio, %struct.aspeed_gpio* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %51, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50, %47
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %131

60:                                               ; preds = %50
  %61 = load i32, i32* %14, align 4
  %62 = ashr i32 %61, 3
  store i32 %62, i32* %13, align 4
  %63 = load %struct.aspeed_gpio*, %struct.aspeed_gpio** %11, align 8
  %64 = getelementptr inbounds %struct.aspeed_gpio, %struct.aspeed_gpio* %63, i32 0, i32 1
  %65 = load i64, i64* %16, align 8
  %66 = call i32 @spin_lock_irqsave(i32* %64, i64 %65)
  %67 = load %struct.aspeed_gpio*, %struct.aspeed_gpio** %11, align 8
  %68 = getelementptr inbounds %struct.aspeed_gpio, %struct.aspeed_gpio* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 255
  br i1 %74, label %75, label %78

75:                                               ; preds = %60
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %12, align 4
  br label %125

78:                                               ; preds = %60
  %79 = load %struct.aspeed_gpio*, %struct.aspeed_gpio** %11, align 8
  %80 = getelementptr inbounds %struct.aspeed_gpio, %struct.aspeed_gpio* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.aspeed_gpio*, %struct.aspeed_gpio** %11, align 8
  %88 = getelementptr inbounds %struct.aspeed_gpio, %struct.aspeed_gpio* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %101

95:                                               ; preds = %78
  %96 = load %struct.aspeed_gpio*, %struct.aspeed_gpio** %11, align 8
  %97 = load %struct.aspeed_gpio_bank*, %struct.aspeed_gpio_bank** %15, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* @GPIO_CMDSRC_COLDFIRE, align 4
  %100 = call i32 @aspeed_gpio_change_cmd_source(%struct.aspeed_gpio* %96, %struct.aspeed_gpio_bank* %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %95, %78
  %102 = load i32*, i32** %7, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load %struct.aspeed_gpio_bank*, %struct.aspeed_gpio_bank** %15, align 8
  %106 = getelementptr inbounds %struct.aspeed_gpio_bank, %struct.aspeed_gpio_bank* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %7, align 8
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %104, %101
  %110 = load i32*, i32** %8, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load %struct.aspeed_gpio_bank*, %struct.aspeed_gpio_bank** %15, align 8
  %114 = getelementptr inbounds %struct.aspeed_gpio_bank, %struct.aspeed_gpio_bank* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %8, align 8
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %112, %109
  %118 = load i32*, i32** %9, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @GPIO_OFFSET(i32 %121)
  %123 = load i32*, i32** %9, align 8
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %120, %117
  br label %125

125:                                              ; preds = %124, %75
  %126 = load %struct.aspeed_gpio*, %struct.aspeed_gpio** %11, align 8
  %127 = getelementptr inbounds %struct.aspeed_gpio, %struct.aspeed_gpio* %126, i32 0, i32 1
  %128 = load i64, i64* %16, align 8
  %129 = call i32 @spin_unlock_irqrestore(i32* %127, i64 %128)
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %125, %57, %44
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local %struct.gpio_chip* @gpiod_to_chip(%struct.gpio_desc*) #1

declare dso_local %struct.aspeed_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @gpio_chip_hwgpio(%struct.gpio_desc*) #1

declare dso_local %struct.aspeed_gpio_bank* @to_bank(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @aspeed_gpio_change_cmd_source(%struct.aspeed_gpio*, %struct.aspeed_gpio_bank*, i32, i32) #1

declare dso_local i32 @GPIO_OFFSET(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
