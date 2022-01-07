; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiochip_disable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiochip_disable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.gpio_desc = type { i32 }

@FLAG_USED_AS_IRQ = common dso_local global i32 0, align 4
@FLAG_IRQ_IS_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gpiochip_disable_irq(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_desc*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.gpio_desc* @gpiochip_get_desc(%struct.gpio_chip* %6, i32 %7)
  store %struct.gpio_desc* %8, %struct.gpio_desc** %5, align 8
  %9 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %10 = call i32 @IS_ERR(%struct.gpio_desc* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @FLAG_USED_AS_IRQ, align 4
  %14 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %15 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %14, i32 0, i32 0
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %12
  %23 = load i32, i32* @FLAG_IRQ_IS_ENABLED, align 4
  %24 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %25 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %24, i32 0, i32 0
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  br label %27

27:                                               ; preds = %22, %12, %2
  ret void
}

declare dso_local %struct.gpio_desc* @gpiochip_get_desc(%struct.gpio_chip*, i32) #1

declare dso_local i32 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
