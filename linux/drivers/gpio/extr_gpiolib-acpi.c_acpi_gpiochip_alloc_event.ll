; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_gpiochip_alloc_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_gpiochip_alloc_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i32 }
%struct.acpi_gpio_chip = type { i32, %struct.gpio_chip* }
%struct.gpio_chip = type { i32 }
%struct.acpi_resource_gpio = type { i32*, i64, i32, i64 }
%struct.acpi_gpio_event = type { i32, i32, i32, i32, i32, %struct.gpio_desc*, i32*, i32 }
%struct.gpio_desc = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"_%c%02hhX\00", align 1
@ACPI_EDGE_SENSITIVE = common dso_local global i64 0, align 8
@acpi_gpio_irq_handler = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"_EVT\00", align 1
@acpi_gpio_irq_handler_evt = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"ACPI:Event\00", align 1
@GPIO_ACTIVE_HIGH = common dso_local global i32 0, align 4
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Failed to request GPIO\0A\00", align 1
@AE_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to lock GPIO as interrupt\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to translate GPIO to IRQ\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@ACPI_LEVEL_SENSITIVE = common dso_local global i64 0, align 8
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@ACPI_WAKE_CAPABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_resource*, i8*)* @acpi_gpiochip_alloc_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_gpiochip_alloc_event(%struct.acpi_resource* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.acpi_gpio_chip*, align 8
  %7 = alloca %struct.gpio_chip*, align 8
  %8 = alloca %struct.acpi_resource_gpio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.acpi_gpio_event*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.gpio_desc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [5 x i8], align 1
  store %struct.acpi_resource* %0, %struct.acpi_resource** %4, align 8
  store i8* %1, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.acpi_gpio_chip*
  store %struct.acpi_gpio_chip* %19, %struct.acpi_gpio_chip** %6, align 8
  %20 = load %struct.acpi_gpio_chip*, %struct.acpi_gpio_chip** %6, align 8
  %21 = getelementptr inbounds %struct.acpi_gpio_chip, %struct.acpi_gpio_chip* %20, i32 0, i32 1
  %22 = load %struct.gpio_chip*, %struct.gpio_chip** %21, align 8
  store %struct.gpio_chip* %22, %struct.gpio_chip** %7, align 8
  store i32* null, i32** %12, align 8
  %23 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %24 = call i32 @acpi_gpio_get_irq_resource(%struct.acpi_resource* %23, %struct.acpi_resource_gpio** %8)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @AE_OK, align 4
  store i32 %27, i32* %3, align 4
  br label %208

28:                                               ; preds = %2
  %29 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %30 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ACPI_HANDLE(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.acpi_resource_gpio*, %struct.acpi_resource_gpio** %8, align 8
  %34 = getelementptr inbounds %struct.acpi_resource_gpio, %struct.acpi_resource_gpio* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp sle i32 %38, 255
  br i1 %39, label %40, label %60

40:                                               ; preds = %28
  %41 = getelementptr inbounds [5 x i8], [5 x i8]* %17, i64 0, i64 0
  %42 = load %struct.acpi_resource_gpio*, %struct.acpi_resource_gpio** %8, align 8
  %43 = getelementptr inbounds %struct.acpi_resource_gpio, %struct.acpi_resource_gpio* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ACPI_EDGE_SENSITIVE, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 69, i32 76
  %49 = trunc i32 %48 to i8
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8 signext %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = getelementptr inbounds [5 x i8], [5 x i8]* %17, i64 0, i64 0
  %54 = call i32 @acpi_get_handle(i32 %52, i8* %53, i32* %10)
  %55 = call i64 @ACPI_SUCCESS(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %40
  %58 = load i32*, i32** @acpi_gpio_irq_handler, align 8
  store i32* %58, i32** %12, align 8
  br label %59

59:                                               ; preds = %57, %40
  br label %60

60:                                               ; preds = %59, %28
  %61 = load i32*, i32** %12, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @acpi_get_handle(i32 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %10)
  %66 = call i64 @ACPI_SUCCESS(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32*, i32** @acpi_gpio_irq_handler_evt, align 8
  store i32* %69, i32** %12, align 8
  br label %70

70:                                               ; preds = %68, %63
  br label %71

71:                                               ; preds = %70, %60
  %72 = load i32*, i32** %12, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* @AE_OK, align 4
  store i32 %75, i32* %3, align 4
  br label %208

76:                                               ; preds = %71
  %77 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* @GPIO_ACTIVE_HIGH, align 4
  %80 = load i32, i32* @GPIOD_IN, align 4
  %81 = call %struct.gpio_desc* @gpiochip_request_own_desc(%struct.gpio_chip* %77, i32 %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %80)
  store %struct.gpio_desc* %81, %struct.gpio_desc** %13, align 8
  %82 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  %83 = call i64 @IS_ERR(%struct.gpio_desc* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %76
  %86 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %87 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i32, i32* @AE_ERROR, align 4
  store i32 %90, i32* %3, align 4
  br label %208

91:                                               ; preds = %76
  %92 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @gpiochip_lock_as_irq(%struct.gpio_chip* %92, i32 %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %99 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @dev_err(i32 %100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %204

102:                                              ; preds = %91
  %103 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  %104 = call i32 @gpiod_to_irq(%struct.gpio_desc* %103)
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %109 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dev_err(i32 %110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %200

112:                                              ; preds = %102
  %113 = load i32, i32* @GFP_KERNEL, align 4
  %114 = call %struct.acpi_gpio_event* @kzalloc(i32 48, i32 %113)
  store %struct.acpi_gpio_event* %114, %struct.acpi_gpio_event** %11, align 8
  %115 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %11, align 8
  %116 = icmp ne %struct.acpi_gpio_event* %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %112
  br label %200

118:                                              ; preds = %112
  %119 = load i32, i32* @IRQF_ONESHOT, align 4
  %120 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %11, align 8
  %121 = getelementptr inbounds %struct.acpi_gpio_event, %struct.acpi_gpio_event* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.acpi_resource_gpio*, %struct.acpi_resource_gpio** %8, align 8
  %123 = getelementptr inbounds %struct.acpi_resource_gpio, %struct.acpi_resource_gpio* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @ACPI_LEVEL_SENSITIVE, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %145

127:                                              ; preds = %118
  %128 = load %struct.acpi_resource_gpio*, %struct.acpi_resource_gpio** %8, align 8
  %129 = getelementptr inbounds %struct.acpi_resource_gpio, %struct.acpi_resource_gpio* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, 129
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %134 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %11, align 8
  %135 = getelementptr inbounds %struct.acpi_gpio_event, %struct.acpi_gpio_event* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 8
  br label %144

138:                                              ; preds = %127
  %139 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %140 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %11, align 8
  %141 = getelementptr inbounds %struct.acpi_gpio_event, %struct.acpi_gpio_event* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  br label %144

144:                                              ; preds = %138, %132
  br label %170

145:                                              ; preds = %118
  %146 = load %struct.acpi_resource_gpio*, %struct.acpi_resource_gpio** %8, align 8
  %147 = getelementptr inbounds %struct.acpi_resource_gpio, %struct.acpi_resource_gpio* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  switch i32 %148, label %161 [
    i32 129, label %149
    i32 128, label %155
  ]

149:                                              ; preds = %145
  %150 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %151 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %11, align 8
  %152 = getelementptr inbounds %struct.acpi_gpio_event, %struct.acpi_gpio_event* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %169

155:                                              ; preds = %145
  %156 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %157 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %11, align 8
  %158 = getelementptr inbounds %struct.acpi_gpio_event, %struct.acpi_gpio_event* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  br label %169

161:                                              ; preds = %145
  %162 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %163 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %164 = or i32 %162, %163
  %165 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %11, align 8
  %166 = getelementptr inbounds %struct.acpi_gpio_event, %struct.acpi_gpio_event* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %161, %155, %149
  br label %170

170:                                              ; preds = %169, %144
  %171 = load i32, i32* %10, align 4
  %172 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %11, align 8
  %173 = getelementptr inbounds %struct.acpi_gpio_event, %struct.acpi_gpio_event* %172, i32 0, i32 7
  store i32 %171, i32* %173, align 8
  %174 = load i32*, i32** %12, align 8
  %175 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %11, align 8
  %176 = getelementptr inbounds %struct.acpi_gpio_event, %struct.acpi_gpio_event* %175, i32 0, i32 6
  store i32* %174, i32** %176, align 8
  %177 = load i32, i32* %16, align 4
  %178 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %11, align 8
  %179 = getelementptr inbounds %struct.acpi_gpio_event, %struct.acpi_gpio_event* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 4
  %180 = load %struct.acpi_resource_gpio*, %struct.acpi_resource_gpio** %8, align 8
  %181 = getelementptr inbounds %struct.acpi_resource_gpio, %struct.acpi_resource_gpio* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @ACPI_WAKE_CAPABLE, align 8
  %184 = icmp eq i64 %182, %183
  %185 = zext i1 %184 to i32
  %186 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %11, align 8
  %187 = getelementptr inbounds %struct.acpi_gpio_event, %struct.acpi_gpio_event* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 8
  %188 = load i32, i32* %15, align 4
  %189 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %11, align 8
  %190 = getelementptr inbounds %struct.acpi_gpio_event, %struct.acpi_gpio_event* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 4
  %191 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  %192 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %11, align 8
  %193 = getelementptr inbounds %struct.acpi_gpio_event, %struct.acpi_gpio_event* %192, i32 0, i32 5
  store %struct.gpio_desc* %191, %struct.gpio_desc** %193, align 8
  %194 = load %struct.acpi_gpio_event*, %struct.acpi_gpio_event** %11, align 8
  %195 = getelementptr inbounds %struct.acpi_gpio_event, %struct.acpi_gpio_event* %194, i32 0, i32 4
  %196 = load %struct.acpi_gpio_chip*, %struct.acpi_gpio_chip** %6, align 8
  %197 = getelementptr inbounds %struct.acpi_gpio_chip, %struct.acpi_gpio_chip* %196, i32 0, i32 0
  %198 = call i32 @list_add_tail(i32* %195, i32* %197)
  %199 = load i32, i32* @AE_OK, align 4
  store i32 %199, i32* %3, align 4
  br label %208

200:                                              ; preds = %117, %107
  %201 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %202 = load i32, i32* %15, align 4
  %203 = call i32 @gpiochip_unlock_as_irq(%struct.gpio_chip* %201, i32 %202)
  br label %204

204:                                              ; preds = %200, %97
  %205 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  %206 = call i32 @gpiochip_free_own_desc(%struct.gpio_desc* %205)
  %207 = load i32, i32* @AE_ERROR, align 4
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %204, %170, %85, %74, %26
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local i32 @acpi_gpio_get_irq_resource(%struct.acpi_resource*, %struct.acpi_resource_gpio**) #1

declare dso_local i32 @ACPI_HANDLE(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext, i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_get_handle(i32, i8*, i32*) #1

declare dso_local %struct.gpio_desc* @gpiochip_request_own_desc(%struct.gpio_chip*, i32, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @gpiochip_lock_as_irq(%struct.gpio_chip*, i32) #1

declare dso_local i32 @gpiod_to_irq(%struct.gpio_desc*) #1

declare dso_local %struct.acpi_gpio_event* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @gpiochip_unlock_as_irq(%struct.gpio_chip*, i32) #1

declare dso_local i32 @gpiochip_free_own_desc(%struct.gpio_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
