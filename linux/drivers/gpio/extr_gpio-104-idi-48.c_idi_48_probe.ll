; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-104-idi-48.c_idi_48_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-104-idi-48.c_idi_48_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.idi_48_gpio = type { %struct.TYPE_3__, i32, i32, i64 }
%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@base = common dso_local global i64* null, align 8
@IDI_48_EXTENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Unable to lock port addresses (0x%X-0x%X)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@IDI48_NGPIO = common dso_local global i32 0, align 4
@idi48_names = common dso_local global i32 0, align 4
@idi_48_gpio_get_direction = common dso_local global i32 0, align 4
@idi_48_gpio_direction_input = common dso_local global i32 0, align 4
@idi_48_gpio_get = common dso_local global i32 0, align 4
@idi_48_gpio_get_multiple = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"GPIO registering failed (%d)\0A\00", align 1
@idi_48_irqchip = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Could not add irqchip (%d)\0A\00", align 1
@irq = common dso_local global i32* null, align 8
@idi_48_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"IRQ handler registering failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @idi_48_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idi_48_probe(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.idi_48_gpio*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i8* @dev_name(%struct.device* %9)
  store i8* %10, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.idi_48_gpio* @devm_kzalloc(%struct.device* %11, i32 64, i32 %12)
  store %struct.idi_48_gpio* %13, %struct.idi_48_gpio** %6, align 8
  %14 = load %struct.idi_48_gpio*, %struct.idi_48_gpio** %6, align 8
  %15 = icmp ne %struct.idi_48_gpio* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %160

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load i64*, i64** @base, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IDI_48_EXTENT, align 8
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
  %43 = load i64, i64* @IDI_48_EXTENT, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %44)
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %160

48:                                               ; preds = %19
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct.idi_48_gpio*, %struct.idi_48_gpio** %6, align 8
  %51 = getelementptr inbounds %struct.idi_48_gpio, %struct.idi_48_gpio* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i8* %49, i8** %52, align 8
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load %struct.idi_48_gpio*, %struct.idi_48_gpio** %6, align 8
  %55 = getelementptr inbounds %struct.idi_48_gpio, %struct.idi_48_gpio* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 9
  store %struct.device* %53, %struct.device** %56, align 8
  %57 = load i32, i32* @THIS_MODULE, align 4
  %58 = load %struct.idi_48_gpio*, %struct.idi_48_gpio** %6, align 8
  %59 = getelementptr inbounds %struct.idi_48_gpio, %struct.idi_48_gpio* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 8
  store i32 %57, i32* %60, align 4
  %61 = load %struct.idi_48_gpio*, %struct.idi_48_gpio** %6, align 8
  %62 = getelementptr inbounds %struct.idi_48_gpio, %struct.idi_48_gpio* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32 -1, i32* %63, align 8
  %64 = load i32, i32* @IDI48_NGPIO, align 4
  %65 = load %struct.idi_48_gpio*, %struct.idi_48_gpio** %6, align 8
  %66 = getelementptr inbounds %struct.idi_48_gpio, %struct.idi_48_gpio* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 7
  store i32 %64, i32* %67, align 8
  %68 = load i32, i32* @idi48_names, align 4
  %69 = load %struct.idi_48_gpio*, %struct.idi_48_gpio** %6, align 8
  %70 = getelementptr inbounds %struct.idi_48_gpio, %struct.idi_48_gpio* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 6
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @idi_48_gpio_get_direction, align 4
  %73 = load %struct.idi_48_gpio*, %struct.idi_48_gpio** %6, align 8
  %74 = getelementptr inbounds %struct.idi_48_gpio, %struct.idi_48_gpio* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 5
  store i32 %72, i32* %75, align 8
  %76 = load i32, i32* @idi_48_gpio_direction_input, align 4
  %77 = load %struct.idi_48_gpio*, %struct.idi_48_gpio** %6, align 8
  %78 = getelementptr inbounds %struct.idi_48_gpio, %struct.idi_48_gpio* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 4
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @idi_48_gpio_get, align 4
  %81 = load %struct.idi_48_gpio*, %struct.idi_48_gpio** %6, align 8
  %82 = getelementptr inbounds %struct.idi_48_gpio, %struct.idi_48_gpio* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  store i32 %80, i32* %83, align 8
  %84 = load i32, i32* @idi_48_gpio_get_multiple, align 4
  %85 = load %struct.idi_48_gpio*, %struct.idi_48_gpio** %6, align 8
  %86 = getelementptr inbounds %struct.idi_48_gpio, %struct.idi_48_gpio* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 4
  %88 = load i64*, i64** @base, align 8
  %89 = load i32, i32* %5, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.idi_48_gpio*, %struct.idi_48_gpio** %6, align 8
  %94 = getelementptr inbounds %struct.idi_48_gpio, %struct.idi_48_gpio* %93, i32 0, i32 3
  store i64 %92, i64* %94, align 8
  %95 = load %struct.idi_48_gpio*, %struct.idi_48_gpio** %6, align 8
  %96 = getelementptr inbounds %struct.idi_48_gpio, %struct.idi_48_gpio* %95, i32 0, i32 2
  %97 = call i32 @raw_spin_lock_init(i32* %96)
  %98 = load %struct.idi_48_gpio*, %struct.idi_48_gpio** %6, align 8
  %99 = getelementptr inbounds %struct.idi_48_gpio, %struct.idi_48_gpio* %98, i32 0, i32 1
  %100 = call i32 @spin_lock_init(i32* %99)
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = load %struct.idi_48_gpio*, %struct.idi_48_gpio** %6, align 8
  %103 = getelementptr inbounds %struct.idi_48_gpio, %struct.idi_48_gpio* %102, i32 0, i32 0
  %104 = load %struct.idi_48_gpio*, %struct.idi_48_gpio** %6, align 8
  %105 = call i32 @devm_gpiochip_add_data(%struct.device* %101, %struct.TYPE_3__* %103, %struct.idi_48_gpio* %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %48
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %109, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %3, align 4
  br label %160

113:                                              ; preds = %48
  %114 = load i64*, i64** @base, align 8
  %115 = load i32, i32* %5, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, 7
  %120 = call i32 @outb(i32 0, i64 %119)
  %121 = load i64*, i64** @base, align 8
  %122 = load i32, i32* %5, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, 7
  %127 = call i32 @inb(i64 %126)
  %128 = load %struct.idi_48_gpio*, %struct.idi_48_gpio** %6, align 8
  %129 = getelementptr inbounds %struct.idi_48_gpio, %struct.idi_48_gpio* %128, i32 0, i32 0
  %130 = load i32, i32* @handle_edge_irq, align 4
  %131 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %132 = call i32 @gpiochip_irqchip_add(%struct.TYPE_3__* %129, i32* @idi_48_irqchip, i32 0, i32 %130, i32 %131)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %113
  %136 = load %struct.device*, %struct.device** %4, align 8
  %137 = load i32, i32* %8, align 4
  %138 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %136, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %3, align 4
  br label %160

140:                                              ; preds = %113
  %141 = load %struct.device*, %struct.device** %4, align 8
  %142 = load i32*, i32** @irq, align 8
  %143 = load i32, i32* %5, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @idi_48_irq_handler, align 4
  %148 = load i32, i32* @IRQF_SHARED, align 4
  %149 = load i8*, i8** %7, align 8
  %150 = load %struct.idi_48_gpio*, %struct.idi_48_gpio** %6, align 8
  %151 = call i32 @devm_request_irq(%struct.device* %141, i32 %146, i32 %147, i32 %148, i8* %149, %struct.idi_48_gpio* %150)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %140
  %155 = load %struct.device*, %struct.device** %4, align 8
  %156 = load i32, i32* %8, align 4
  %157 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %155, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* %8, align 4
  store i32 %158, i32* %3, align 4
  br label %160

159:                                              ; preds = %140
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %159, %154, %135, %108, %30, %16
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local %struct.idi_48_gpio* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_request_region(%struct.device*, i64, i64, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.TYPE_3__*, %struct.idi_48_gpio*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @gpiochip_irqchip_add(%struct.TYPE_3__*, i32*, i32, i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.idi_48_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
