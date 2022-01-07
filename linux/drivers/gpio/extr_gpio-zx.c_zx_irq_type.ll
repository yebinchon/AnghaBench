; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-zx.c_zx_irq_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-zx.c_zx_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.zx_gpio = type { i32, i64 }

@ZX_GPIO_NR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ZX_GPIO_IV = common dso_local global i64 0, align 8
@ZX_GPIO_IVE = common dso_local global i64 0, align 8
@ZX_GPIO_IEP = common dso_local global i64 0, align 8
@ZX_GPIO_IEN = common dso_local global i64 0, align 8
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @zx_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_irq_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca %struct.zx_gpio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %16 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %15)
  store %struct.gpio_chip* %16, %struct.gpio_chip** %6, align 8
  %17 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %18 = call %struct.zx_gpio* @gpiochip_get_data(%struct.gpio_chip* %17)
  store %struct.zx_gpio* %18, %struct.zx_gpio** %7, align 8
  %19 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %20 = call i32 @irqd_to_hwirq(%struct.irq_data* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @BIT(i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @ZX_GPIO_NR, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %164

32:                                               ; preds = %25
  %33 = load %struct.zx_gpio*, %struct.zx_gpio** %7, align 8
  %34 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %33, i32 0, i32 0
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @raw_spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.zx_gpio*, %struct.zx_gpio** %7, align 8
  %38 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ZX_GPIO_IV, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @readw_relaxed(i64 %41)
  store i32 %42, i32* %13, align 4
  %43 = load %struct.zx_gpio*, %struct.zx_gpio** %7, align 8
  %44 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ZX_GPIO_IVE, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @readw_relaxed(i64 %47)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.zx_gpio*, %struct.zx_gpio** %7, align 8
  %50 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ZX_GPIO_IEP, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @readw_relaxed(i64 %53)
  store i32 %54, i32* %11, align 4
  %55 = load %struct.zx_gpio*, %struct.zx_gpio** %7, align 8
  %56 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ZX_GPIO_IEN, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @readw_relaxed(i64 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %63 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %32
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %13, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %13, align 4
  br label %84

79:                                               ; preds = %67
  %80 = load i32, i32* %14, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %13, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %79, %75
  br label %90

85:                                               ; preds = %32
  %86 = load i32, i32* %14, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %10, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %85, %84
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %11, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %12, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %12, align 4
  br label %131

103:                                              ; preds = %90
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %103
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %11, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %14, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %12, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %12, align 4
  br label %130

116:                                              ; preds = %103
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %116
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %12, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %14, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %11, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %11, align 4
  br label %129

129:                                              ; preds = %121, %116
  br label %130

130:                                              ; preds = %129, %108
  br label %131

131:                                              ; preds = %130, %96
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.zx_gpio*, %struct.zx_gpio** %7, align 8
  %134 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @ZX_GPIO_IVE, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @writew_relaxed(i32 %132, i64 %137)
  %139 = load i32, i32* %11, align 4
  %140 = load %struct.zx_gpio*, %struct.zx_gpio** %7, align 8
  %141 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @ZX_GPIO_IEP, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @writew_relaxed(i32 %139, i64 %144)
  %146 = load i32, i32* %12, align 4
  %147 = load %struct.zx_gpio*, %struct.zx_gpio** %7, align 8
  %148 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @ZX_GPIO_IEN, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @writew_relaxed(i32 %146, i64 %151)
  %153 = load i32, i32* %13, align 4
  %154 = load %struct.zx_gpio*, %struct.zx_gpio** %7, align 8
  %155 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @ZX_GPIO_IV, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @writew_relaxed(i32 %153, i64 %158)
  %160 = load %struct.zx_gpio*, %struct.zx_gpio** %7, align 8
  %161 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %160, i32 0, i32 0
  %162 = load i64, i64* %9, align 8
  %163 = call i32 @raw_spin_unlock_irqrestore(i32* %161, i64 %162)
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %131, %29
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.zx_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readw_relaxed(i64) #1

declare dso_local i32 @writew_relaxed(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
