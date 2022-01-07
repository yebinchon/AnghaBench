; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mxc.c_mxc_gpio_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mxc.c_mxc_gpio_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxc_gpio_port = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxc_gpio_port*, i32)* @mxc_gpio_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxc_gpio_irq_handler(%struct.mxc_gpio_port* %0, i32 %1) #0 {
  %3 = alloca %struct.mxc_gpio_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mxc_gpio_port* %0, %struct.mxc_gpio_port** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %24, %2
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @fls(i32 %10)
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %3, align 8
  %14 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %9
  %21 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @mxc_flip_edge(%struct.mxc_gpio_port* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %9
  %25 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %3, align 8
  %26 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @irq_find_mapping(i32 %27, i32 %28)
  %30 = call i32 @generic_handle_irq(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 1, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %6

36:                                               ; preds = %6
  ret void
}

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @mxc_flip_edge(%struct.mxc_gpio_port*, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
