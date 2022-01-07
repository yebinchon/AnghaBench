; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dwapb.c_dwapb_irq_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dwapb.c_dwapb_irq_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwapb_gpio = type { i32*, %struct.dwapb_gpio_port* }
%struct.dwapb_gpio_port = type { %struct.gpio_chip }
%struct.gpio_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwapb_gpio*)* @dwapb_irq_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwapb_irq_teardown(%struct.dwapb_gpio* %0) #0 {
  %2 = alloca %struct.dwapb_gpio*, align 8
  %3 = alloca %struct.dwapb_gpio_port*, align 8
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dwapb_gpio* %0, %struct.dwapb_gpio** %2, align 8
  %7 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %2, align 8
  %8 = getelementptr inbounds %struct.dwapb_gpio, %struct.dwapb_gpio* %7, i32 0, i32 1
  %9 = load %struct.dwapb_gpio_port*, %struct.dwapb_gpio_port** %8, align 8
  %10 = getelementptr inbounds %struct.dwapb_gpio_port, %struct.dwapb_gpio_port* %9, i64 0
  store %struct.dwapb_gpio_port* %10, %struct.dwapb_gpio_port** %3, align 8
  %11 = load %struct.dwapb_gpio_port*, %struct.dwapb_gpio_port** %3, align 8
  %12 = getelementptr inbounds %struct.dwapb_gpio_port, %struct.dwapb_gpio_port* %11, i32 0, i32 0
  store %struct.gpio_chip* %12, %struct.gpio_chip** %4, align 8
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %14 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %2, align 8
  %17 = getelementptr inbounds %struct.dwapb_gpio, %struct.dwapb_gpio* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %43

21:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %33, %21
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %2, align 8
  %28 = getelementptr inbounds %struct.dwapb_gpio, %struct.dwapb_gpio* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @irq_find_mapping(i32* %29, i32 %30)
  %32 = call i32 @irq_dispose_mapping(i32 %31)
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %22

36:                                               ; preds = %22
  %37 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %2, align 8
  %38 = getelementptr inbounds %struct.dwapb_gpio, %struct.dwapb_gpio* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @irq_domain_remove(i32* %39)
  %41 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %2, align 8
  %42 = getelementptr inbounds %struct.dwapb_gpio, %struct.dwapb_gpio* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %36, %20
  ret void
}

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @irq_find_mapping(i32*, i32) #1

declare dso_local i32 @irq_domain_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
