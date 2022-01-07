; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_fantog.c_nvkm_fantog_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_fantog.c_nvkm_fantog_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fantog = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_therm* }
%struct.nvkm_therm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_gpio*, %struct.nvkm_timer* }
%struct.nvkm_gpio = type { i32 }
%struct.nvkm_timer = type { i32 }

@DCB_GPIO_FAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_fantog*, i32)* @nvkm_fantog_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_fantog_update(%struct.nvkm_fantog* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_fantog*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_therm*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca %struct.nvkm_timer*, align 8
  %8 = alloca %struct.nvkm_gpio*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvkm_fantog* %0, %struct.nvkm_fantog** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.nvkm_fantog*, %struct.nvkm_fantog** %3, align 8
  %13 = getelementptr inbounds %struct.nvkm_fantog, %struct.nvkm_fantog* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_therm*, %struct.nvkm_therm** %14, align 8
  store %struct.nvkm_therm* %15, %struct.nvkm_therm** %5, align 8
  %16 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %17 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %18, align 8
  store %struct.nvkm_device* %19, %struct.nvkm_device** %6, align 8
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %21 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %20, i32 0, i32 1
  %22 = load %struct.nvkm_timer*, %struct.nvkm_timer** %21, align 8
  store %struct.nvkm_timer* %22, %struct.nvkm_timer** %7, align 8
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %24 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %23, i32 0, i32 0
  %25 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %24, align 8
  store %struct.nvkm_gpio* %25, %struct.nvkm_gpio** %8, align 8
  %26 = load %struct.nvkm_fantog*, %struct.nvkm_fantog** %3, align 8
  %27 = getelementptr inbounds %struct.nvkm_fantog, %struct.nvkm_fantog* %26, i32 0, i32 2
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load %struct.nvkm_fantog*, %struct.nvkm_fantog** %3, align 8
  %34 = getelementptr inbounds %struct.nvkm_fantog, %struct.nvkm_fantog* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %2
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.nvkm_fantog*, %struct.nvkm_fantog** %3, align 8
  %39 = getelementptr inbounds %struct.nvkm_fantog, %struct.nvkm_fantog* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %8, align 8
  %41 = load i32, i32* @DCB_GPIO_FAN, align 4
  %42 = call i32 @nvkm_gpio_get(%struct.nvkm_gpio* %40, i32 0, i32 %41, i32 255)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %8, align 8
  %47 = load i32, i32* @DCB_GPIO_FAN, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @nvkm_gpio_set(%struct.nvkm_gpio* %46, i32 0, i32 %47, i32 255, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %10, align 4
  %52 = mul nsw i32 %51, 100
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %36
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.nvkm_fantog*, %struct.nvkm_fantog** %3, align 8
  %57 = getelementptr inbounds %struct.nvkm_fantog, %struct.nvkm_fantog* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %55, %58
  %60 = sdiv i32 %59, 100
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %54
  %64 = load %struct.nvkm_fantog*, %struct.nvkm_fantog** %3, align 8
  %65 = getelementptr inbounds %struct.nvkm_fantog, %struct.nvkm_fantog* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %11, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %63, %54
  %70 = load %struct.nvkm_timer*, %struct.nvkm_timer** %7, align 8
  %71 = load i32, i32* %11, align 4
  %72 = mul nsw i32 %71, 1000
  %73 = load %struct.nvkm_fantog*, %struct.nvkm_fantog** %3, align 8
  %74 = getelementptr inbounds %struct.nvkm_fantog, %struct.nvkm_fantog* %73, i32 0, i32 3
  %75 = call i32 @nvkm_timer_alarm(%struct.nvkm_timer* %70, i32 %72, i32* %74)
  br label %76

76:                                               ; preds = %69, %36
  %77 = load %struct.nvkm_fantog*, %struct.nvkm_fantog** %3, align 8
  %78 = getelementptr inbounds %struct.nvkm_fantog, %struct.nvkm_fantog* %77, i32 0, i32 2
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nvkm_gpio_get(%struct.nvkm_gpio*, i32, i32, i32) #1

declare dso_local i32 @nvkm_gpio_set(%struct.nvkm_gpio*, i32, i32, i32, i32) #1

declare dso_local i32 @nvkm_timer_alarm(%struct.nvkm_timer*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
