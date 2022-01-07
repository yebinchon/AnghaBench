; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dwapb.c_gpio_reg_convert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dwapb.c_gpio_reg_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwapb_gpio = type { i32 }

@GPIO_REG_OFFSET_V2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwapb_gpio*, i32)* @gpio_reg_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_reg_convert(%struct.dwapb_gpio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwapb_gpio*, align 8
  %5 = alloca i32, align 4
  store %struct.dwapb_gpio* %0, %struct.dwapb_gpio** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %4, align 8
  %7 = getelementptr inbounds %struct.dwapb_gpio, %struct.dwapb_gpio* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GPIO_REG_OFFSET_V2, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @gpio_reg_v2_convert(i32 %13)
  store i32 %14, i32* %3, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @gpio_reg_v2_convert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
