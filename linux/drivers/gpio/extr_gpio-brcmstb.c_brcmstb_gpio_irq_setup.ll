; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-brcmstb.c_brcmstb_gpio_irq_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-brcmstb.c_brcmstb_gpio_irq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.brcmstb_gpio_priv = type { i64, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i8*, i8*, i32 }

@brcmstb_gpio_irq_domain_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Couldn't allocate IRQ domain\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Couldn't get wake IRQ - GPIOs will not be able to wake from sleep\00", align 1
@brcmstb_gpio_wake_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"brcmstb-gpio-wake\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Couldn't request wake IRQ\00", align 1
@brcmstb_gpio_irq_mask = common dso_local global i8* null, align 8
@brcmstb_gpio_irq_unmask = common dso_local global i32 0, align 4
@brcmstb_gpio_irq_ack = common dso_local global i32 0, align 4
@brcmstb_gpio_irq_set_type = common dso_local global i32 0, align 4
@brcmstb_gpio_irq_set_wake = common dso_local global i32 0, align 4
@brcmstb_gpio_irq_handler = common dso_local global i32 0, align 4
@IRQ_DISABLE_UNLAZY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.brcmstb_gpio_priv*)* @brcmstb_gpio_irq_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_gpio_irq_setup(%struct.platform_device* %0, %struct.brcmstb_gpio_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.brcmstb_gpio_priv*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.brcmstb_gpio_priv* %1, %struct.brcmstb_gpio_priv** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %7, align 8
  %14 = load %struct.device_node*, %struct.device_node** %7, align 8
  %15 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %5, align 8
  %16 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %5, align 8
  %19 = call i32 @irq_domain_add_linear(%struct.device_node* %14, i32 %17, i32* @brcmstb_gpio_irq_domain_ops, %struct.brcmstb_gpio_priv* %18)
  %20 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %5, align 8
  %21 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %5, align 8
  %23 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENXIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %122

31:                                               ; preds = %2
  %32 = load %struct.device_node*, %struct.device_node** %7, align 8
  %33 = call i64 @of_property_read_bool(%struct.device_node* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %69

35:                                               ; preds = %31
  %36 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %37 = call i64 @platform_get_irq(%struct.platform_device* %36, i32 1)
  %38 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %5, align 8
  %39 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %5, align 8
  %41 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %5, align 8
  %46 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = call i32 @dev_warn(%struct.device* %47, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  br label %68

49:                                               ; preds = %35
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = call i32 @device_set_wakeup_capable(%struct.device* %50, i32 1)
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = call i32 @device_wakeup_enable(%struct.device* %52)
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %5, align 8
  %56 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @brcmstb_gpio_wake_irq_handler, align 4
  %59 = load i32, i32* @IRQF_SHARED, align 4
  %60 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %5, align 8
  %61 = call i32 @devm_request_irq(%struct.device* %54, i64 %57, i32 %58, i32 %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), %struct.brcmstb_gpio_priv* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %49
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %116

67:                                               ; preds = %49
  br label %68

68:                                               ; preds = %67, %44
  br label %69

69:                                               ; preds = %68, %31
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = call i32 @dev_name(%struct.device* %70)
  %72 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %5, align 8
  %73 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 6
  store i32 %71, i32* %74, align 8
  %75 = load i8*, i8** @brcmstb_gpio_irq_mask, align 8
  %76 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %5, align 8
  %77 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 5
  store i8* %75, i8** %78, align 8
  %79 = load i8*, i8** @brcmstb_gpio_irq_mask, align 8
  %80 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %5, align 8
  %81 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 4
  store i8* %79, i8** %82, align 8
  %83 = load i32, i32* @brcmstb_gpio_irq_unmask, align 4
  %84 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %5, align 8
  %85 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @brcmstb_gpio_irq_ack, align 4
  %88 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %5, align 8
  %89 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  store i32 %87, i32* %90, align 8
  %91 = load i32, i32* @brcmstb_gpio_irq_set_type, align 4
  %92 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %5, align 8
  %93 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 4
  %95 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %5, align 8
  %96 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %69
  %100 = load i32, i32* @brcmstb_gpio_irq_set_wake, align 4
  %101 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %5, align 8
  %102 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  br label %104

104:                                              ; preds = %99, %69
  %105 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %5, align 8
  %106 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @brcmstb_gpio_irq_handler, align 4
  %109 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %5, align 8
  %110 = call i32 @irq_set_chained_handler_and_data(i32 %107, i32 %108, %struct.brcmstb_gpio_priv* %109)
  %111 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %5, align 8
  %112 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @IRQ_DISABLE_UNLAZY, align 4
  %115 = call i32 @irq_set_status_flags(i32 %113, i32 %114)
  store i32 0, i32* %3, align 4
  br label %122

116:                                              ; preds = %64
  %117 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %5, align 8
  %118 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @irq_domain_remove(i32 %119)
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %116, %104, %26
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @irq_domain_add_linear(%struct.device_node*, i32, i32*, %struct.brcmstb_gpio_priv*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @device_set_wakeup_capable(%struct.device*, i32) #1

declare dso_local i32 @device_wakeup_enable(%struct.device*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i64, i32, i32, i8*, %struct.brcmstb_gpio_priv*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.brcmstb_gpio_priv*) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
