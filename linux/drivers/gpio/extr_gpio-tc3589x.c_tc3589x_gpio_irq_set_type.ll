; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tc3589x.c_tc3589x_gpio_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tc3589x.c_tc3589x_gpio_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.tc3589x_gpio = type { i32** }

@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@REG_IBE = common dso_local global i64 0, align 8
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@REG_IS = common dso_local global i64 0, align 8
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@REG_IEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @tc3589x_gpio_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc3589x_gpio_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca %struct.tc3589x_gpio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %12 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %11)
  store %struct.gpio_chip* %12, %struct.gpio_chip** %6, align 8
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %14 = call %struct.tc3589x_gpio* @gpiochip_get_data(%struct.gpio_chip* %13)
  store %struct.tc3589x_gpio* %14, %struct.tc3589x_gpio** %7, align 8
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
  %24 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %2
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %7, align 8
  %29 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %28, i32 0, i32 0
  %30 = load i32**, i32*** %29, align 8
  %31 = load i64, i64* @REG_IBE, align 8
  %32 = getelementptr inbounds i32*, i32** %30, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %27
  store i32 %38, i32* %36, align 4
  store i32 0, i32* %3, align 4
  br label %123

39:                                               ; preds = %2
  %40 = load i32, i32* %10, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %7, align 8
  %43 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = load i64, i64* @REG_IBE, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %41
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %39
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %56, %39
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %7, align 8
  %63 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %62, i32 0, i32 0
  %64 = load i32**, i32*** %63, align 8
  %65 = load i64, i64* @REG_IS, align 8
  %66 = getelementptr inbounds i32*, i32** %64, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %61
  store i32 %72, i32* %70, align 4
  br label %87

73:                                               ; preds = %56
  %74 = load i32, i32* %10, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %7, align 8
  %77 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %76, i32 0, i32 0
  %78 = load i32**, i32*** %77, align 8
  %79 = load i64, i64* @REG_IS, align 8
  %80 = getelementptr inbounds i32*, i32** %78, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %75
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %73, %60
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %91, %87
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %7, align 8
  %98 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %97, i32 0, i32 0
  %99 = load i32**, i32*** %98, align 8
  %100 = load i64, i64* @REG_IEV, align 8
  %101 = getelementptr inbounds i32*, i32** %99, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %96
  store i32 %107, i32* %105, align 4
  br label %122

108:                                              ; preds = %91
  %109 = load i32, i32* %10, align 4
  %110 = xor i32 %109, -1
  %111 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %7, align 8
  %112 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %111, i32 0, i32 0
  %113 = load i32**, i32*** %112, align 8
  %114 = load i64, i64* @REG_IEV, align 8
  %115 = getelementptr inbounds i32*, i32** %113, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, %110
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %108, %95
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %26
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.tc3589x_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
