; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-omap.c_omap_gpio_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-omap.c_omap_gpio_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.gpio_bank = type { i64, i64, %struct.TYPE_7__, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i8*, i32, i32*, %struct.gpio_irq_chip, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gpio_irq_chip = type { i32, i32, i32*, i32, i32, %struct.irq_chip* }
%struct.TYPE_5__ = type { i64 }
%struct.irq_chip = type { i32* }

@omap_gpio_chip_init.gpio = internal global i32 0, align 4
@omap_gpio_request = common dso_local global i32 0, align 4
@omap_gpio_free = common dso_local global i32 0, align 4
@omap_gpio_get_direction = common dso_local global i32 0, align 4
@omap_gpio_input = common dso_local global i32 0, align 4
@omap_gpio_get = common dso_local global i32 0, align 4
@omap_gpio_get_multiple = common dso_local global i32 0, align 4
@omap_gpio_output = common dso_local global i32 0, align 4
@omap_gpio_set_config = common dso_local global i32 0, align 4
@omap_gpio_set = common dso_local global i32 0, align 4
@omap_gpio_set_multiple = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"mpuio\00", align 1
@omap_mpuio_device = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"gpio-%d-%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@handle_bad_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Could not register gpio chip %d\0A\00", align 1
@omap_gpio_irq_handler = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_bank*, %struct.irq_chip*)* @omap_gpio_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_gpio_chip_init(%struct.gpio_bank* %0, %struct.irq_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_bank*, align 8
  %5 = alloca %struct.irq_chip*, align 8
  %6 = alloca %struct.gpio_irq_chip*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gpio_bank* %0, %struct.gpio_bank** %4, align 8
  store %struct.irq_chip* %1, %struct.irq_chip** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @omap_gpio_request, align 4
  %11 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %12 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 14
  store i32 %10, i32* %13, align 4
  %14 = load i32, i32* @omap_gpio_free, align 4
  %15 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %16 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 13
  store i32 %14, i32* %17, align 8
  %18 = load i32, i32* @omap_gpio_get_direction, align 4
  %19 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %20 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 12
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @omap_gpio_input, align 4
  %23 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %24 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 11
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* @omap_gpio_get, align 4
  %27 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %28 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 10
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @omap_gpio_get_multiple, align 4
  %31 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %32 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 9
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @omap_gpio_output, align 4
  %35 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %36 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 8
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @omap_gpio_set_config, align 4
  %39 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %40 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 7
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @omap_gpio_set, align 4
  %43 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %44 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 6
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @omap_gpio_set_multiple, align 4
  %47 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %48 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 5
  store i32 %46, i32* %49, align 8
  %50 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %51 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %2
  %55 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %56 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %57, align 8
  %58 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %59 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %58, i32 0, i32 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %66 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  store i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @omap_mpuio_device, i32 0, i32 0), i32** %67, align 8
  br label %68

68:                                               ; preds = %64, %54
  %69 = call i32 @OMAP_MPUIO(i32 0)
  %70 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %71 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 8
  br label %102

73:                                               ; preds = %2
  %74 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %75 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = load i32, i32* @omap_gpio_chip_init.gpio, align 4
  %80 = load i32, i32* @omap_gpio_chip_init.gpio, align 4
  %81 = sext i32 %80 to i64
  %82 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %83 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = sub nsw i64 %85, 1
  %87 = call i8* @devm_kasprintf(i32* %77, i32 %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %79, i64 %86)
  store i8* %87, i8** %7, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %73
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %196

93:                                               ; preds = %73
  %94 = load i8*, i8** %7, align 8
  %95 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %96 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  store i8* %94, i8** %97, align 8
  %98 = load i32, i32* @omap_gpio_chip_init.gpio, align 4
  %99 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %100 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 8
  br label %102

102:                                              ; preds = %93, %68
  %103 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %104 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %107 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 4
  store i64 %105, i64* %108, align 8
  %109 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %110 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %102
  %114 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %115 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %114, i32 0, i32 4
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %113
  %121 = load %struct.irq_chip*, %struct.irq_chip** %5, align 8
  %122 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %121, i32 0, i32 0
  store i32* null, i32** %122, align 8
  br label %123

123:                                              ; preds = %120, %113, %102
  %124 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %125 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 3
  store %struct.gpio_irq_chip* %126, %struct.gpio_irq_chip** %6, align 8
  %127 = load %struct.irq_chip*, %struct.irq_chip** %5, align 8
  %128 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %6, align 8
  %129 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %128, i32 0, i32 5
  store %struct.irq_chip* %127, %struct.irq_chip** %129, align 8
  %130 = load i32, i32* @handle_bad_irq, align 4
  %131 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %6, align 8
  %132 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %134 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %6, align 8
  %135 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 8
  %136 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %6, align 8
  %137 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %136, i32 0, i32 0
  store i32 1, i32* %137, align 8
  %138 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %139 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %138, i32 0, i32 3
  %140 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %6, align 8
  %141 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %140, i32 0, i32 2
  store i32* %139, i32** %141, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %6, align 8
  %144 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %146 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %145, i32 0, i32 2
  %147 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %148 = call i32 @gpiochip_add_data(%struct.TYPE_7__* %146, %struct.gpio_bank* %147)
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %123
  %152 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %153 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %9, align 4
  %157 = call i32 (i32*, i8*, ...) @dev_err(i32* %155, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %3, align 4
  br label %196

159:                                              ; preds = %123
  %160 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %161 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %165 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @omap_gpio_irq_handler, align 4
  %168 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %169 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @dev_name(i32* %171)
  %173 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %174 = call i32 @devm_request_irq(i32* %163, i32 %166, i32 %167, i32 0, i32 %172, %struct.gpio_bank* %173)
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %159
  %178 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %179 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %178, i32 0, i32 2
  %180 = call i32 @gpiochip_remove(%struct.TYPE_7__* %179)
  br label %181

181:                                              ; preds = %177, %159
  %182 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %183 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %194, label %186

186:                                              ; preds = %181
  %187 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %188 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* @omap_gpio_chip_init.gpio, align 4
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %191, %189
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* @omap_gpio_chip_init.gpio, align 4
  br label %194

194:                                              ; preds = %186, %181
  %195 = load i32, i32* %9, align 4
  store i32 %195, i32* %3, align 4
  br label %196

196:                                              ; preds = %194, %151, %90
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local i32 @OMAP_MPUIO(i32) #1

declare dso_local i8* @devm_kasprintf(i32*, i32, i8*, i32, i64) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_7__*, %struct.gpio_bank*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.gpio_bank*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @gpiochip_remove(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
