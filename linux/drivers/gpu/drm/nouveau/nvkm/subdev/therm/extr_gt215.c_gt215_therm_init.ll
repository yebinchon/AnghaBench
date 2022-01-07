; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_gt215.c_gt215_therm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_gt215.c_gt215_therm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.dcb_gpio_func }
%struct.dcb_gpio_func = type { i64, i32 }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@DCB_GPIO_UNUSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gt215_therm_init(%struct.nvkm_therm* %0) #0 {
  %2 = alloca %struct.nvkm_therm*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca %struct.dcb_gpio_func*, align 8
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %2, align 8
  %5 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %6 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  store %struct.nvkm_device* %8, %struct.nvkm_device** %3, align 8
  %9 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %10 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.dcb_gpio_func* %12, %struct.dcb_gpio_func** %4, align 8
  %13 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %14 = call i32 @g84_sensor_setup(%struct.nvkm_therm* %13)
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %16 = call i32 @nvkm_mask(%struct.nvkm_device* %15, i32 59168, i32 3, i32 2)
  %17 = load %struct.dcb_gpio_func*, %struct.dcb_gpio_func** %4, align 8
  %18 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DCB_GPIO_UNUSED, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %1
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %25 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 1000
  %28 = call i32 @nvkm_wr32(%struct.nvkm_device* %23, i32 59172, i32 %27)
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %30 = load %struct.dcb_gpio_func*, %struct.dcb_gpio_func** %4, align 8
  %31 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 %32, 16
  %34 = call i32 @nvkm_mask(%struct.nvkm_device* %29, i32 59168, i32 2031616, i32 %33)
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %36 = call i32 @nvkm_mask(%struct.nvkm_device* %35, i32 59168, i32 1, i32 1)
  br label %37

37:                                               ; preds = %22, %1
  %38 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %39 = call i32 @nvkm_mask(%struct.nvkm_device* %38, i32 59168, i32 2, i32 0)
  ret void
}

declare dso_local i32 @g84_sensor_setup(%struct.nvkm_therm*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
