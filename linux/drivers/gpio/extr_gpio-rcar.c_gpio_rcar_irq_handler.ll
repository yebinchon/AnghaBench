; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rcar.c_gpio_rcar_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rcar.c_gpio_rcar_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_rcar_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@INTDT = common dso_local global i32 0, align 4
@INTMSK = common dso_local global i32 0, align 4
@INTCLR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gpio_rcar_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_rcar_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gpio_rcar_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.gpio_rcar_priv*
  store %struct.gpio_rcar_priv* %10, %struct.gpio_rcar_priv** %5, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %20, %2
  %12 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %5, align 8
  %13 = load i32, i32* @INTDT, align 4
  %14 = call i32 @gpio_rcar_read(%struct.gpio_rcar_priv* %12, i32 %13)
  %15 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %5, align 8
  %16 = load i32, i32* @INTMSK, align 4
  %17 = call i32 @gpio_rcar_read(%struct.gpio_rcar_priv* %15, i32 %16)
  %18 = and i32 %14, %17
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %11
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @__ffs(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %5, align 8
  %24 = load i32, i32* @INTCLR, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = call i32 @gpio_rcar_write(%struct.gpio_rcar_priv* %23, i32 %24, i32 %26)
  %28 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %5, align 8
  %29 = getelementptr inbounds %struct.gpio_rcar_priv, %struct.gpio_rcar_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @irq_find_mapping(i32 %32, i32 %33)
  %35 = call i32 @generic_handle_irq(i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %11

38:                                               ; preds = %11
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @IRQ_HANDLED, align 4
  br label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @IRQ_NONE, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  ret i32 %46
}

declare dso_local i32 @gpio_rcar_read(%struct.gpio_rcar_priv*, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @gpio_rcar_write(%struct.gpio_rcar_priv*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
