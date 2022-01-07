; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-uniphier.c_uniphier_gpio_irq_get_parent_hwirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-uniphier.c_uniphier_gpio_irq_get_parent_hwirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_gpio_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"socionext,interrupt-ranges\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uniphier_gpio_priv*, i32)* @uniphier_gpio_irq_get_parent_hwirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_gpio_irq_get_parent_hwirq(%struct.uniphier_gpio_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uniphier_gpio_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uniphier_gpio_priv* %0, %struct.uniphier_gpio_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.uniphier_gpio_priv*, %struct.uniphier_gpio_priv** %4, align 8
  %13 = getelementptr inbounds %struct.uniphier_gpio_priv, %struct.uniphier_gpio_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %6, align 8
  %18 = load %struct.device_node*, %struct.device_node** %6, align 8
  %19 = call i32* @of_get_property(%struct.device_node* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %11)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %68

25:                                               ; preds = %2
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = udiv i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %62, %25
  %31 = load i32, i32* %11, align 4
  %32 = icmp sge i32 %31, 3
  br i1 %32, label %33, label %65

33:                                               ; preds = %30
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %7, align 8
  %36 = load i32, i32* %34, align 4
  %37 = call i32 @be32_to_cpu(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %7, align 8
  %40 = load i32, i32* %38, align 4
  %41 = call i32 @be32_to_cpu(i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %7, align 8
  %44 = load i32, i32* %42, align 4
  %45 = call i32 @be32_to_cpu(i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ule i32 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %33
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %10, align 4
  %53 = add i32 %51, %52
  %54 = icmp ult i32 %50, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %8, align 4
  %58 = sub i32 %56, %57
  %59 = load i32, i32* %9, align 4
  %60 = add i32 %58, %59
  store i32 %60, i32* %3, align 4
  br label %68

61:                                               ; preds = %49, %33
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %11, align 4
  %64 = sub nsw i32 %63, 3
  store i32 %64, i32* %11, align 4
  br label %30

65:                                               ; preds = %30
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %55, %22
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
