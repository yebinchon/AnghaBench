; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pl061.c_pl061_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pl061.c_pl061_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { i32*, %struct.device, i32 }
%struct.device = type { i32 }
%struct.amba_id = type { i32 }
%struct.pl061 = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_4__ = type { i32, %struct.gpio_irq_chip, i32, %struct.device*, i8*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gpio_irq_chip = type { i32, i32*, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"gpio-ranges\00", align 1
@gpiochip_generic_request = common dso_local global i32 0, align 4
@gpiochip_generic_free = common dso_local global i32 0, align 4
@pl061_get_direction = common dso_local global i32 0, align 4
@pl061_direction_input = common dso_local global i32 0, align 4
@pl061_direction_output = common dso_local global i32 0, align 4
@pl061_get_value = common dso_local global i32 0, align 4
@pl061_set_value = common dso_local global i32 0, align 4
@PL061_GPIO_NR = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@pl061_irq_ack = common dso_local global i32 0, align 4
@pl061_irq_mask = common dso_local global i32 0, align 4
@pl061_irq_unmask = common dso_local global i32 0, align 4
@pl061_irq_type = common dso_local global i32 0, align 4
@pl061_irq_set_wake = common dso_local global i32 0, align 4
@GPIOIE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"invalid IRQ\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@pl061_irq_handler = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@handle_bad_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"PL061 GPIO chip registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*, %struct.amba_id*)* @pl061_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl061_probe(%struct.amba_device* %0, %struct.amba_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amba_device*, align 8
  %5 = alloca %struct.amba_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.pl061*, align 8
  %8 = alloca %struct.gpio_irq_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amba_device* %0, %struct.amba_device** %4, align 8
  store %struct.amba_id* %1, %struct.amba_id** %5, align 8
  %11 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %12 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.pl061* @devm_kzalloc(%struct.device* %13, i32 160, i32 %14)
  store %struct.pl061* %15, %struct.pl061** %7, align 8
  %16 = load %struct.pl061*, %struct.pl061** %7, align 8
  %17 = icmp eq %struct.pl061* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %196

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %24 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %23, i32 0, i32 2
  %25 = call i64 @devm_ioremap_resource(%struct.device* %22, i32* %24)
  %26 = load %struct.pl061*, %struct.pl061** %7, align 8
  %27 = getelementptr inbounds %struct.pl061, %struct.pl061* %26, i32 0, i32 3
  store i64 %25, i64* %27, align 8
  %28 = load %struct.pl061*, %struct.pl061** %7, align 8
  %29 = getelementptr inbounds %struct.pl061, %struct.pl061* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @IS_ERR(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load %struct.pl061*, %struct.pl061** %7, align 8
  %35 = getelementptr inbounds %struct.pl061, %struct.pl061* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @PTR_ERR(i64 %36)
  store i32 %37, i32* %3, align 4
  br label %196

38:                                               ; preds = %21
  %39 = load %struct.pl061*, %struct.pl061** %7, align 8
  %40 = getelementptr inbounds %struct.pl061, %struct.pl061* %39, i32 0, i32 4
  %41 = call i32 @raw_spin_lock_init(i32* %40)
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = getelementptr inbounds %struct.device, %struct.device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @of_property_read_bool(i32 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %38
  %48 = load i32, i32* @gpiochip_generic_request, align 4
  %49 = load %struct.pl061*, %struct.pl061** %7, align 8
  %50 = getelementptr inbounds %struct.pl061, %struct.pl061* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 12
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @gpiochip_generic_free, align 4
  %53 = load %struct.pl061*, %struct.pl061** %7, align 8
  %54 = getelementptr inbounds %struct.pl061, %struct.pl061* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 11
  store i32 %52, i32* %55, align 8
  br label %56

56:                                               ; preds = %47, %38
  %57 = load %struct.pl061*, %struct.pl061** %7, align 8
  %58 = getelementptr inbounds %struct.pl061, %struct.pl061* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 -1, i32* %59, align 8
  %60 = load i32, i32* @pl061_get_direction, align 4
  %61 = load %struct.pl061*, %struct.pl061** %7, align 8
  %62 = getelementptr inbounds %struct.pl061, %struct.pl061* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 10
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @pl061_direction_input, align 4
  %65 = load %struct.pl061*, %struct.pl061** %7, align 8
  %66 = getelementptr inbounds %struct.pl061, %struct.pl061* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 9
  store i32 %64, i32* %67, align 8
  %68 = load i32, i32* @pl061_direction_output, align 4
  %69 = load %struct.pl061*, %struct.pl061** %7, align 8
  %70 = getelementptr inbounds %struct.pl061, %struct.pl061* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 8
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @pl061_get_value, align 4
  %73 = load %struct.pl061*, %struct.pl061** %7, align 8
  %74 = getelementptr inbounds %struct.pl061, %struct.pl061* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 7
  store i32 %72, i32* %75, align 8
  %76 = load i32, i32* @pl061_set_value, align 4
  %77 = load %struct.pl061*, %struct.pl061** %7, align 8
  %78 = getelementptr inbounds %struct.pl061, %struct.pl061* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 6
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @PL061_GPIO_NR, align 4
  %81 = load %struct.pl061*, %struct.pl061** %7, align 8
  %82 = getelementptr inbounds %struct.pl061, %struct.pl061* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 5
  store i32 %80, i32* %83, align 8
  %84 = load %struct.device*, %struct.device** %6, align 8
  %85 = call i8* @dev_name(%struct.device* %84)
  %86 = load %struct.pl061*, %struct.pl061** %7, align 8
  %87 = getelementptr inbounds %struct.pl061, %struct.pl061* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 4
  store i8* %85, i8** %88, align 8
  %89 = load %struct.device*, %struct.device** %6, align 8
  %90 = load %struct.pl061*, %struct.pl061** %7, align 8
  %91 = getelementptr inbounds %struct.pl061, %struct.pl061* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  store %struct.device* %89, %struct.device** %92, align 8
  %93 = load i32, i32* @THIS_MODULE, align 4
  %94 = load %struct.pl061*, %struct.pl061** %7, align 8
  %95 = getelementptr inbounds %struct.pl061, %struct.pl061* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  store i32 %93, i32* %96, align 8
  %97 = load %struct.device*, %struct.device** %6, align 8
  %98 = call i8* @dev_name(%struct.device* %97)
  %99 = load %struct.pl061*, %struct.pl061** %7, align 8
  %100 = getelementptr inbounds %struct.pl061, %struct.pl061* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 5
  store i8* %98, i8** %101, align 8
  %102 = load i32, i32* @pl061_irq_ack, align 4
  %103 = load %struct.pl061*, %struct.pl061** %7, align 8
  %104 = getelementptr inbounds %struct.pl061, %struct.pl061* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 4
  store i32 %102, i32* %105, align 8
  %106 = load i32, i32* @pl061_irq_mask, align 4
  %107 = load %struct.pl061*, %struct.pl061** %7, align 8
  %108 = getelementptr inbounds %struct.pl061, %struct.pl061* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  store i32 %106, i32* %109, align 4
  %110 = load i32, i32* @pl061_irq_unmask, align 4
  %111 = load %struct.pl061*, %struct.pl061** %7, align 8
  %112 = getelementptr inbounds %struct.pl061, %struct.pl061* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  store i32 %110, i32* %113, align 8
  %114 = load i32, i32* @pl061_irq_type, align 4
  %115 = load %struct.pl061*, %struct.pl061** %7, align 8
  %116 = getelementptr inbounds %struct.pl061, %struct.pl061* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 4
  %118 = load i32, i32* @pl061_irq_set_wake, align 4
  %119 = load %struct.pl061*, %struct.pl061** %7, align 8
  %120 = getelementptr inbounds %struct.pl061, %struct.pl061* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  %122 = load %struct.pl061*, %struct.pl061** %7, align 8
  %123 = getelementptr inbounds %struct.pl061, %struct.pl061* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @GPIOIE, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @writeb(i32 0, i64 %126)
  %128 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %129 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %56
  %136 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %137 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %136, i32 0, i32 1
  %138 = call i32 @dev_err(%struct.device* %137, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %139 = load i32, i32* @ENODEV, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %3, align 4
  br label %196

141:                                              ; preds = %56
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.pl061*, %struct.pl061** %7, align 8
  %144 = getelementptr inbounds %struct.pl061, %struct.pl061* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.pl061*, %struct.pl061** %7, align 8
  %146 = getelementptr inbounds %struct.pl061, %struct.pl061* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  store %struct.gpio_irq_chip* %147, %struct.gpio_irq_chip** %8, align 8
  %148 = load %struct.pl061*, %struct.pl061** %7, align 8
  %149 = getelementptr inbounds %struct.pl061, %struct.pl061* %148, i32 0, i32 2
  %150 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %151 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %150, i32 0, i32 5
  store %struct.TYPE_3__* %149, %struct.TYPE_3__** %151, align 8
  %152 = load i32, i32* @pl061_irq_handler, align 4
  %153 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %154 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %153, i32 0, i32 4
  store i32 %152, i32* %154, align 8
  %155 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %156 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %155, i32 0, i32 0
  store i32 1, i32* %156, align 8
  %157 = load %struct.device*, %struct.device** %6, align 8
  %158 = load i32, i32* @GFP_KERNEL, align 4
  %159 = call i32* @devm_kcalloc(%struct.device* %157, i32 1, i32 4, i32 %158)
  %160 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %161 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %160, i32 0, i32 1
  store i32* %159, i32** %161, align 8
  %162 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %163 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %141
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %3, align 4
  br label %196

169:                                              ; preds = %141
  %170 = load i32, i32* %10, align 4
  %171 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %172 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  store i32 %170, i32* %174, align 4
  %175 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %176 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %177 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* @handle_bad_irq, align 4
  %179 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %8, align 8
  %180 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  %181 = load %struct.device*, %struct.device** %6, align 8
  %182 = load %struct.pl061*, %struct.pl061** %7, align 8
  %183 = getelementptr inbounds %struct.pl061, %struct.pl061* %182, i32 0, i32 1
  %184 = load %struct.pl061*, %struct.pl061** %7, align 8
  %185 = call i32 @devm_gpiochip_add_data(%struct.device* %181, %struct.TYPE_4__* %183, %struct.pl061* %184)
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %169
  %189 = load i32, i32* %9, align 4
  store i32 %189, i32* %3, align 4
  br label %196

190:                                              ; preds = %169
  %191 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %192 = load %struct.pl061*, %struct.pl061** %7, align 8
  %193 = call i32 @amba_set_drvdata(%struct.amba_device* %191, %struct.pl061* %192)
  %194 = load %struct.device*, %struct.device** %6, align 8
  %195 = call i32 @dev_info(%struct.device* %194, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %196

196:                                              ; preds = %190, %188, %166, %135, %33, %18
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local %struct.pl061* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.TYPE_4__*, %struct.pl061*) #1

declare dso_local i32 @amba_set_drvdata(%struct.amba_device*, %struct.pl061*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
