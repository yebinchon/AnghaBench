; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pci-idio-16.c_idio_16_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pci-idio-16.c_idio_16_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.idio_16_gpio = type { %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.device* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to enable PCI device (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Unable to map PCI I/O addresses (%d)\0A\00", align 1
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
@.str.2 = private unnamed_addr constant [30 x i8] c"GPIO registering failed (%d)\0A\00", align 1
@idio_16_irqchip = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Could not add irqchip (%d)\0A\00", align 1
@idio_16_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"IRQ handler registering failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @idio_16_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idio_16_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.idio_16_gpio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %6, align 8
  store i64 2, i64* %9, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = call i8* @pci_name(%struct.pci_dev* %13)
  store i8* %14, i8** %10, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.idio_16_gpio* @devm_kzalloc(%struct.device* %15, i32 80, i32 %16)
  store %struct.idio_16_gpio* %17, %struct.idio_16_gpio** %7, align 8
  %18 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %19 = icmp ne %struct.idio_16_gpio* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %164

23:                                               ; preds = %2
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = call i32 @pcim_enable_device(%struct.pci_dev* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %164

33:                                               ; preds = %23
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = call i32 @BIT(i64 2)
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @pcim_iomap_regions(%struct.pci_dev* %34, i32 %35, i8* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %164

45:                                               ; preds = %33
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = call %struct.TYPE_4__** @pcim_iomap_table(%struct.pci_dev* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %47, i64 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %51 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %50, i32 0, i32 1
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %51, align 8
  %52 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %53 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = call i32 @iowrite8(i32 0, i32* %55)
  %57 = load i8*, i8** %10, align 8
  %58 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %59 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i8* %57, i8** %60, align 8
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %63 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 12
  store %struct.device* %61, %struct.device** %64, align 8
  %65 = load i32, i32* @THIS_MODULE, align 4
  %66 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %67 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 11
  store i32 %65, i32* %68, align 8
  %69 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %70 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 -1, i32* %71, align 8
  %72 = load i32, i32* @IDIO_16_NGPIO, align 4
  %73 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %74 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 10
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @idio_16_names, align 4
  %77 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %78 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 9
  store i32 %76, i32* %79, align 8
  %80 = load i32, i32* @idio_16_gpio_get_direction, align 4
  %81 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %82 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 8
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @idio_16_gpio_direction_input, align 4
  %85 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %86 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 7
  store i32 %84, i32* %87, align 8
  %88 = load i32, i32* @idio_16_gpio_direction_output, align 4
  %89 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %90 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 6
  store i32 %88, i32* %91, align 4
  %92 = load i32, i32* @idio_16_gpio_get, align 4
  %93 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %94 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 5
  store i32 %92, i32* %95, align 8
  %96 = load i32, i32* @idio_16_gpio_get_multiple, align 4
  %97 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %98 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 4
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* @idio_16_gpio_set, align 4
  %101 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %102 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 3
  store i32 %100, i32* %103, align 8
  %104 = load i32, i32* @idio_16_gpio_set_multiple, align 4
  %105 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %106 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  store i32 %104, i32* %107, align 4
  %108 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %109 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %108, i32 0, i32 2
  %110 = call i32 @raw_spin_lock_init(i32* %109)
  %111 = load %struct.device*, %struct.device** %6, align 8
  %112 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %113 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %112, i32 0, i32 0
  %114 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %115 = call i32 @devm_gpiochip_add_data(%struct.device* %111, %struct.TYPE_5__* %113, %struct.idio_16_gpio* %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %45
  %119 = load %struct.device*, %struct.device** %6, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @dev_err(%struct.device* %119, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %3, align 4
  br label %164

123:                                              ; preds = %45
  %124 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %125 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %124, i32 0, i32 1
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = call i32 @iowrite8(i32 0, i32* %127)
  %129 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %130 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %129, i32 0, i32 1
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = call i32 @iowrite8(i32 0, i32* %132)
  %134 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %135 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %134, i32 0, i32 0
  %136 = load i32, i32* @handle_edge_irq, align 4
  %137 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %138 = call i32 @gpiochip_irqchip_add(%struct.TYPE_5__* %135, i32* @idio_16_irqchip, i32 0, i32 %136, i32 %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %123
  %142 = load %struct.device*, %struct.device** %6, align 8
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @dev_err(%struct.device* %142, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %3, align 4
  br label %164

146:                                              ; preds = %123
  %147 = load %struct.device*, %struct.device** %6, align 8
  %148 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %149 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @idio_16_irq_handler, align 4
  %152 = load i32, i32* @IRQF_SHARED, align 4
  %153 = load i8*, i8** %10, align 8
  %154 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %155 = call i32 @devm_request_irq(%struct.device* %147, i32 %150, i32 %151, i32 %152, i8* %153, %struct.idio_16_gpio* %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %146
  %159 = load %struct.device*, %struct.device** %6, align 8
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @dev_err(%struct.device* %159, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* %8, align 4
  store i32 %162, i32* %3, align 4
  br label %164

163:                                              ; preds = %146
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %163, %158, %141, %118, %40, %28, %20
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i8* @pci_name(%struct.pci_dev*) #1

declare dso_local %struct.idio_16_gpio* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @pcim_iomap_regions(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local %struct.TYPE_4__** @pcim_iomap_table(%struct.pci_dev*) #1

declare dso_local i32 @iowrite8(i32, i32*) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.TYPE_5__*, %struct.idio_16_gpio*) #1

declare dso_local i32 @gpiochip_irqchip_add(%struct.TYPE_5__*, i32*, i32, i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.idio_16_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
