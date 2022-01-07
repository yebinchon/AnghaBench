; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ep93xx.c_ep93xx_gpio_irq_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ep93xx.c_ep93xx_gpio_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 (%struct.gpio_chip*, i32)*, i32 (%struct.gpio_chip*, i32)* }
%struct.ep93xx_gpio = type { i32 }

@gpio_int_type1 = common dso_local global i32* null, align 8
@gpio_int_type2 = common dso_local global i32* null, align 8
@handle_edge_irq = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@gpio_int_enabled = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @ep93xx_gpio_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_gpio_irq_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca %struct.ep93xx_gpio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %13 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %12)
  store %struct.gpio_chip* %13, %struct.gpio_chip** %6, align 8
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %15 = call %struct.ep93xx_gpio* @gpiochip_get_data(%struct.gpio_chip* %14)
  store %struct.ep93xx_gpio* %15, %struct.ep93xx_gpio** %7, align 8
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %17 = call i32 @ep93xx_gpio_port(%struct.gpio_chip* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %19 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 7
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @BIT(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %25 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %24, i32 0, i32 1
  %26 = load i32 (%struct.gpio_chip*, i32)*, i32 (%struct.gpio_chip*, i32)** %25, align 8
  %27 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 %26(%struct.gpio_chip* %27, i32 %28)
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %133 [
    i32 130, label %31
    i32 131, label %47
    i32 129, label %64
    i32 128, label %81
    i32 132, label %99
  ]

31:                                               ; preds = %2
  %32 = load i32, i32* %10, align 4
  %33 = load i32*, i32** @gpio_int_type1, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %32
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32*, i32** @gpio_int_type2, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %39
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @handle_edge_irq, align 4
  store i32 %46, i32* %11, align 4
  br label %136

47:                                               ; preds = %2
  %48 = load i32, i32* %10, align 4
  %49 = load i32*, i32** @gpio_int_type1, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %48
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %10, align 4
  %56 = xor i32 %55, -1
  %57 = load i32*, i32** @gpio_int_type2, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %56
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @handle_edge_irq, align 4
  store i32 %63, i32* %11, align 4
  br label %136

64:                                               ; preds = %2
  %65 = load i32, i32* %10, align 4
  %66 = xor i32 %65, -1
  %67 = load i32*, i32** @gpio_int_type1, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %66
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32*, i32** @gpio_int_type2, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %73
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* @handle_level_irq, align 4
  store i32 %80, i32* %11, align 4
  br label %136

81:                                               ; preds = %2
  %82 = load i32, i32* %10, align 4
  %83 = xor i32 %82, -1
  %84 = load i32*, i32** @gpio_int_type1, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %83
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* %10, align 4
  %91 = xor i32 %90, -1
  %92 = load i32*, i32** @gpio_int_type2, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %91
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* @handle_level_irq, align 4
  store i32 %98, i32* %11, align 4
  br label %136

99:                                               ; preds = %2
  %100 = load i32, i32* %10, align 4
  %101 = load i32*, i32** @gpio_int_type1, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %100
  store i32 %106, i32* %104, align 4
  %107 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %108 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %107, i32 0, i32 0
  %109 = load i32 (%struct.gpio_chip*, i32)*, i32 (%struct.gpio_chip*, i32)** %108, align 8
  %110 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 %109(%struct.gpio_chip* %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %99
  %115 = load i32, i32* %10, align 4
  %116 = xor i32 %115, -1
  %117 = load i32*, i32** @gpio_int_type2, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, %116
  store i32 %122, i32* %120, align 4
  br label %131

123:                                              ; preds = %99
  %124 = load i32, i32* %10, align 4
  %125 = load i32*, i32** @gpio_int_type2, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %124
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %123, %114
  %132 = load i32, i32* @handle_edge_irq, align 4
  store i32 %132, i32* %11, align 4
  br label %136

133:                                              ; preds = %2
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %150

136:                                              ; preds = %131, %81, %64, %47, %31
  %137 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @irq_set_handler_locked(%struct.irq_data* %137, i32 %138)
  %140 = load i32, i32* %10, align 4
  %141 = load i32*, i32** @gpio_int_enabled, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %140
  store i32 %146, i32* %144, align 4
  %147 = load %struct.ep93xx_gpio*, %struct.ep93xx_gpio** %7, align 8
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @ep93xx_gpio_update_int_params(%struct.ep93xx_gpio* %147, i32 %148)
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %136, %133
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.ep93xx_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @ep93xx_gpio_port(%struct.gpio_chip*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @irq_set_handler_locked(%struct.irq_data*, i32) #1

declare dso_local i32 @ep93xx_gpio_update_int_params(%struct.ep93xx_gpio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
