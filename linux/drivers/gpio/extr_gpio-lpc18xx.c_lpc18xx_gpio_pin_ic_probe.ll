; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lpc18xx.c_lpc18xx_gpio_pin_ic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lpc18xx.c_lpc18xx_gpio_pin_ic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc18xx_gpio_chip = type { %struct.lpc18xx_gpio_pin_ic*, %struct.TYPE_2__ }
%struct.lpc18xx_gpio_pin_ic = type { i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.irq_domain = type { i32 }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"reg-names\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"gpio-pin-ic\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@NR_LPC18XX_GPIO_PIN_IC_IRQS = common dso_local global i32 0, align 4
@lpc18xx_gpio_pin_ic_domain_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"unable to add irq domain\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpc18xx_gpio_chip*)* @lpc18xx_gpio_pin_ic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_gpio_pin_ic_probe(%struct.lpc18xx_gpio_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpc18xx_gpio_chip*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.lpc18xx_gpio_pin_ic*, align 8
  %8 = alloca %struct.resource, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lpc18xx_gpio_chip* %0, %struct.lpc18xx_gpio_chip** %3, align 8
  %11 = load %struct.lpc18xx_gpio_chip*, %struct.lpc18xx_gpio_chip** %3, align 8
  %12 = getelementptr inbounds %struct.lpc18xx_gpio_chip, %struct.lpc18xx_gpio_chip* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.device_node* @of_irq_find_parent(i32 %17)
  store %struct.device_node* %18, %struct.device_node** %6, align 8
  %19 = load %struct.device_node*, %struct.device_node** %6, align 8
  %20 = icmp ne %struct.device_node* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %113

24:                                               ; preds = %1
  %25 = load %struct.device_node*, %struct.device_node** %6, align 8
  %26 = call %struct.irq_domain* @irq_find_host(%struct.device_node* %25)
  store %struct.irq_domain* %26, %struct.irq_domain** %5, align 8
  %27 = load %struct.device_node*, %struct.device_node** %6, align 8
  %28 = call i32 @of_node_put(%struct.device_node* %27)
  %29 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %30 = icmp ne %struct.irq_domain* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENXIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %113

34:                                               ; preds = %24
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.lpc18xx_gpio_pin_ic* @devm_kzalloc(%struct.device* %35, i32 12, i32 %36)
  store %struct.lpc18xx_gpio_pin_ic* %37, %struct.lpc18xx_gpio_pin_ic** %7, align 8
  %38 = load %struct.lpc18xx_gpio_pin_ic*, %struct.lpc18xx_gpio_pin_ic** %7, align 8
  %39 = icmp ne %struct.lpc18xx_gpio_pin_ic* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %113

43:                                               ; preds = %34
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = getelementptr inbounds %struct.device, %struct.device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @of_property_match_string(i32 %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %108

53:                                               ; preds = %43
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = getelementptr inbounds %struct.device, %struct.device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @of_address_to_resource(i32 %56, i32 %57, %struct.resource* %8)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %108

62:                                               ; preds = %53
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i32 @devm_ioremap_resource(%struct.device* %63, %struct.resource* %8)
  %65 = load %struct.lpc18xx_gpio_pin_ic*, %struct.lpc18xx_gpio_pin_ic** %7, align 8
  %66 = getelementptr inbounds %struct.lpc18xx_gpio_pin_ic, %struct.lpc18xx_gpio_pin_ic* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.lpc18xx_gpio_pin_ic*, %struct.lpc18xx_gpio_pin_ic** %7, align 8
  %68 = getelementptr inbounds %struct.lpc18xx_gpio_pin_ic, %struct.lpc18xx_gpio_pin_ic* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @IS_ERR(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %62
  %73 = load %struct.lpc18xx_gpio_pin_ic*, %struct.lpc18xx_gpio_pin_ic** %7, align 8
  %74 = getelementptr inbounds %struct.lpc18xx_gpio_pin_ic, %struct.lpc18xx_gpio_pin_ic* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @PTR_ERR(i32 %75)
  store i32 %76, i32* %9, align 4
  br label %108

77:                                               ; preds = %62
  %78 = load %struct.lpc18xx_gpio_pin_ic*, %struct.lpc18xx_gpio_pin_ic** %7, align 8
  %79 = getelementptr inbounds %struct.lpc18xx_gpio_pin_ic, %struct.lpc18xx_gpio_pin_ic* %78, i32 0, i32 2
  %80 = call i32 @raw_spin_lock_init(i32* %79)
  %81 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %82 = load i32, i32* @NR_LPC18XX_GPIO_PIN_IC_IRQS, align 4
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = getelementptr inbounds %struct.device, %struct.device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.lpc18xx_gpio_pin_ic*, %struct.lpc18xx_gpio_pin_ic** %7, align 8
  %87 = call i32 @irq_domain_add_hierarchy(%struct.irq_domain* %81, i32 0, i32 %82, i32 %85, i32* @lpc18xx_gpio_pin_ic_domain_ops, %struct.lpc18xx_gpio_pin_ic* %86)
  %88 = load %struct.lpc18xx_gpio_pin_ic*, %struct.lpc18xx_gpio_pin_ic** %7, align 8
  %89 = getelementptr inbounds %struct.lpc18xx_gpio_pin_ic, %struct.lpc18xx_gpio_pin_ic* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.lpc18xx_gpio_pin_ic*, %struct.lpc18xx_gpio_pin_ic** %7, align 8
  %91 = getelementptr inbounds %struct.lpc18xx_gpio_pin_ic, %struct.lpc18xx_gpio_pin_ic* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %77
  %95 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %9, align 4
  br label %102

98:                                               ; preds = %77
  %99 = load %struct.lpc18xx_gpio_pin_ic*, %struct.lpc18xx_gpio_pin_ic** %7, align 8
  %100 = load %struct.lpc18xx_gpio_chip*, %struct.lpc18xx_gpio_chip** %3, align 8
  %101 = getelementptr inbounds %struct.lpc18xx_gpio_chip, %struct.lpc18xx_gpio_chip* %100, i32 0, i32 0
  store %struct.lpc18xx_gpio_pin_ic* %99, %struct.lpc18xx_gpio_pin_ic** %101, align 8
  store i32 0, i32* %2, align 4
  br label %113

102:                                              ; preds = %94
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = load %struct.lpc18xx_gpio_pin_ic*, %struct.lpc18xx_gpio_pin_ic** %7, align 8
  %105 = getelementptr inbounds %struct.lpc18xx_gpio_pin_ic, %struct.lpc18xx_gpio_pin_ic* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @devm_iounmap(%struct.device* %103, i32 %106)
  br label %108

108:                                              ; preds = %102, %72, %61, %50
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = load %struct.lpc18xx_gpio_pin_ic*, %struct.lpc18xx_gpio_pin_ic** %7, align 8
  %111 = call i32 @devm_kfree(%struct.device* %109, %struct.lpc18xx_gpio_pin_ic* %110)
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %108, %98, %40, %31, %21
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.device_node* @of_irq_find_parent(i32) #1

declare dso_local %struct.irq_domain* @irq_find_host(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.lpc18xx_gpio_pin_ic* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_property_match_string(i32, i8*, i8*) #1

declare dso_local i32 @of_address_to_resource(i32, i32, %struct.resource*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @irq_domain_add_hierarchy(%struct.irq_domain*, i32, i32, i32, i32*, %struct.lpc18xx_gpio_pin_ic*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @devm_iounmap(%struct.device*, i32) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.lpc18xx_gpio_pin_ic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
