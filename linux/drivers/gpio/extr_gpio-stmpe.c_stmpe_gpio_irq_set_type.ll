; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-stmpe.c_stmpe_gpio_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-stmpe.c_stmpe_gpio_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.stmpe_gpio = type { i32**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@STMPE801 = common dso_local global i64 0, align 8
@STMPE1600 = common dso_local global i64 0, align 8
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@REG_RE = common dso_local global i64 0, align 8
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@REG_FE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @stmpe_gpio_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmpe_gpio_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca %struct.stmpe_gpio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %12 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %11)
  store %struct.gpio_chip* %12, %struct.gpio_chip** %6, align 8
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %14 = call %struct.stmpe_gpio* @gpiochip_get_data(%struct.gpio_chip* %13)
  store %struct.stmpe_gpio* %14, %struct.stmpe_gpio** %7, align 8
  %15 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %16 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sdiv i32 %18, 8
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = srem i32 %20, 8
  %22 = call i32 @BIT(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %117

35:                                               ; preds = %27
  %36 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %7, align 8
  %37 = getelementptr inbounds %struct.stmpe_gpio, %struct.stmpe_gpio* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @STMPE801, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %35
  %44 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %7, align 8
  %45 = getelementptr inbounds %struct.stmpe_gpio, %struct.stmpe_gpio* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @STMPE1600, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43, %35
  store i32 0, i32* %3, align 4
  br label %117

52:                                               ; preds = %43
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %7, align 8
  %60 = getelementptr inbounds %struct.stmpe_gpio, %struct.stmpe_gpio* %59, i32 0, i32 0
  %61 = load i32**, i32*** %60, align 8
  %62 = load i64, i64* @REG_RE, align 8
  %63 = getelementptr inbounds i32*, i32** %61, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %58
  store i32 %69, i32* %67, align 4
  br label %84

70:                                               ; preds = %52
  %71 = load i32, i32* %10, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %7, align 8
  %74 = getelementptr inbounds %struct.stmpe_gpio, %struct.stmpe_gpio* %73, i32 0, i32 0
  %75 = load i32**, i32*** %74, align 8
  %76 = load i64, i64* @REG_RE, align 8
  %77 = getelementptr inbounds i32*, i32** %75, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %72
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %70, %57
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %84
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %7, align 8
  %92 = getelementptr inbounds %struct.stmpe_gpio, %struct.stmpe_gpio* %91, i32 0, i32 0
  %93 = load i32**, i32*** %92, align 8
  %94 = load i64, i64* @REG_FE, align 8
  %95 = getelementptr inbounds i32*, i32** %93, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %90
  store i32 %101, i32* %99, align 4
  br label %116

102:                                              ; preds = %84
  %103 = load i32, i32* %10, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %7, align 8
  %106 = getelementptr inbounds %struct.stmpe_gpio, %struct.stmpe_gpio* %105, i32 0, i32 0
  %107 = load i32**, i32*** %106, align 8
  %108 = load i64, i64* @REG_FE, align 8
  %109 = getelementptr inbounds i32*, i32** %107, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, %104
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %102, %89
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %51, %32
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.stmpe_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
