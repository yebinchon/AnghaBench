; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-104-idio-16.c_idio_16_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-104-idio-16.c_idio_16_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.idio_16_gpio = type { i32, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@base = common dso_local global i64* null, align 8
@IDIO_16_EXTENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Unable to lock port addresses (0x%X-0x%X)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@IDIO_16_NGPIO = common dso_local global i32 0, align 4
@idio_16_names = common dso_local global i32 0, align 4
@idio_16_gpio_get_direction = common dso_local global i32 0, align 4
@idio_16_gpio_direction_input = common dso_local global i32 0, align 4
@idio_16_gpio_direction_output = common dso_local global i32 0, align 4
@idio_16_gpio_get = common dso_local global i32 0, align 4
@idio_16_gpio_get_multiple = common dso_local global i32 0, align 4
@idio_16_gpio_set = common dso_local global i32 0, align 4
@idio_16_gpio_set_multiple = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"GPIO registering failed (%d)\0A\00", align 1
@idio_16_irqchip = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Could not add irqchip (%d)\0A\00", align 1
@irq = common dso_local global i32* null, align 8
@idio_16_irq_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"IRQ handler registering failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @idio_16_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idio_16_probe(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.idio_16_gpio*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i8* @dev_name(%struct.device* %9)
  store i8* %10, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.idio_16_gpio* @devm_kzalloc(%struct.device* %11, i32 88, i32 %12)
  store %struct.idio_16_gpio* %13, %struct.idio_16_gpio** %6, align 8
  %14 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %6, align 8
  %15 = icmp ne %struct.idio_16_gpio* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %170

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load i64*, i64** @base, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IDIO_16_EXTENT, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @devm_request_region(%struct.device* %20, i64 %25, i64 %26, i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %19
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load i64*, i64** @base, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i64*, i64** @base, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IDIO_16_EXTENT, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %44)
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %170

48:                                               ; preds = %19
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %6, align 8
  %51 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i8* %49, i8** %52, align 8
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %6, align 8
  %55 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 12
  store %struct.device* %53, %struct.device** %56, align 8
  %57 = load i32, i32* @THIS_MODULE, align 4
  %58 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %6, align 8
  %59 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 11
  store i32 %57, i32* %60, align 8
  %61 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %6, align 8
  %62 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32 -1, i32* %63, align 8
  %64 = load i32, i32* @IDIO_16_NGPIO, align 4
  %65 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %6, align 8
  %66 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 10
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @idio_16_names, align 4
  %69 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %6, align 8
  %70 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 9
  store i32 %68, i32* %71, align 8
  %72 = load i32, i32* @idio_16_gpio_get_direction, align 4
  %73 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %6, align 8
  %74 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 8
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @idio_16_gpio_direction_input, align 4
  %77 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %6, align 8
  %78 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 7
  store i32 %76, i32* %79, align 8
  %80 = load i32, i32* @idio_16_gpio_direction_output, align 4
  %81 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %6, align 8
  %82 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 6
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @idio_16_gpio_get, align 4
  %85 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %6, align 8
  %86 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 5
  store i32 %84, i32* %87, align 8
  %88 = load i32, i32* @idio_16_gpio_get_multiple, align 4
  %89 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %6, align 8
  %90 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 4
  store i32 %88, i32* %91, align 4
  %92 = load i32, i32* @idio_16_gpio_set, align 4
  %93 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %6, align 8
  %94 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  store i32 %92, i32* %95, align 8
  %96 = load i32, i32* @idio_16_gpio_set_multiple, align 4
  %97 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %6, align 8
  %98 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 4
  %100 = load i64*, i64** @base, align 8
  %101 = load i32, i32* %5, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %6, align 8
  %106 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %105, i32 0, i32 3
  store i64 %104, i64* %106, align 8
  %107 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %6, align 8
  %108 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %107, i32 0, i32 0
  store i32 65535, i32* %108, align 8
  %109 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %6, align 8
  %110 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %109, i32 0, i32 2
  %111 = call i32 @raw_spin_lock_init(i32* %110)
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %6, align 8
  %114 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %113, i32 0, i32 1
  %115 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %6, align 8
  %116 = call i32 @devm_gpiochip_add_data(%struct.device* %112, %struct.TYPE_3__* %114, %struct.idio_16_gpio* %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %48
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = load i32, i32* %8, align 4
  %122 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %120, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %3, align 4
  br label %170

124:                                              ; preds = %48
  %125 = load i64*, i64** @base, align 8
  %126 = load i32, i32* %5, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 2
  %131 = call i32 @outb(i32 0, i64 %130)
  %132 = load i64*, i64** @base, align 8
  %133 = load i32, i32* %5, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, 1
  %138 = call i32 @outb(i32 0, i64 %137)
  %139 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %6, align 8
  %140 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %139, i32 0, i32 1
  %141 = load i32, i32* @handle_edge_irq, align 4
  %142 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %143 = call i32 @gpiochip_irqchip_add(%struct.TYPE_3__* %140, i32* @idio_16_irqchip, i32 0, i32 %141, i32 %142)
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %124
  %147 = load %struct.device*, %struct.device** %4, align 8
  %148 = load i32, i32* %8, align 4
  %149 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %147, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %8, align 4
  store i32 %150, i32* %3, align 4
  br label %170

151:                                              ; preds = %124
  %152 = load %struct.device*, %struct.device** %4, align 8
  %153 = load i32*, i32** @irq, align 8
  %154 = load i32, i32* %5, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @idio_16_irq_handler, align 4
  %159 = load i8*, i8** %7, align 8
  %160 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %6, align 8
  %161 = call i32 @devm_request_irq(%struct.device* %152, i32 %157, i32 %158, i32 0, i8* %159, %struct.idio_16_gpio* %160)
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %151
  %165 = load %struct.device*, %struct.device** %4, align 8
  %166 = load i32, i32* %8, align 4
  %167 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %165, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* %8, align 4
  store i32 %168, i32* %3, align 4
  br label %170

169:                                              ; preds = %151
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %169, %164, %146, %119, %30, %16
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local %struct.idio_16_gpio* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_request_region(%struct.device*, i64, i64, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.TYPE_3__*, %struct.idio_16_gpio*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @gpiochip_irqchip_add(%struct.TYPE_3__*, i32*, i32, i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.idio_16_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
