; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-hlwd.c_hlwd_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-hlwd.c_hlwd_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.hlwd_gpio = type { i64, %struct.TYPE_13__, %struct.TYPE_11__, i64 }
%struct.TYPE_13__ = type { i32, %struct.gpio_irq_chip }
%struct.gpio_irq_chip = type { i32, i32*, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HW_GPIO_OWNER = common dso_local global i64 0, align 8
@HW_GPIOB_IN = common dso_local global i64 0, align 8
@HW_GPIOB_OUT = common dso_local global i64 0, align 8
@HW_GPIOB_DIR = common dso_local global i64 0, align 8
@BGPIOF_BIG_ENDIAN_BYTE_ORDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"bgpio_init failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ngpios\00", align 1
@HW_GPIOB_INTMASK = common dso_local global i64 0, align 8
@HW_GPIOB_INTFLAG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"interrupt-controller\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"platform_get_irq returned %d\0A\00", align 1
@hlwd_gpio_irq_mask = common dso_local global i32 0, align 4
@hlwd_gpio_irq_unmask = common dso_local global i32 0, align 4
@hlwd_gpio_irq_enable = common dso_local global i32 0, align 4
@hlwd_gpio_irq_set_type = common dso_local global i32 0, align 4
@hlwd_gpio_irqhandler = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hlwd_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hlwd_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.hlwd_gpio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gpio_irq_chip*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.hlwd_gpio* @devm_kzalloc(%struct.TYPE_12__* %9, i32 88, i32 %10)
  store %struct.hlwd_gpio* %11, %struct.hlwd_gpio** %4, align 8
  %12 = load %struct.hlwd_gpio*, %struct.hlwd_gpio** %4, align 8
  %13 = icmp ne %struct.hlwd_gpio* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %190

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %18, i32 0)
  %20 = load %struct.hlwd_gpio*, %struct.hlwd_gpio** %4, align 8
  %21 = getelementptr inbounds %struct.hlwd_gpio, %struct.hlwd_gpio* %20, i32 0, i32 3
  store i64 %19, i64* %21, align 8
  %22 = load %struct.hlwd_gpio*, %struct.hlwd_gpio** %4, align 8
  %23 = getelementptr inbounds %struct.hlwd_gpio, %struct.hlwd_gpio* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @IS_ERR(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load %struct.hlwd_gpio*, %struct.hlwd_gpio** %4, align 8
  %29 = getelementptr inbounds %struct.hlwd_gpio, %struct.hlwd_gpio* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @PTR_ERR(i64 %30)
  store i32 %31, i32* %2, align 4
  br label %190

32:                                               ; preds = %17
  %33 = load %struct.hlwd_gpio*, %struct.hlwd_gpio** %4, align 8
  %34 = getelementptr inbounds %struct.hlwd_gpio, %struct.hlwd_gpio* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @HW_GPIO_OWNER, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @iowrite32be(i32 -1, i64 %37)
  %39 = load %struct.hlwd_gpio*, %struct.hlwd_gpio** %4, align 8
  %40 = getelementptr inbounds %struct.hlwd_gpio, %struct.hlwd_gpio* %39, i32 0, i32 1
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load %struct.hlwd_gpio*, %struct.hlwd_gpio** %4, align 8
  %44 = getelementptr inbounds %struct.hlwd_gpio, %struct.hlwd_gpio* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @HW_GPIOB_IN, align 8
  %47 = add nsw i64 %45, %46
  %48 = load %struct.hlwd_gpio*, %struct.hlwd_gpio** %4, align 8
  %49 = getelementptr inbounds %struct.hlwd_gpio, %struct.hlwd_gpio* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @HW_GPIOB_OUT, align 8
  %52 = add nsw i64 %50, %51
  %53 = load %struct.hlwd_gpio*, %struct.hlwd_gpio** %4, align 8
  %54 = getelementptr inbounds %struct.hlwd_gpio, %struct.hlwd_gpio* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @HW_GPIOB_DIR, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i32, i32* @BGPIOF_BIG_ENDIAN_BYTE_ORDER, align 4
  %59 = call i32 @bgpio_init(%struct.TYPE_13__* %40, %struct.TYPE_12__* %42, i32 4, i64 %47, i64 %52, i32* null, i64 %57, i32* null, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %32
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @dev_warn(%struct.TYPE_12__* %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %190

68:                                               ; preds = %32
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @of_property_read_u32(i32 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  store i32 32, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %68
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.hlwd_gpio*, %struct.hlwd_gpio** %4, align 8
  %80 = getelementptr inbounds %struct.hlwd_gpio, %struct.hlwd_gpio* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.hlwd_gpio*, %struct.hlwd_gpio** %4, align 8
  %83 = getelementptr inbounds %struct.hlwd_gpio, %struct.hlwd_gpio* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @HW_GPIOB_INTMASK, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @iowrite32be(i32 0, i64 %86)
  %88 = load %struct.hlwd_gpio*, %struct.hlwd_gpio** %4, align 8
  %89 = getelementptr inbounds %struct.hlwd_gpio, %struct.hlwd_gpio* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @HW_GPIOB_INTFLAG, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @iowrite32be(i32 -1, i64 %92)
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @of_property_read_bool(i32 %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %183

100:                                              ; preds = %77
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = call i64 @platform_get_irq(%struct.platform_device* %101, i32 0)
  %103 = load %struct.hlwd_gpio*, %struct.hlwd_gpio** %4, align 8
  %104 = getelementptr inbounds %struct.hlwd_gpio, %struct.hlwd_gpio* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.hlwd_gpio*, %struct.hlwd_gpio** %4, align 8
  %106 = getelementptr inbounds %struct.hlwd_gpio, %struct.hlwd_gpio* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %100
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = load %struct.hlwd_gpio*, %struct.hlwd_gpio** %4, align 8
  %113 = getelementptr inbounds %struct.hlwd_gpio, %struct.hlwd_gpio* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @dev_info(%struct.TYPE_12__* %111, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %114)
  %116 = load %struct.hlwd_gpio*, %struct.hlwd_gpio** %4, align 8
  %117 = getelementptr inbounds %struct.hlwd_gpio, %struct.hlwd_gpio* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %2, align 4
  br label %190

120:                                              ; preds = %100
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = call i32 @dev_name(%struct.TYPE_12__* %122)
  %124 = load %struct.hlwd_gpio*, %struct.hlwd_gpio** %4, align 8
  %125 = getelementptr inbounds %struct.hlwd_gpio, %struct.hlwd_gpio* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 4
  store i32 %123, i32* %126, align 8
  %127 = load i32, i32* @hlwd_gpio_irq_mask, align 4
  %128 = load %struct.hlwd_gpio*, %struct.hlwd_gpio** %4, align 8
  %129 = getelementptr inbounds %struct.hlwd_gpio, %struct.hlwd_gpio* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 3
  store i32 %127, i32* %130, align 4
  %131 = load i32, i32* @hlwd_gpio_irq_unmask, align 4
  %132 = load %struct.hlwd_gpio*, %struct.hlwd_gpio** %4, align 8
  %133 = getelementptr inbounds %struct.hlwd_gpio, %struct.hlwd_gpio* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 2
  store i32 %131, i32* %134, align 8
  %135 = load i32, i32* @hlwd_gpio_irq_enable, align 4
  %136 = load %struct.hlwd_gpio*, %struct.hlwd_gpio** %4, align 8
  %137 = getelementptr inbounds %struct.hlwd_gpio, %struct.hlwd_gpio* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  store i32 %135, i32* %138, align 4
  %139 = load i32, i32* @hlwd_gpio_irq_set_type, align 4
  %140 = load %struct.hlwd_gpio*, %struct.hlwd_gpio** %4, align 8
  %141 = getelementptr inbounds %struct.hlwd_gpio, %struct.hlwd_gpio* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 8
  %143 = load %struct.hlwd_gpio*, %struct.hlwd_gpio** %4, align 8
  %144 = getelementptr inbounds %struct.hlwd_gpio, %struct.hlwd_gpio* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  store %struct.gpio_irq_chip* %145, %struct.gpio_irq_chip** %7, align 8
  %146 = load %struct.hlwd_gpio*, %struct.hlwd_gpio** %4, align 8
  %147 = getelementptr inbounds %struct.hlwd_gpio, %struct.hlwd_gpio* %146, i32 0, i32 2
  %148 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %7, align 8
  %149 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %148, i32 0, i32 5
  store %struct.TYPE_11__* %147, %struct.TYPE_11__** %149, align 8
  %150 = load i32, i32* @hlwd_gpio_irqhandler, align 4
  %151 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %7, align 8
  %152 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 8
  %153 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %7, align 8
  %154 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %153, i32 0, i32 0
  store i32 1, i32* %154, align 8
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 0
  %157 = load i32, i32* @GFP_KERNEL, align 4
  %158 = call i32* @devm_kcalloc(%struct.TYPE_12__* %156, i32 1, i32 4, i32 %157)
  %159 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %7, align 8
  %160 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %159, i32 0, i32 1
  store i32* %158, i32** %160, align 8
  %161 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %7, align 8
  %162 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %120
  %166 = load i32, i32* @ENOMEM, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %2, align 4
  br label %190

168:                                              ; preds = %120
  %169 = load %struct.hlwd_gpio*, %struct.hlwd_gpio** %4, align 8
  %170 = getelementptr inbounds %struct.hlwd_gpio, %struct.hlwd_gpio* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = trunc i64 %171 to i32
  %173 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %7, align 8
  %174 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  store i32 %172, i32* %176, align 4
  %177 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %178 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %7, align 8
  %179 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %178, i32 0, i32 3
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* @handle_level_irq, align 4
  %181 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %7, align 8
  %182 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 8
  br label %183

183:                                              ; preds = %168, %77
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %184, i32 0, i32 0
  %186 = load %struct.hlwd_gpio*, %struct.hlwd_gpio** %4, align 8
  %187 = getelementptr inbounds %struct.hlwd_gpio, %struct.hlwd_gpio* %186, i32 0, i32 1
  %188 = load %struct.hlwd_gpio*, %struct.hlwd_gpio** %4, align 8
  %189 = call i32 @devm_gpiochip_add_data(%struct.TYPE_12__* %185, %struct.TYPE_13__* %187, %struct.hlwd_gpio* %188)
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %183, %165, %109, %62, %27, %14
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.hlwd_gpio* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @iowrite32be(i32, i64) #1

declare dso_local i32 @bgpio_init(%struct.TYPE_13__*, %struct.TYPE_12__*, i32, i64, i64, i32*, i64, i32*, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_12__*, i8*, i64) #1

declare dso_local i32 @dev_name(%struct.TYPE_12__*) #1

declare dso_local i32* @devm_kcalloc(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_12__*, %struct.TYPE_13__*, %struct.hlwd_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
