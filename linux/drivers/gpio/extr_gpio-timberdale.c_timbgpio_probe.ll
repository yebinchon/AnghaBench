; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-timberdale.c_timbgpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-timberdale.c_timbgpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.gpio_chip = type { i32, i32, i32, i32*, i32*, i32, i32, i32, i32, %struct.device*, i32, i32 }
%struct.timbgpio = type { i64, i64, %struct.gpio_chip, i32 }
%struct.timbgpio_platform_data = type { i32, i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Invalid platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@timbgpio_gpio_direction_input = common dso_local global i32 0, align 4
@timbgpio_gpio_get = common dso_local global i32 0, align 4
@timbgpio_gpio_direction_output = common dso_local global i32 0, align 4
@timbgpio_gpio_set = common dso_local global i32 0, align 4
@timbgpio_to_irq = common dso_local global i32* null, align 8
@TGPIO_IER = common dso_local global i64 0, align 8
@timbgpio_irqchip = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@IRQ_NOREQUEST = common dso_local global i32 0, align 4
@IRQ_NOPROBE = common dso_local global i32 0, align 4
@timbgpio_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @timbgpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timbgpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.gpio_chip*, align 8
  %8 = alloca %struct.timbgpio*, align 8
  %9 = alloca %struct.timbgpio_platform_data*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call %struct.timbgpio_platform_data* @dev_get_platdata(%struct.device* %14)
  store %struct.timbgpio_platform_data* %15, %struct.timbgpio_platform_data** %9, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = call i32 @platform_get_irq(%struct.platform_device* %16, i32 0)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.timbgpio_platform_data*, %struct.timbgpio_platform_data** %9, align 8
  %19 = icmp ne %struct.timbgpio_platform_data* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.timbgpio_platform_data*, %struct.timbgpio_platform_data** %9, align 8
  %22 = getelementptr inbounds %struct.timbgpio_platform_data, %struct.timbgpio_platform_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 32
  br i1 %24, label %25, label %30

25:                                               ; preds = %20, %1
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %186

30:                                               ; preds = %20
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.timbgpio* @devm_kzalloc(%struct.device* %31, i32 88, i32 %32)
  store %struct.timbgpio* %33, %struct.timbgpio** %8, align 8
  %34 = load %struct.timbgpio*, %struct.timbgpio** %8, align 8
  %35 = icmp ne %struct.timbgpio* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %186

39:                                               ; preds = %30
  %40 = load %struct.timbgpio_platform_data*, %struct.timbgpio_platform_data** %9, align 8
  %41 = getelementptr inbounds %struct.timbgpio_platform_data, %struct.timbgpio_platform_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.timbgpio*, %struct.timbgpio** %8, align 8
  %44 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.timbgpio*, %struct.timbgpio** %8, align 8
  %46 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %45, i32 0, i32 3
  %47 = call i32 @spin_lock_init(i32* %46)
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %48, i32 0)
  %50 = load %struct.timbgpio*, %struct.timbgpio** %8, align 8
  %51 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.timbgpio*, %struct.timbgpio** %8, align 8
  %53 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @IS_ERR(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %39
  %58 = load %struct.timbgpio*, %struct.timbgpio** %8, align 8
  %59 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @PTR_ERR(i64 %60)
  store i32 %61, i32* %2, align 4
  br label %186

62:                                               ; preds = %39
  %63 = load %struct.timbgpio*, %struct.timbgpio** %8, align 8
  %64 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %63, i32 0, i32 2
  store %struct.gpio_chip* %64, %struct.gpio_chip** %7, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = call i32 @dev_name(%struct.device* %66)
  %68 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %69 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %68, i32 0, i32 11
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @THIS_MODULE, align 4
  %71 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %72 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %71, i32 0, i32 10
  store i32 %70, i32* %72, align 8
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %76 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %75, i32 0, i32 9
  store %struct.device* %74, %struct.device** %76, align 8
  %77 = load i32, i32* @timbgpio_gpio_direction_input, align 4
  %78 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %79 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %78, i32 0, i32 8
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @timbgpio_gpio_get, align 4
  %81 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %82 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @timbgpio_gpio_direction_output, align 4
  %84 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %85 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @timbgpio_gpio_set, align 4
  %87 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %88 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %10, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %62
  %92 = load %struct.timbgpio*, %struct.timbgpio** %8, align 8
  %93 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32*, i32** @timbgpio_to_irq, align 8
  br label %99

98:                                               ; preds = %91, %62
  br label %99

99:                                               ; preds = %98, %96
  %100 = phi i32* [ %97, %96 ], [ null, %98 ]
  %101 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %102 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %101, i32 0, i32 4
  store i32* %100, i32** %102, align 8
  %103 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %104 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %103, i32 0, i32 3
  store i32* null, i32** %104, align 8
  %105 = load %struct.timbgpio_platform_data*, %struct.timbgpio_platform_data** %9, align 8
  %106 = getelementptr inbounds %struct.timbgpio_platform_data, %struct.timbgpio_platform_data* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %109 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load %struct.timbgpio_platform_data*, %struct.timbgpio_platform_data** %9, align 8
  %111 = getelementptr inbounds %struct.timbgpio_platform_data, %struct.timbgpio_platform_data* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %114 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %116 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %115, i32 0, i32 1
  store i32 0, i32* %116, align 4
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %120 = load %struct.timbgpio*, %struct.timbgpio** %8, align 8
  %121 = call i32 @devm_gpiochip_add_data(%struct.device* %118, %struct.gpio_chip* %119, %struct.timbgpio* %120)
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %99
  %125 = load i32, i32* %4, align 4
  store i32 %125, i32* %2, align 4
  br label %186

126:                                              ; preds = %99
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = load %struct.timbgpio*, %struct.timbgpio** %8, align 8
  %129 = call i32 @platform_set_drvdata(%struct.platform_device* %127, %struct.timbgpio* %128)
  %130 = load %struct.timbgpio*, %struct.timbgpio** %8, align 8
  %131 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @TGPIO_IER, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @iowrite32(i32 0, i64 %134)
  %136 = load i32, i32* %10, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %126
  %139 = load %struct.timbgpio*, %struct.timbgpio** %8, align 8
  %140 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp sle i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138, %126
  store i32 0, i32* %2, align 4
  br label %186

144:                                              ; preds = %138
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %178, %144
  %146 = load i32, i32* %5, align 4
  %147 = load %struct.timbgpio_platform_data*, %struct.timbgpio_platform_data** %9, align 8
  %148 = getelementptr inbounds %struct.timbgpio_platform_data, %struct.timbgpio_platform_data* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %151, label %181

151:                                              ; preds = %145
  %152 = load %struct.timbgpio*, %struct.timbgpio** %8, align 8
  %153 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %154, %156
  %158 = load i32, i32* @handle_simple_irq, align 4
  %159 = call i32 @irq_set_chip_and_handler(i64 %157, i32* @timbgpio_irqchip, i32 %158)
  %160 = load %struct.timbgpio*, %struct.timbgpio** %8, align 8
  %161 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %162, %164
  %166 = load %struct.timbgpio*, %struct.timbgpio** %8, align 8
  %167 = call i32 @irq_set_chip_data(i64 %165, %struct.timbgpio* %166)
  %168 = load %struct.timbgpio*, %struct.timbgpio** %8, align 8
  %169 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i32, i32* %5, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %170, %172
  %174 = load i32, i32* @IRQ_NOREQUEST, align 4
  %175 = load i32, i32* @IRQ_NOPROBE, align 4
  %176 = or i32 %174, %175
  %177 = call i32 @irq_clear_status_flags(i64 %173, i32 %176)
  br label %178

178:                                              ; preds = %151
  %179 = load i32, i32* %5, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %5, align 4
  br label %145

181:                                              ; preds = %145
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* @timbgpio_irq, align 4
  %184 = load %struct.timbgpio*, %struct.timbgpio** %8, align 8
  %185 = call i32 @irq_set_chained_handler_and_data(i32 %182, i32 %183, %struct.timbgpio* %184)
  store i32 0, i32* %2, align 4
  br label %186

186:                                              ; preds = %181, %143, %124, %57, %36, %25
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local %struct.timbgpio_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.timbgpio* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.gpio_chip*, %struct.timbgpio*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.timbgpio*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @irq_set_chip_and_handler(i64, i32*, i32) #1

declare dso_local i32 @irq_set_chip_data(i64, %struct.timbgpio*) #1

declare dso_local i32 @irq_clear_status_flags(i64, i32) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.timbgpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
