; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mxc.c_gpio_set_wake_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mxc.c_gpio_set_wake_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_chip_generic = type { %struct.mxc_gpio_port* }
%struct.mxc_gpio_port = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @gpio_set_wake_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_set_wake_irq(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_chip_generic*, align 8
  %6 = alloca %struct.mxc_gpio_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %10 = call %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  store %struct.irq_chip_generic* %10, %struct.irq_chip_generic** %5, align 8
  %11 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %5, align 8
  %12 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %11, i32 0, i32 0
  %13 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %12, align 8
  store %struct.mxc_gpio_port* %13, %struct.mxc_gpio_port** %6, align 8
  %14 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %15 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %2
  %20 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %6, align 8
  %21 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = icmp sge i32 %25, 16
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %6, align 8
  %29 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @enable_irq_wake(i64 %30)
  store i32 %31, i32* %8, align 4
  br label %37

32:                                               ; preds = %24, %19
  %33 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %6, align 8
  %34 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @enable_irq_wake(i64 %35)
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %32, %27
  br label %57

38:                                               ; preds = %2
  %39 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %6, align 8
  %40 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = icmp sge i32 %44, 16
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %6, align 8
  %48 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @disable_irq_wake(i64 %49)
  store i32 %50, i32* %8, align 4
  br label %56

51:                                               ; preds = %43, %38
  %52 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %6, align 8
  %53 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @disable_irq_wake(i64 %54)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %51, %46
  br label %57

57:                                               ; preds = %56, %37
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @enable_irq_wake(i64) #1

declare dso_local i32 @disable_irq_wake(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
