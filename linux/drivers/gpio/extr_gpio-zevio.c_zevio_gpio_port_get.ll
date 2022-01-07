; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-zevio.c_zevio_gpio_port_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-zevio.c_zevio_gpio_port_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zevio_gpio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ZEVIO_GPIO_SECTION_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zevio_gpio*, i32, i32)* @zevio_gpio_port_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zevio_gpio_port_get(%struct.zevio_gpio* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.zevio_gpio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.zevio_gpio* %0, %struct.zevio_gpio** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = lshr i32 %8, 3
  %10 = and i32 %9, 3
  %11 = load i32, i32* @ZEVIO_GPIO_SECTION_SIZE, align 4
  %12 = mul i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.zevio_gpio*, %struct.zevio_gpio** %4, align 8
  %14 = getelementptr inbounds %struct.zevio_gpio, %struct.zevio_gpio* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add i32 %16, %17
  %19 = load i32, i32* %6, align 4
  %20 = add i32 %18, %19
  %21 = call i32 @IOMEM(i32 %20)
  %22 = call i32 @readl(i32 %21)
  ret i32 %22
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @IOMEM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
