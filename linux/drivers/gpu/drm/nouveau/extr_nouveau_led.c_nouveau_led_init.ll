; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_led.c_nouveau_led_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_led.c_nouveau_led_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.drm_device* }
%struct.TYPE_6__ = type { i8*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nvkm_gpio = type { i32 }
%struct.dcb_gpio_func = type { i32 }

@DCB_GPIO_LOGO_LED_PWM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"nvidia-logo\00", align 1
@nouveau_led_get_brightness = common dso_local global i32 0, align 4
@nouveau_led_set_brightness = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_led_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nvkm_gpio*, align 8
  %6 = alloca %struct.dcb_gpio_func, align 4
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %8)
  store %struct.nouveau_drm* %9, %struct.nouveau_drm** %4, align 8
  %10 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %11 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = call %struct.nvkm_gpio* @nvxx_gpio(i32* %12)
  store %struct.nvkm_gpio* %13, %struct.nvkm_gpio** %5, align 8
  %14 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %5, align 8
  %15 = icmp ne %struct.nvkm_gpio* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %82

17:                                               ; preds = %1
  %18 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %5, align 8
  %19 = load i32, i32* @DCB_GPIO_LOGO_LED_PWM, align 4
  %20 = call i64 @nvkm_gpio_find(%struct.nvkm_gpio* %18, i32 0, i32 %19, i32 255, %struct.dcb_gpio_func* %6)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %82

23:                                               ; preds = %17
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.TYPE_7__* @kzalloc(i32 32, i32 %24)
  %26 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %27 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %26, i32 0, i32 0
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %27, align 8
  %28 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %29 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %82

35:                                               ; preds = %23
  %36 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %37 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %38 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store %struct.drm_device* %36, %struct.drm_device** %40, align 8
  %41 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %42 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %45, align 8
  %46 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %47 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i32 255, i32* %50, align 8
  %51 = load i32, i32* @nouveau_led_get_brightness, align 4
  %52 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %53 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  store i32 %51, i32* %56, align 8
  %57 = load i32, i32* @nouveau_led_set_brightness, align 4
  %58 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %59 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  store i32 %57, i32* %62, align 4
  %63 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %64 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %67 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = call i32 @led_classdev_register(i32 %65, %struct.TYPE_6__* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %35
  %74 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %75 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = call i32 @kfree(%struct.TYPE_7__* %76)
  %78 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %79 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %78, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %79, align 8
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %2, align 4
  br label %82

81:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %73, %32, %22, %16
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nvkm_gpio* @nvxx_gpio(i32*) #1

declare dso_local i64 @nvkm_gpio_find(%struct.nvkm_gpio*, i32, i32, i32, %struct.dcb_gpio_func*) #1

declare dso_local %struct.TYPE_7__* @kzalloc(i32, i32) #1

declare dso_local i32 @led_classdev_register(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
