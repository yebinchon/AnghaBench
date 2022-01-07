; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rcar.c_gpio_rcar_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rcar.c_gpio_rcar_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.gpio_rcar_priv = type { i32, %struct.irq_chip, %struct.gpio_chip, i32, i32, %struct.device* }
%struct.irq_chip = type { i8*, i32, i32, i32, i32, i32, %struct.device* }
%struct.gpio_chip = type { i8*, i32, i32, i32, %struct.device*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"missing IRQ\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@gpio_rcar_request = common dso_local global i32 0, align 4
@gpio_rcar_free = common dso_local global i32 0, align 4
@gpio_rcar_get_direction = common dso_local global i32 0, align 4
@gpio_rcar_direction_input = common dso_local global i32 0, align 4
@gpio_rcar_get = common dso_local global i32 0, align 4
@gpio_rcar_direction_output = common dso_local global i32 0, align 4
@gpio_rcar_set = common dso_local global i32 0, align 4
@gpio_rcar_set_multiple = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@gpio_rcar_irq_disable = common dso_local global i32 0, align 4
@gpio_rcar_irq_enable = common dso_local global i32 0, align 4
@gpio_rcar_irq_set_type = common dso_local global i32 0, align 4
@gpio_rcar_irq_set_wake = common dso_local global i32 0, align 4
@IRQCHIP_SET_TYPE_MASKED = common dso_local global i32 0, align 4
@IRQCHIP_MASK_ON_SUSPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to add GPIO controller\0A\00", align 1
@handle_level_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"cannot add irqchip\0A\00", align 1
@gpio_rcar_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"driving %d GPIOs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpio_rcar_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_rcar_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.gpio_rcar_priv*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca %struct.irq_chip*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %8, align 8
  %14 = load %struct.device*, %struct.device** %8, align 8
  %15 = call i8* @dev_name(%struct.device* %14)
  store i8* %15, i8** %9, align 8
  %16 = load %struct.device*, %struct.device** %8, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.gpio_rcar_priv* @devm_kzalloc(%struct.device* %16, i32 128, i32 %17)
  store %struct.gpio_rcar_priv* %18, %struct.gpio_rcar_priv** %4, align 8
  %19 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %4, align 8
  %20 = icmp ne %struct.gpio_rcar_priv* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %185

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %8, align 8
  %26 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %4, align 8
  %27 = getelementptr inbounds %struct.gpio_rcar_priv, %struct.gpio_rcar_priv* %26, i32 0, i32 5
  store %struct.device* %25, %struct.device** %27, align 8
  %28 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %4, align 8
  %29 = getelementptr inbounds %struct.gpio_rcar_priv, %struct.gpio_rcar_priv* %28, i32 0, i32 4
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %4, align 8
  %32 = call i32 @gpio_rcar_parse_dt(%struct.gpio_rcar_priv* %31, i32* %10)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %2, align 4
  br label %185

37:                                               ; preds = %24
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %4, align 8
  %40 = call i32 @platform_set_drvdata(%struct.platform_device* %38, %struct.gpio_rcar_priv* %39)
  %41 = load %struct.device*, %struct.device** %8, align 8
  %42 = call i32 @pm_runtime_enable(%struct.device* %41)
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load i32, i32* @IORESOURCE_IRQ, align 4
  %45 = call %struct.resource* @platform_get_resource(%struct.platform_device* %43, i32 %44, i32 0)
  store %struct.resource* %45, %struct.resource** %5, align 8
  %46 = load %struct.resource*, %struct.resource** %5, align 8
  %47 = icmp ne %struct.resource* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %37
  %49 = load %struct.device*, %struct.device** %8, align 8
  %50 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %11, align 4
  br label %181

53:                                               ; preds = %37
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %54, i32 0)
  %56 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %4, align 8
  %57 = getelementptr inbounds %struct.gpio_rcar_priv, %struct.gpio_rcar_priv* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %4, align 8
  %59 = getelementptr inbounds %struct.gpio_rcar_priv, %struct.gpio_rcar_priv* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %4, align 8
  %65 = getelementptr inbounds %struct.gpio_rcar_priv, %struct.gpio_rcar_priv* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @PTR_ERR(i32 %66)
  store i32 %67, i32* %11, align 4
  br label %181

68:                                               ; preds = %53
  %69 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %4, align 8
  %70 = getelementptr inbounds %struct.gpio_rcar_priv, %struct.gpio_rcar_priv* %69, i32 0, i32 2
  store %struct.gpio_chip* %70, %struct.gpio_chip** %6, align 8
  %71 = load i32, i32* @gpio_rcar_request, align 4
  %72 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %73 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %72, i32 0, i32 12
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @gpio_rcar_free, align 4
  %75 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %76 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %75, i32 0, i32 11
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @gpio_rcar_get_direction, align 4
  %78 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %79 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %78, i32 0, i32 10
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @gpio_rcar_direction_input, align 4
  %81 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %82 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %81, i32 0, i32 9
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @gpio_rcar_get, align 4
  %84 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %85 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %84, i32 0, i32 8
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @gpio_rcar_direction_output, align 4
  %87 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %88 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @gpio_rcar_set, align 4
  %90 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %91 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @gpio_rcar_set_multiple, align 4
  %93 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %94 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %97 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  %98 = load %struct.device*, %struct.device** %8, align 8
  %99 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %100 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %99, i32 0, i32 4
  store %struct.device* %98, %struct.device** %100, align 8
  %101 = load i32, i32* @THIS_MODULE, align 4
  %102 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %103 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 8
  %104 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %105 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %104, i32 0, i32 1
  store i32 -1, i32* %105, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %108 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %4, align 8
  %110 = getelementptr inbounds %struct.gpio_rcar_priv, %struct.gpio_rcar_priv* %109, i32 0, i32 1
  store %struct.irq_chip* %110, %struct.irq_chip** %7, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %113 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %112, i32 0, i32 0
  store i8* %111, i8** %113, align 8
  %114 = load %struct.device*, %struct.device** %8, align 8
  %115 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %116 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %115, i32 0, i32 6
  store %struct.device* %114, %struct.device** %116, align 8
  %117 = load i32, i32* @gpio_rcar_irq_disable, align 4
  %118 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %119 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* @gpio_rcar_irq_enable, align 4
  %121 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %122 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @gpio_rcar_irq_set_type, align 4
  %124 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %125 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* @gpio_rcar_irq_set_wake, align 4
  %127 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %128 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @IRQCHIP_SET_TYPE_MASKED, align 4
  %130 = load i32, i32* @IRQCHIP_MASK_ON_SUSPEND, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %133 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 8
  %134 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %135 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %4, align 8
  %136 = call i32 @gpiochip_add_data(%struct.gpio_chip* %134, %struct.gpio_rcar_priv* %135)
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %68
  %140 = load %struct.device*, %struct.device** %8, align 8
  %141 = call i32 @dev_err(%struct.device* %140, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %181

142:                                              ; preds = %68
  %143 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %144 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %145 = load i32, i32* @handle_level_irq, align 4
  %146 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %147 = call i32 @gpiochip_irqchip_add(%struct.gpio_chip* %143, %struct.irq_chip* %144, i32 0, i32 %145, i32 %146)
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = load %struct.device*, %struct.device** %8, align 8
  %152 = call i32 @dev_err(%struct.device* %151, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %178

153:                                              ; preds = %142
  %154 = load %struct.resource*, %struct.resource** %5, align 8
  %155 = getelementptr inbounds %struct.resource, %struct.resource* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %4, align 8
  %158 = getelementptr inbounds %struct.gpio_rcar_priv, %struct.gpio_rcar_priv* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load %struct.device*, %struct.device** %8, align 8
  %160 = load %struct.resource*, %struct.resource** %5, align 8
  %161 = getelementptr inbounds %struct.resource, %struct.resource* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @gpio_rcar_irq_handler, align 4
  %164 = load i32, i32* @IRQF_SHARED, align 4
  %165 = load i8*, i8** %9, align 8
  %166 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %4, align 8
  %167 = call i64 @devm_request_irq(%struct.device* %159, i32 %162, i32 %163, i32 %164, i8* %165, %struct.gpio_rcar_priv* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %153
  %170 = load %struct.device*, %struct.device** %8, align 8
  %171 = call i32 @dev_err(%struct.device* %170, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %172 = load i32, i32* @ENOENT, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %11, align 4
  br label %178

174:                                              ; preds = %153
  %175 = load %struct.device*, %struct.device** %8, align 8
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @dev_info(%struct.device* %175, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %176)
  store i32 0, i32* %2, align 4
  br label %185

178:                                              ; preds = %169, %150
  %179 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %180 = call i32 @gpiochip_remove(%struct.gpio_chip* %179)
  br label %181

181:                                              ; preds = %178, %139, %63, %48
  %182 = load %struct.device*, %struct.device** %8, align 8
  %183 = call i32 @pm_runtime_disable(%struct.device* %182)
  %184 = load i32, i32* %11, align 4
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %181, %174, %35, %21
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local %struct.gpio_rcar_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @gpio_rcar_parse_dt(%struct.gpio_rcar_priv*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.gpio_rcar_priv*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @gpiochip_add_data(%struct.gpio_chip*, %struct.gpio_rcar_priv*) #1

declare dso_local i32 @gpiochip_irqchip_add(%struct.gpio_chip*, %struct.irq_chip*, i32, i32, i32) #1

declare dso_local i64 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.gpio_rcar_priv*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @gpiochip_remove(%struct.gpio_chip*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
