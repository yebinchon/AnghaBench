; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mm-lantiq.c_ltq_mm_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mm-lantiq.c_ltq_mm_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.ltq_mm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @ltq_mm_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ltq_mm_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ltq_mm*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = call %struct.ltq_mm* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.ltq_mm* %9, %struct.ltq_mm** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 1, %13
  %15 = load %struct.ltq_mm*, %struct.ltq_mm** %7, align 8
  %16 = getelementptr inbounds %struct.ltq_mm, %struct.ltq_mm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %27

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 1, %20
  %22 = xor i32 %21, -1
  %23 = load %struct.ltq_mm*, %struct.ltq_mm** %7, align 8
  %24 = getelementptr inbounds %struct.ltq_mm, %struct.ltq_mm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %19, %12
  %28 = load %struct.ltq_mm*, %struct.ltq_mm** %7, align 8
  %29 = call i32 @ltq_mm_apply(%struct.ltq_mm* %28)
  ret void
}

declare dso_local %struct.ltq_mm* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @ltq_mm_apply(%struct.ltq_mm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
