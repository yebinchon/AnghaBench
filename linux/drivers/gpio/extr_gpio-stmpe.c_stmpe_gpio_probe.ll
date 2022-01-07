; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-stmpe.c_stmpe_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-stmpe.c_stmpe_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, %struct.TYPE_10__, %struct.device_node*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32 }
%struct.device_node = type { i32 }
%struct.TYPE_12__ = type { %struct.device_node*, i32 }
%struct.platform_device = type { %struct.TYPE_12__ }
%struct.stmpe = type { i64 }
%struct.stmpe_gpio = type { %struct.TYPE_11__, i32, %struct.stmpe*, %struct.TYPE_12__*, i32 }

@MAX_GPIOS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Need to increase maximum GPIO number\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@template_chip = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@stmpe_init_irq_valid_mask = common dso_local global i32 0, align 4
@CONFIG_DEBUG_FS = common dso_local global i32 0, align 4
@stmpe_dbg_show = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"st,norequest-mask\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"device configured in no-irq mode: irqs are not available\0A\00", align 1
@STMPE_BLOCK_GPIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"unable to add gpiochip: %d\0A\00", align 1
@stmpe_gpio_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"stmpe-gpio\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"unable to get irq: %d\0A\00", align 1
@stmpe_gpio_irq_chip = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"could not connect irqchip to gpiochip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stmpe_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmpe_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stmpe*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.stmpe_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.stmpe* @dev_get_drvdata(i32 %12)
  store %struct.stmpe* %13, %struct.stmpe** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  %18 = load %struct.stmpe*, %struct.stmpe** %4, align 8
  %19 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MAX_GPIOS, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %164

29:                                               ; preds = %1
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.stmpe_gpio* @kzalloc(i32 72, i32 %30)
  store %struct.stmpe_gpio* %31, %struct.stmpe_gpio** %6, align 8
  %32 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %6, align 8
  %33 = icmp ne %struct.stmpe_gpio* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %164

37:                                               ; preds = %29
  %38 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %6, align 8
  %39 = getelementptr inbounds %struct.stmpe_gpio, %struct.stmpe_gpio* %38, i32 0, i32 4
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %6, align 8
  %44 = getelementptr inbounds %struct.stmpe_gpio, %struct.stmpe_gpio* %43, i32 0, i32 3
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %44, align 8
  %45 = load %struct.stmpe*, %struct.stmpe** %4, align 8
  %46 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %6, align 8
  %47 = getelementptr inbounds %struct.stmpe_gpio, %struct.stmpe_gpio* %46, i32 0, i32 2
  store %struct.stmpe* %45, %struct.stmpe** %47, align 8
  %48 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %6, align 8
  %49 = getelementptr inbounds %struct.stmpe_gpio, %struct.stmpe_gpio* %48, i32 0, i32 0
  %50 = bitcast %struct.TYPE_11__* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 bitcast (%struct.TYPE_11__* @template_chip to i8*), i64 40, i1 false)
  %51 = load %struct.stmpe*, %struct.stmpe** %4, align 8
  %52 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %6, align 8
  %55 = getelementptr inbounds %struct.stmpe_gpio, %struct.stmpe_gpio* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %6, align 8
  %60 = getelementptr inbounds %struct.stmpe_gpio, %struct.stmpe_gpio* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 5
  store %struct.TYPE_12__* %58, %struct.TYPE_12__** %61, align 8
  %62 = load %struct.device_node*, %struct.device_node** %5, align 8
  %63 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %6, align 8
  %64 = getelementptr inbounds %struct.stmpe_gpio, %struct.stmpe_gpio* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 4
  store %struct.device_node* %62, %struct.device_node** %65, align 8
  %66 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %6, align 8
  %67 = getelementptr inbounds %struct.stmpe_gpio, %struct.stmpe_gpio* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  store i32 -1, i32* %68, align 8
  %69 = load i32, i32* @stmpe_init_irq_valid_mask, align 4
  %70 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %6, align 8
  %71 = getelementptr inbounds %struct.stmpe_gpio, %struct.stmpe_gpio* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 8
  %74 = load i32, i32* @CONFIG_DEBUG_FS, align 4
  %75 = call i64 @IS_ENABLED(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %37
  %78 = load i32, i32* @stmpe_dbg_show, align 4
  %79 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %6, align 8
  %80 = getelementptr inbounds %struct.stmpe_gpio, %struct.stmpe_gpio* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  store i32 %78, i32* %81, align 4
  br label %82

82:                                               ; preds = %77, %37
  %83 = load %struct.device_node*, %struct.device_node** %5, align 8
  %84 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %6, align 8
  %85 = getelementptr inbounds %struct.stmpe_gpio, %struct.stmpe_gpio* %84, i32 0, i32 1
  %86 = call i32 @of_property_read_u32(%struct.device_node* %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %85)
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = call i32 @platform_get_irq(%struct.platform_device* %87, i32 0)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %82
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @dev_info(%struct.TYPE_12__* %93, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  br label %95

95:                                               ; preds = %91, %82
  %96 = load %struct.stmpe*, %struct.stmpe** %4, align 8
  %97 = load i32, i32* @STMPE_BLOCK_GPIO, align 4
  %98 = call i32 @stmpe_enable(%struct.stmpe* %96, i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %160

102:                                              ; preds = %95
  %103 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %6, align 8
  %104 = getelementptr inbounds %struct.stmpe_gpio, %struct.stmpe_gpio* %103, i32 0, i32 0
  %105 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %6, align 8
  %106 = call i32 @gpiochip_add_data(%struct.TYPE_11__* %104, %struct.stmpe_gpio* %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %102
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = load i32, i32* %7, align 4
  %113 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  br label %153

114:                                              ; preds = %102
  %115 = load i32, i32* %8, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %149

117:                                              ; preds = %114
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @stmpe_gpio_irq, align 4
  %122 = load i32, i32* @IRQF_ONESHOT, align 4
  %123 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %6, align 8
  %124 = call i32 @devm_request_threaded_irq(%struct.TYPE_12__* %119, i32 %120, i32* null, i32 %121, i32 %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), %struct.stmpe_gpio* %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %117
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = load i32, i32* %7, align 4
  %131 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %129, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %130)
  br label %153

132:                                              ; preds = %117
  %133 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %6, align 8
  %134 = getelementptr inbounds %struct.stmpe_gpio, %struct.stmpe_gpio* %133, i32 0, i32 0
  %135 = load i32, i32* @handle_simple_irq, align 4
  %136 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %137 = call i32 @gpiochip_irqchip_add_nested(%struct.TYPE_11__* %134, i32* @stmpe_gpio_irq_chip, i32 0, i32 %135, i32 %136)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %132
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %142, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %153

144:                                              ; preds = %132
  %145 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %6, align 8
  %146 = getelementptr inbounds %struct.stmpe_gpio, %struct.stmpe_gpio* %145, i32 0, i32 0
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @gpiochip_set_nested_irqchip(%struct.TYPE_11__* %146, i32* @stmpe_gpio_irq_chip, i32 %147)
  br label %149

149:                                              ; preds = %144, %114
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %6, align 8
  %152 = call i32 @platform_set_drvdata(%struct.platform_device* %150, %struct.stmpe_gpio* %151)
  store i32 0, i32* %2, align 4
  br label %164

153:                                              ; preds = %140, %127, %109
  %154 = load %struct.stmpe*, %struct.stmpe** %4, align 8
  %155 = load i32, i32* @STMPE_BLOCK_GPIO, align 4
  %156 = call i32 @stmpe_disable(%struct.stmpe* %154, i32 %155)
  %157 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %6, align 8
  %158 = getelementptr inbounds %struct.stmpe_gpio, %struct.stmpe_gpio* %157, i32 0, i32 0
  %159 = call i32 @gpiochip_remove(%struct.TYPE_11__* %158)
  br label %160

160:                                              ; preds = %153, %101
  %161 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %6, align 8
  %162 = call i32 @kfree(%struct.stmpe_gpio* %161)
  %163 = load i32, i32* %7, align 4
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %160, %149, %34, %23
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local %struct.stmpe* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local %struct.stmpe_gpio* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @stmpe_enable(%struct.stmpe*, i32) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_11__*, %struct.stmpe_gpio*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_12__*, i32, i32*, i32, i32, i8*, %struct.stmpe_gpio*) #1

declare dso_local i32 @gpiochip_irqchip_add_nested(%struct.TYPE_11__*, i32*, i32, i32, i32) #1

declare dso_local i32 @gpiochip_set_nested_irqchip(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stmpe_gpio*) #1

declare dso_local i32 @stmpe_disable(%struct.stmpe*, i32) #1

declare dso_local i32 @gpiochip_remove(%struct.TYPE_11__*) #1

declare dso_local i32 @kfree(%struct.stmpe_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
